using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;
using Bdaya.BLCIRM.MeiliSearch;
using Bdaya.BLCIRM.State;
using Bdaya.BLCIRM.Tenants;
using Microsoft.Extensions.Options;
using Volo.Abp.Auditing;
using Volo.Abp.Data;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Domain.Entities;
using Volo.Abp.Domain.Repositories;
using Volo.Abp.MultiTenancy;
using Volo.Abp.ObjectMapping;
using Volo.Abp.Threading;
using MS = Meilisearch;

namespace Bdaya.BLCIRM.DbMigrator;

/// <summary>
/// This is here due to DBMigrator's dependency on the Contracts module
/// </summary>
public class MeilisearchSeedContributer : IDataSeedContributor, ITransientDependency
{
    private IBLCIRMAsyncMapper AsyncMapper { get; }
    private IMeiliSearchAccessor MeiliSearchAccessor { get; }
    private MeiliSearchIndexNames IndexNames { get; }
    private IObjectMapper ObjectMapper { get; }
    private IRepository<Document, Guid> DocumentsRepository { get; }
    private IAppTenantRepository AppTenantRepository { get; }
    private ICancellationTokenProvider CancellationTokenProvider { get; }
    private JsonSerializerOptions JsonSerializerOptions { get; }
    private IRepository<DocumentMetadataDef, string> MetadataRepo { get; }
    private IRepository<LibraryLoanEntry, Guid> LoansRepo { get; }
    private IDataFilter<IMultiTenant> Filter { get; }
    private IRepository<Person, Guid> PeopleRepo { get; }

    public MeilisearchSeedContributer(
        IMeiliSearchAccessor meiliSearchAccessor,
        IOptions<MeiliSearchIndexNames> indexNamesOptions,
        IRepository<Document, Guid> documentsRepository,
        IAppTenantRepository appTenantRepository,
        ICancellationTokenProvider cancellationTokenProvider,
        IOptions<MeiliSearchSystemTextJsonOptions> systemTextJsonSerializerOptions,
        IRepository<DocumentMetadataDef, string> metadataRepo,
        IRepository<LibraryLoanEntry, Guid> loansRepo,
        IObjectMapper objectMapper,
        IDataFilter<IMultiTenant> filter,
        IBLCIRMAsyncMapper asyncMapper,
        IRepository<Person, Guid> peopleRepo
    )
    {
        MeiliSearchAccessor = meiliSearchAccessor;
        IndexNames = indexNamesOptions.Value;
        DocumentsRepository = documentsRepository;
        AppTenantRepository = appTenantRepository;
        CancellationTokenProvider = cancellationTokenProvider;
        JsonSerializerOptions = systemTextJsonSerializerOptions.Value.Options;
        MetadataRepo = metadataRepo;
        LoansRepo = loansRepo;
        ObjectMapper = objectMapper;
        Filter = filter;
        AsyncMapper = asyncMapper;
        PeopleRepo = peopleRepo;
    }

    private static async Task<MS.Index> UpsertIndex(
        MS.MeilisearchClient client,
        string name,
        string primaryKey
    )
    {
        var result = client.Index(uid: name);
        try
        {
            await client.DeleteIndexAsync(uid: name).WaitFor(client);
        }
        catch (MS.MeilisearchApiError error)
        {
            switch (error.Code)
            {
                case "index_not_found":
                    break;
                default:
                    throw;
            }
        }

        await client.CreateIndexAsync(uid: name, primaryKey: primaryKey).WaitFor(client);
        return result;
    }

    private readonly MS.Pagination _defaultPagination = new() { MaxTotalHits = 1_000_000 };

