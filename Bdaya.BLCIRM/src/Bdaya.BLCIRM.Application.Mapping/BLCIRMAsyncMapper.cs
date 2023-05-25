using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using Bdaya.BLCIRM.State;
using Bdaya.BLCIRM.Tenants;
using JetBrains.Annotations;
using NUglify.Helpers;
using Volo.Abp.AutoMapper;
using Volo.Abp.Data;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Domain.Repositories;
using Volo.Abp.MultiTenancy;
using Volo.Abp.ObjectMapping;
using Volo.Abp.TenantManagement;

namespace Bdaya.BLCIRM;

[UsedImplicitly]
public class BLCIRMAsyncMapper : IBLCIRMAsyncMapper, ITransientDependency
{
    private readonly IMapperAccessor _mapperAccessor;
    private readonly IRepository<Tenant, Guid> _rawTenantRepository;
    private readonly IAppTenantRepository _appTenantRepository;
    private readonly IMapper _mapper;
    private readonly IRepository<Person, Guid> _personRepo;
    private readonly IRepository<Document, Guid> _documentRepo;
    private readonly IRepository<AppTenantDocumentEntry, Guid> _appTenantDocumentEntryRepo;

    public BLCIRMAsyncMapper(
        IMapperAccessor mapperAccessor,
        ITenantRepository tenantRepository,
        IAppTenantRepository appTenantRepository,
        IObjectMapper mapper,
        IRepository<Person, Guid> personRepo,
        IRepository<Document, Guid> documentRepo,
        IRepository<Tenant, Guid> rawTenantRepository,
        IRepository<AppTenantDocumentEntry, Guid> appTenantDocumentEntryRepo,
        IDataFilter<IMultiTenant> dataFilter
    )
    {
        _mapperAccessor = mapperAccessor;
        _appTenantRepository = appTenantRepository;
        _mapper = mapper.GetMapper();
        _personRepo = personRepo;
        _documentRepo = documentRepo;
        _rawTenantRepository = rawTenantRepository;
        _appTenantDocumentEntryRepo = appTenantDocumentEntryRepo;
    }

    private async Task<Dictionary<Guid, Person>> GetPeopleDictAsync(
        IEnumerable<TransactionInfo> transactionInfos,
        IEnumerable<Guid> extraIds
    )
    {
        return await GetPeopleDictAsync(
            ids: transactionInfos
                .SelectMany(
                    selector: x =>
                        x switch
                        {
                            CreateDocumentTransactionInfo ti => ti.Info.Authors,
                            UpdateDocumentTransactionInfo ti => ti.Info.Authors,
                            DeletePersonTransactionInfo ti => new[] { ti.PersonId },
                            _ => Enumerable.Empty<Guid>()
                        }
                )
                .Concat(extraIds)
        );
    }

    private async Task<(
        Dictionary<Guid, BaseAppTenant> appTenantsDict,
        Dictionary<Guid, Tenant> tenantsDict
    )> GetTenantsDictAsync(IReadOnlySet<Guid> ids)
    {
        var relatedAppTenants = (
            await _appTenantRepository.GetListAsync(predicate: x => ids.Contains(x.Id))
        ).ToDictionary(x => x.Id);
        var relatedTenants = (
            await _rawTenantRepository.GetListAsync(x => ids.Contains(x.Id))
        ).ToDictionary(x => x.Id);
        return (relatedAppTenants, relatedTenants);
    }

    private async Task<(
        Dictionary<Guid, BaseAppTenant> appTenantsDict,
        Dictionary<Guid, Tenant> tenantsDict
    )> GetTenantDictAsync(IEnumerable<TransactionInfo> transactionInfos)
    {
        return await GetTenantsDictAsync(
            transactionInfos
                .SelectMany(
                    selector: x =>
                        x switch
                        {
                            TransferPhysicalDocumentsTransactionInfo ti
                                => new[] { ti.TargetTenantId },
                            _ => Enumerable.Empty<Guid>()
                        }
                )
                .ToHashSet()
        );
    }

    public async Task<TransactionProposalDto> MapAsync(TransactionProposal input)
    {
        return (await MapAsync(input: new List<TransactionProposal> { input })).First();
    }