    private async Task<MS.Index> SetupIndex<T>(
        MS.MeilisearchClient client,
        string name,
        IEnumerable<T> documents,
        string primaryKey = nameof(IEntity<Guid>.Id),
        MS.Pagination? pagination = null,
        IEnumerable<string>? filterableAttributes = null,
        IEnumerable<string>? searchableAttributes = null,
        IEnumerable<string>? sortableAttributes = null,
        IEnumerable<string>? disableTypoToleranceAttributes = null
    )
    {
        var index = await UpsertIndex(client: client, name: name, primaryKey: primaryKey);
        //Clear documents
        await index.DeleteAllDocumentsAsync().WaitFor(client);

        pagination ??= _defaultPagination;
        //Update settings
        if (disableTypoToleranceAttributes != null)
        {
            await index.UpdateTypoToleranceAsync(
                typoTolerance: new() { DisableOnAttributes = disableTypoToleranceAttributes }
            );
        }

        if (pagination != null)
        {
            await index
                .UpdatePaginationAsync(
                    pagination: pagination,
                    cancellationToken: CancellationTokenProvider.Token
                )
                .WaitFor(client);
        }

        if (filterableAttributes != null)
        {
            await index
                .UpdateFilterableAttributesAsync(
                    filterableAttributes: filterableAttributes,
                    cancellationToken: CancellationTokenProvider.Token
                )
                .WaitFor(client);
        }

        if (searchableAttributes != null)
        {
            await index
                .UpdateSearchableAttributesAsync(
                    searchableAttributes: searchableAttributes,
                    cancellationToken: CancellationTokenProvider.Token
                )
                .WaitFor(client);
        }

        if (sortableAttributes != null)
        {
            await index
                .UpdateSortableAttributesAsync(
                    sortableAttributes: sortableAttributes,
                    cancellationToken: CancellationTokenProvider.Token
                )
                .WaitFor(client);
        }

        var serialized = JsonSerializer.Serialize(value: documents, options: JsonSerializerOptions);
        await index
            .AddDocumentsJsonAsync(documents: serialized, cancellationToken: CancellationTokenProvider.Token)
            .WaitFor(client);

        return index;
    }

    private static readonly string[] _dateAuditedProperties =
    {
        nameof(IDeletionAuditedObject.DeletionTime),
        nameof(IModificationAuditedObject.LastModificationTime),
        nameof(ICreationAuditedObject.CreationTime),
    };

    private static readonly IEnumerable<string> _auditedProperties = new[]
    {
        nameof(IDeletionAuditedObject.IsDeleted),
        nameof(IDeletionAuditedObject.DeleterId),
        nameof(IModificationAuditedObject.LastModifierId),
        nameof(ICreationAuditedObject.CreatorId),
    }.Concat(second: _dateAuditedProperties);