    private async Task<IReadOnlyDictionary<string, object>> PrepareTransactionItems(
        IReadOnlyCollection<TransactionInfo> infos
    )
    {
        var docIds = infos
            .SelectMany(
                x =>
                    x switch
                    {
                        TransferPhysicalDocumentsTransactionInfo transferPhysicalDocumentsTransactionInfo
                            => new[] { transferPhysicalDocumentsTransactionInfo.DocumentId },
                        _ => Enumerable.Empty<Guid>()
                    }
            )
            .ToHashSet();
        var docs = (await _documentRepo.GetListAsync(x => docIds.Contains(x.Id))).ToDictionary(
            x => x.Id
        );
        var peopleIds = docs.SelectMany(z => z.Value.Info.Authors);

        var people = await GetPeopleDictAsync(infos, peopleIds);
        var (appTenantsDict, tenantsDict) = await GetTenantDictAsync(infos);

        var res = new Dictionary<string, object>
        {
            [nameof(Person)] = people,
            [nameof(Document)] = docs,
            [nameof(Tenant)] = tenantsDict,
            [nameof(BaseAppTenant)] = appTenantsDict,
        };

        return res;
    }

    public async Task<List<TransactionProposalDto>> MapAsync(List<TransactionProposal> input)
    {
        var items = await PrepareTransactionItems(input.Select(selector: x => x.Info).ToList());

        return _mapper.Map<List<TransactionProposal>, List<TransactionProposalDto>>(
            source: input,
            opts: options =>
            {
                items.ForEach(p => options.Items.Add(p.Key, p.Value));
            }
        );
    }

    public async Task<List<TransactionInfoDto>> MapAsync(List<TransactionInfo> infos)
    {
        var items = await PrepareTransactionItems(infos);

        var mapped = _mapper.Map<IEnumerable<TransactionInfo>, List<TransactionInfoDto>>(
            source: infos,
            opts: opt =>
            {
                items.ForEach(p => opt.Items.Add(p.Key, p.Value));
            }
        );
        return mapped;
    }

    public async Task<List<DocumentDto>> MapDocumentsAsync(HashSet<Guid> docIds)
    {
        var docs = await _documentRepo.GetListAsync(predicate: x => docIds.Contains(x.Id));
        return await MapDocumentsAsync(docs: docs);
    }

    private async Task<Dictionary<Guid, Person>> GetPeopleDictAsync(IEnumerable<Guid> ids)
    {
        return (await GetPeopleAsync(ids: ids)).ToDictionary(keySelector: x => x.Id);
    }

    private async Task<List<Person>> GetPeopleAsync(IEnumerable<Guid> ids)
    {
        var hashset = ids.ToHashSet();
        return hashset.Any()
            ? await _personRepo.GetListAsync(predicate: x => hashset.Contains(x.Id))
            : new List<Person>();
    }

    public async Task<List<DocumentDto>> MapDocumentsAsync(IEnumerable<Document> docs)
    {
        var src = docs.ToList();
        var people = await GetPeopleAsync(ids: src.SelectMany(selector: x => x.Info.Authors));

        var peopleDict = people.ToDictionary(keySelector: x => x.Id);
        var mapped = _mapper.Map<IEnumerable<Document>, List<DocumentDto>>(
            source: src,
            opts: opt =>
            {
                opt.Items[key: nameof(Person)] = peopleDict;
            }
        );
        return mapped;
    }

    public async Task<List<MeiliDocumentDto>> MapMeiliDocumentsAsync(HashSet<Guid> docIds)
    {
        var docs = await _documentRepo.GetListAsync(predicate: x => docIds.Contains(x.Id));
        return await MapMeiliDocumentsAsync(docs: docs);
    }

    public async Task<List<MeiliDocumentDto>> MapMeiliDocumentsAsync(IEnumerable<Document> docs)
    {
        var enumerable = docs as Document[] ?? docs.ToArray();
        var allDocIds = enumerable.Select(selector: x => x.Id).ToHashSet();

        var people = enumerable.SelectMany(selector: x => x.Info.Authors).ToHashSet();
        var peopleDict = people.Any()
            ? (await _personRepo.GetListAsync(predicate: x => people.Contains(x.Id))).ToDictionary(
                keySelector: x => x.Id
            )
            : new Dictionary<Guid, Person>();

        var relatedEntries = (
            await _appTenantDocumentEntryRepo.GetListAsync(
                predicate: x => allDocIds.Contains(x.DocumentId) && x.TenantId != null
            )
        ).ToDictionary(keySelector: x => x.Id);

        var allTenantIds = relatedEntries.Values
            .Select(selector: x => x.TenantId)
            .OfType<Guid>()
            .ToHashSet();

        var relatedTenants = (
            await _rawTenantRepository.GetListAsync(predicate: x => allTenantIds.Contains(x.Id))
        ).ToDictionary(keySelector: x => x.Id);

        return _mapper.Map<IEnumerable<Document>, List<MeiliDocumentDto>>(
            source: enumerable,
            opts: opt =>
            {
                opt.Items[key: nameof(Person)] = peopleDict;
                opt.Items[key: nameof(AppTenantDocumentEntry)] = relatedEntries;
                opt.Items[key: nameof(Tenant)] = relatedTenants;
            }
        );
    }

    public async Task<List<FullLoanDetailsDto>> MapAsync(IEnumerable<LibraryLoanEntry> docs)
    {
        var libraryLoanEntries = docs as LibraryLoanEntry[] ?? docs.ToArray();
        var allDocumentIds = libraryLoanEntries.Select(selector: x => x.DocumentId).ToHashSet();

        var allDocuments = (
            await _documentRepo.GetListAsync(predicate: x => allDocumentIds.Contains(x.Id))
        ).ToDictionary(keySelector: x => x.Id);

        var allPeopleIds = libraryLoanEntries
            .Select(selector: x => x.PersonId)
            .Concat(second: allDocuments.Values.SelectMany(selector: x => x.Info.Authors))
            .ToHashSet();

        var allPeople = (
            await _personRepo.GetListAsync(predicate: x => allPeopleIds.Contains(x.Id))
        ).ToDictionary(keySelector: x => x.Id);

        var allTenantIds = libraryLoanEntries.Select(selector: x => x.TenantId).ToHashSet();

        var allTenants = (
            await _rawTenantRepository.GetListAsync(predicate: x => allTenantIds.Contains(x.Id))
        ).ToDictionary(keySelector: x => x.Id);

        var allAppTenants = (
            await _appTenantRepository.GetListAsync(predicate: x => allTenantIds.Contains(x.Id))
        ).ToDictionary(keySelector: x => x.Id);

        return _mapper.Map<IEnumerable<LibraryLoanEntry>, List<FullLoanDetailsDto>>(
            source: libraryLoanEntries,
            opts: options =>
            {
                options.Items[key: nameof(Person)] = allPeople;
                options.Items[key: nameof(Document)] = allDocuments;
                options.Items[key: nameof(Tenant)] = allTenants;
                options.Items[key: nameof(BaseAppTenant)] = allAppTenants;
            }
        );
    }

    public Task<List<PersonDto>> MapAsync(IEnumerable<Person> docs)
    {
        return Task.FromResult(
            result: _mapper.Map<IEnumerable<Person>, List<PersonDto>>(source: docs)
        );
    }

    public async Task<List<AppTenantDto>> MapAsync(IEnumerable<Tenant> docs)
    {
        var enumerable = docs as Tenant[] ?? docs.ToArray();
        var allIds = enumerable.Select(selector: x => x.Id).ToHashSet();
        var relatedTenants = await _appTenantRepository.GetListAsync(
            predicate: x => allIds.Contains(x.Id)
        );
        var dict = enumerable.ToDictionary(keySelector: x => x.Id);
        var mapped = _mapperAccessor.Mapper.Map<IEnumerable<BaseAppTenant>, List<AppTenantDto>>(
            source: relatedTenants,
            opts: context =>
            {
                context.Items[key: nameof(Tenant)] = dict;
            }
        );
        return mapped;
    }

    public async Task<List<AppTenantDto>> MapAsync(IEnumerable<BaseAppTenant> docs)
    {
        var baseAppTenants = docs as BaseAppTenant[] ?? docs.ToArray();
        var allIds = baseAppTenants.Select(selector: x => x.Id).ToHashSet();
        var relatedTenants = await _rawTenantRepository.GetListAsync(
            predicate: x => allIds.Contains(x.Id)
        );
        var dict = relatedTenants.ToDictionary(keySelector: x => x.Id);
        return _mapperAccessor.Mapper.Map<IEnumerable<BaseAppTenant>, List<AppTenantDto>>(
            source: baseAppTenants,
            opts: context =>
            {
                context.Items[key: nameof(Tenant)] = dict;
            }
        );
    }