    public async Task SetupIndexesAndSearch()
    {
        //var client = _meiliSearchAccessor.Value;
        var client = MeiliSearchAccessor.Value;
        if (client == null)
        {
            return;
        }

        var mapper = ObjectMapper.GetMapper();
        //Tenants

        #region Tenants

        await SetupIndex(
            client: client,
            name: IndexNames.Tenants,
            documents: await AsyncMapper.MapAsync(docs: await AppTenantRepository.GetListAsync()),
            searchableAttributes: new[] { nameof(AppTenantDto.Name), nameof(AppTenantDto.Info), },
            filterableAttributes: new[]
            {
                nameof(AppTenantDto.Id),
                nameof(AppTenantDto.Type),
                $"{nameof(AppTenantDto.Info)}.{nameof(AppTenantInfoDto.CreationTime)}",
                nameof(AppTenantDto.AllowedBy),
                //$"{nameof(AppTenantDto.Tenant)}.AllowedBy.CreationTime"
            }.Concat(second: _auditedProperties),
            sortableAttributes: _dateAuditedProperties
        );

        #endregion

        #region Documents

        var allDocuments = await DocumentsRepository.GetListAsync();
        var mappedDocuments = await AsyncMapper.MapMeiliDocumentsAsync(docs: allDocuments);

        var metadata = await MetadataRepo.GetListAsync();
        var langs = new[] { "ar", "en" };
        var searchable = metadata.Where(predicate: x => x.IsSearchable).ToList();
        var filterable = metadata.Where(predicate: x => x.IsFilterable || x.IsFacet).ToList();
        var sortable = metadata.Where(
            predicate: x => x.Type == DocumentMetadataType.Number || x.Type == DocumentMetadataType.DateTime
        );
        var documentSearchables = new[]
        {
            $"{nameof(MeiliDocumentDto.Info)}.{nameof(DocumentInfoDto.Title)}",
            $"{nameof(MeiliDocumentDto.Info)}.{nameof(DocumentInfoDto.Authors)}"
        }.Concat(
            second: searchable.Select(
                selector: s => $"{nameof(MeiliDocumentDto.Info)}.{nameof(DocumentInfoDto.Metadata)}.{s.Id}"
            )
        );
        foreach (var l in langs)
        {
            await SetupIndex(
                client: client,
                name: IndexNames.DocumentsLang(lang: l),
                documents: mappedDocuments.Where(predicate: x => x.Info.Language639_1Code == l),
                searchableAttributes: documentSearchables,
                disableTypoToleranceAttributes: metadata
                    .Where(predicate: x => x.DisableTypoTolerance)
                    .Select(
                        selector: s =>
                            $"{nameof(MeiliDocumentDto.Info)}.{nameof(DocumentInfoDto.Metadata)}.{s.Id}"
                    ),
                filterableAttributes: new[]
                    {
                        nameof(MeiliDocumentDto.Id),
                        $"{nameof(MeiliDocumentDto.Entries)}.{nameof(CompcatTenantEntryDto.TenantId)}",
                        $"{nameof(MeiliDocumentDto.Entries)}.{nameof(CompcatTenantEntryDto.AvailableQuantity)}",
                        $"{nameof(MeiliDocumentDto.Entries)}.{nameof(CompcatTenantEntryDto.IsAvailableOnline)}",
                    }
                    .Concat(
                        second: filterable.Select(
                            selector: s =>
                                $"{nameof(MeiliDocumentDto.Info)}.{nameof(DocumentInfoDto.Metadata)}.{s.Id}"
                        )
                    )
                    .Concat(second: _auditedProperties),
                sortableAttributes: _dateAuditedProperties.Concat(
                    second: sortable.Select(
                        selector: s =>
                            $"{nameof(MeiliDocumentDto.Info)}.{nameof(DocumentInfoDto.Metadata)}.{s.Id}"
                    )
                )
            );
        }

        #endregion


        #region Loans

        var mappedLoans = await AsyncMapper.MapAsync(docs: await LoansRepo.GetListAsync());

        await SetupIndex(
            client: client,
            name: IndexNames.Loans,
            documents: mappedLoans,
            searchableAttributes: new[]
            {
                //$"{nameof(FullLoanDetailsDto.Tenant)}.{nameof(AppTenantDto.Name)}",
                $"{nameof(FullLoanDetailsDto.Person)}.{nameof(PersonDto.Info)}.{nameof(PersonInfoDto.Name)}",
                $"{nameof(FullLoanDetailsDto.Person)}.{nameof(PersonDto.Info)}.{nameof(PersonInfoDto.NationalId)}",
            }.Concat(second: documentSearchables.Select(selector: x => $"{nameof(FullLoanDetailsDto.Document)}.{x}")),
            filterableAttributes: new[]
            {
                nameof(FullLoanDetailsDto.Id),
                $"{nameof(FullLoanDetailsDto.Tenant)}.{nameof(AppTenantDto.Id)}",
                $"{nameof(FullLoanDetailsDto.Document)}.{nameof(DocumentDto.Id)}",
                $"{nameof(FullLoanDetailsDto.Person)}.{nameof(PersonDto.Id)}",
                nameof(FullLoanDetailsDto.RemainingCopies),
                nameof(FullLoanDetailsDto.PhysicalCopies),
                nameof(FullLoanDetailsDto.ReturnedCopies),
                nameof(FullLoanDetailsDto.ReturnDate),
                nameof(FullLoanDetailsDto.ActualReturnDate),
            }.Concat(second: _auditedProperties),
            sortableAttributes: _dateAuditedProperties
        );

        #endregion

        #region People

        string InfoDot(string other) => $"{nameof(PersonDto.Info)}.{other}";
        await SetupIndex(
            client: client,
            name: IndexNames.People,
            documents: await AsyncMapper.MapAsync(docs: await PeopleRepo.GetListAsync()),
            searchableAttributes: new[]
            {
                InfoDot(other: nameof(PersonInfoDto.Name)),
                InfoDot(other: nameof(PersonInfoDto.NationalId)),
            },
            filterableAttributes: new[]
            {
                nameof(PersonDto.Id),
                InfoDot(other: nameof(PersonInfoDto.NationalId)),
                InfoDot(other: nameof(PersonInfoDto.Metadata)),
                InfoDot(other: nameof(PersonInfoDto.Birthday)),
                InfoDot(other: nameof(PersonInfoDto.CountryCodeIso3166)),
                "type",
            }.Concat(second: _auditedProperties),
            sortableAttributes: _dateAuditedProperties
        );

        #endregion
    }

    public async Task SeedAsync(DataSeedContext context)
    {
        if (context.TenantId.HasValue)
        {
            return;
        }

        using (Filter.Disable())
        {
            await SetupIndexesAndSearch();
        }
    }
}

public static class TaskInfoExt
{
    public static async Task WaitFor(this Task<MS.TaskInfo> taskTask, MS.MeilisearchClient client)
    {
        await client.WaitForTaskAsync(taskUid: (await taskTask).TaskUid);
    }
}