    public async Task<List<AppTenantDocumentEntryDtoForTenants>> MapDocumentEntriesForTenantAsync(
        IEnumerable<AppTenantDocumentEntry> docs
    )
    {
        var appTenantDocumentEntries = docs as AppTenantDocumentEntry[] ?? docs.ToArray();
        var allTenantIds = appTenantDocumentEntries
            .Select(selector: x => x.TenantId)
            .OfType<Guid>()
            .ToHashSet();
        var allDocumentIds = appTenantDocumentEntries
            .Select(selector: x => x.DocumentId)
            .ToHashSet();

        var documentsDict = (
            await _documentRepo.GetListAsync(predicate: x => allDocumentIds.Contains(x.Id))
        ).ToDictionary(keySelector: x => x.Id);
        var allAuthorIds = documentsDict.Values
            .SelectMany(selector: x => x.Info.Authors)
            .ToHashSet();
        var peopleDict = (
            await _personRepo.GetListAsync(predicate: x => allAuthorIds.Contains(x.Id))
        ).ToDictionary(keySelector: x => x.Id);
        var appTenantsDict = (
            await _appTenantRepository.GetListAsync(predicate: x => allTenantIds.Contains(x.Id))
        ).ToDictionary(keySelector: x => x.Id);
        var tenantsDict = (
            await _rawTenantRepository.GetListAsync(predicate: x => allTenantIds.Contains(x.Id))
        ).ToDictionary(keySelector: x => x.Id);

        return _mapper.Map<
            IEnumerable<AppTenantDocumentEntry>,
            List<AppTenantDocumentEntryDtoForTenants>
        >(
            source: appTenantDocumentEntries,
            opts: options =>
            {
                options.Items[key: nameof(BaseAppTenant)] = appTenantsDict;
                options.Items[key: nameof(Tenant)] = tenantsDict;
                options.Items[key: nameof(Document)] = documentsDict;
                options.Items[key: nameof(Person)] = peopleDict;
            }
        );
    }

    public async Task<
        List<AppTenantDocumentEntryDtoForDocuments>
    > MapDocumentEntriesForDocumentsAsync(IEnumerable<AppTenantDocumentEntry> docs)
    {
        var appTenantDocumentEntries = docs.ToList();
        var allTenantIds = appTenantDocumentEntries
            .Select(selector: x => x.TenantId)
            .OfType<Guid>()
            .ToHashSet();
        var allDocumentIds = appTenantDocumentEntries
            .Select(selector: x => x.DocumentId)
            .ToHashSet();

        var documentsDict = (
            await _documentRepo.GetListAsync(predicate: x => allDocumentIds.Contains(x.Id))
        ).ToDictionary(keySelector: x => x.Id);
        var allAuthorIds = documentsDict.Values
            .SelectMany(selector: x => x.Info.Authors)
            .ToHashSet();
        var peopleDict = (
            await _personRepo.GetListAsync(predicate: x => allAuthorIds.Contains(x.Id))
        ).ToDictionary(keySelector: x => x.Id);
        var appTenantsDict = (
            await _appTenantRepository.GetListAsync(predicate: x => allTenantIds.Contains(x.Id))
        ).ToDictionary(keySelector: x => x.Id);
        var tenantsDict = (
            await _rawTenantRepository.GetListAsync(predicate: x => allTenantIds.Contains(x.Id))
        ).ToDictionary(keySelector: x => x.Id);

        return _mapper.Map<
            IEnumerable<AppTenantDocumentEntry>,
            List<AppTenantDocumentEntryDtoForDocuments>
        >(
            source: appTenantDocumentEntries,
            opts: options =>
            {
                options.Items[key: nameof(BaseAppTenant)] = appTenantsDict;
                options.Items[key: nameof(Tenant)] = tenantsDict;
                options.Items[key: nameof(Document)] = documentsDict;
                options.Items[key: nameof(Person)] = peopleDict;
            }
        );
    }
}
