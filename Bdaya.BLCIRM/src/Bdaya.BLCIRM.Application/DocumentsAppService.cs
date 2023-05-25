using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Threading.Tasks;
using Bdaya.BLCIRM.Localization;
using Bdaya.BLCIRM.Permissions;
using Bdaya.BLCIRM.State;
using JetBrains.Annotations;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using NUglify.Helpers;
using Volo.Abp;
using Volo.Abp.Application.Services;
using Volo.Abp.Authorization;
using Volo.Abp.Data;
using Volo.Abp.Domain.Repositories;
using Volo.Abp.MultiTenancy;

namespace Bdaya.BLCIRM;

[UsedImplicitly]
public class DocumentsAppService
    : ReadOnlyAppService<Document, DocumentDto, Guid>,
        IDocumentsAppService
{
    private IBLCIRMAsyncMapper AsyncMapper { get; }
    private IRepository<AppTenantDocumentEntry, Guid> EntryRepository { get; }
    private IRepository<DocumentMetadataDef, string> MetadataDefRepository { get; }
    private new IRepository<Document, Guid> Repository { get; }
    private IAppTenantRepository AppTenantRepository { get; }
    private IDataFilter<IMultiTenant> MultiTenantFilter { get; }
    private IRepository<TransactionProposal, Guid> TransactionsRepo { get; }

    public DocumentsAppService(
        IRepository<Document, Guid> documentRepository,
        IAppTenantRepository appTenantRepository,
        IRepository<AppTenantDocumentEntry, Guid> entryRepository,
        IRepository<DocumentMetadataDef, string> metadataDefRepository,
        IDataFilter<IMultiTenant> multiTenantFilter,
        IBLCIRMAsyncMapper asyncMapper,
        IRepository<TransactionProposal, Guid> transactionsRepo
    )
        : base(repository: documentRepository)
    {
        LocalizationResource = typeof(BLCIRMResource);
        Repository = documentRepository;
        AppTenantRepository = appTenantRepository;
        EntryRepository = entryRepository;
        MetadataDefRepository = metadataDefRepository;
        MultiTenantFilter = multiTenantFilter;
        AsyncMapper = asyncMapper;
        TransactionsRepo = transactionsRepo;
    }

    protected override async Task<List<DocumentDto>> MapToGetListOutputDtosAsync(
        List<Document> entities
    )
    {
        return await AsyncMapper.MapDocumentsAsync(docs: entities);
    }

    protected override async Task<DocumentDto> MapToGetListOutputDtoAsync(Document entity)
    {
        return (await MapToGetListOutputDtosAsync(entities: new List<Document> { entity })).First();
    }

    protected override Task<DocumentDto> MapToGetOutputDtoAsync(Document entity)
    {
        return MapToGetListOutputDtoAsync(entity: entity);
    }

    [Authorize(policy: BLCIRMPermissions.Documents.Create)]
    public async Task<TransactionProposalDto> RegisterDocumentEntryForTenantAsync(
        [FromBody] RegisterDocumentTransactionInfoDto input
    )
    {
        var tenantId = CurrentTenant.GetId();
        var documentId = input.DocumentId;
        var count = input.InitialCount;
        var uid = CurrentUser.Id!.Value;

        ArgumentNullException.ThrowIfNull(argument: tenantId);
        var proposal = new TransactionProposal(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            info: new RegisterDocumentTransactionInfo(
                DocumentId: documentId,
                InitialCount: count,
                IsAvailableOnline: input.IsAvailableOnline
            )
        //votes: new List<TransactionProposalVote> { vote }
        );
        proposal.AddVote(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            result: true,
            notes: null,
            userId: uid,
            now: Clock.Now
        );
        proposal = await TransactionsRepo.InsertAsync(entity: proposal);
        return await AsyncMapper.MapAsync(proposal);
    }

    [Authorize(policy: BLCIRMPermissions.Documents.Update)]
    public async Task<TransactionProposalDto> UpdateAsync(Guid id, UpdateDocumentDto input)
    {
        var tenantId = CurrentTenant.GetId();
        var tenant = await AppTenantRepository.GetAsync(id: tenantId);
        var uid = CurrentUser.Id!.Value;
        if (tenant is not (PublisherTenant or TrustedTenant))
        {
            throw new AbpAuthorizationException(
                message: "Tenant must be either a publisher or a trusted tenant"
            );
        }

        var prev = await Repository.GetAsync(id);
        var mapped = ObjectMapper.Map(source: input, prev.Info);

        var proposal = new TransactionProposal(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            info: new UpdateDocumentTransactionInfo(DocumentId: id, Info: mapped)
        );
        proposal.AddVote(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            result: true,
            notes: null,
            userId: uid,
            now: Clock.Now
        );
        proposal = await TransactionsRepo.InsertAsync(entity: proposal);

        return await AsyncMapper.MapAsync(input: proposal);
    }

    [Authorize(policy: BLCIRMPermissions.Documents.Create)]
    public async Task<TransactionProposalDto> CreateAsync([FromBody] CreateDocumentDto input)
    {
        var tenantId = CurrentTenant.GetId();
        var tenant = await AppTenantRepository.GetAsync(id: tenantId);
        var uid = CurrentUser.Id!.Value;
        if (tenant is not (PublisherTenant or TrustedTenant))
        {
            throw new AbpAuthorizationException(
                message: "Tenant must be either a publisher or a trusted tenant"
            );
        }

        var mapped = ObjectMapper.Map<CreateDocumentDto, DocumentInfo>(source: input);
        var documentId = GuidGenerator.Create();

        var owners = new HashSet<Guid> { tenantId };

        input.ExtraOwners?.ForEach(action: item => owners.Add(item: item));

        var proposal = new TransactionProposal(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            info: new CreateDocumentTransactionInfo(
                DocumentId: documentId,
                Info: mapped,
                Owners: owners
            )
        );
        proposal.AddVote(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            result: true,
            notes: null,
            userId: uid,
            now: Clock.Now
        );
        proposal = await TransactionsRepo.InsertAsync(entity: proposal);

        return await AsyncMapper.MapAsync(input: proposal);
    }

    public async Task<List<DocumentMetadataDefDto>> GetMetadataDefs()
    {
        var metadata = await MetadataDefRepository.GetListAsync();
        return ObjectMapper.Map<List<DocumentMetadataDef>, List<DocumentMetadataDefDto>>(
            source: metadata
        );
    }

    public async Task<MeiliDocumentDto> GetMeiliMappedDocumentAsync([FromRoute] Guid id)
    {
        using var _ = DataFilter.Disable<IMultiTenant>();
        var document = await Repository.GetAsync(id: id);
        return (await AsyncMapper.MapMeiliDocumentsAsync(docs: new[] { document })).First();
    }

    public async Task<
        List<AppTenantDocumentEntryDtoForDocuments>
    > GetRelatedEntriesForDocumentAsync(Guid documentId)
    {
        using var _ = MultiTenantFilter.Disable();
        var related = await EntryRepository.GetListAsync(
            predicate: x => x.DocumentId == documentId
        );

        return await AsyncMapper.MapDocumentEntriesForDocumentsAsync(docs: related);
    }

    public async Task<List<AppTenantDocumentEntryDtoForTenants>> GetRelatedEntriesForTenantAsync(
        Guid tenantId
    )
    {
        using var _ = CurrentTenant.Change(id: tenantId);
        var related = await EntryRepository.GetListAsync();
        return await AsyncMapper.MapDocumentEntriesForTenantAsync(docs: related);
    }

    public async Task<AppTenantDocumentEntryDtoForTenants?> GetSingleRelatedEntryForTenantAsync(
        Guid tenantId,
        Guid documentId
    )
    {
        using var _ = CurrentTenant.Change(id: tenantId);
        var res = await EntryRepository.FindAsync(predicate: x => x.DocumentId == documentId);
        return res == null
            ? null
            : (await AsyncMapper.MapDocumentEntriesForTenantAsync(docs: new[] { res })).First();
    }

    [Authorize]
    public async Task<TransactionProposalDto> TransferDocumentAsync(
        [FromRoute] Guid id,
        [FromBody] TransferDocumentDto input
    )
    {
        var tenantId = CurrentTenant.GetId();
        var tenant = await AppTenantRepository.GetAsync(id: tenantId);
        var uid = CurrentUser.Id!.Value;
        if (tenant is not (LibraryTenant or PublisherTenant or TrustedTenant))
        {
            throw new AbpAuthorizationException(
                message: "Tenant must be either a library, a publisher or a trusted tenant"
            );
        }

        var prev = await Repository.GetAsync(id);
        var proposal = new TransactionProposal(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            info: new TransferPhysicalDocumentsTransactionInfo(
                TransferId: GuidGenerator.Create(),
                TargetTenantId: input.TargetTenantId,
                DocumentId: id,
                Quantity: input.Quantity,
                PricePerItem: input.PricePerItem,
                Notes: input.Notes
            )
        );
        proposal.AddVote(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            result: true,
            notes: null,
            userId: uid,
            now: Clock.Now
        );
        proposal = await TransactionsRepo.InsertAsync(entity: proposal);

        return await AsyncMapper.MapAsync(proposal);
    }

    [Authorize(policy: BLCIRMPermissions.Documents.Delete)]
    public async Task<TransactionProposalDto> DeleteAsync([FromRoute] Guid id)
    {
        var tenantId = CurrentTenant.GetId();
        var tenant = await AppTenantRepository.GetAsync(id: tenantId);
        var uid = CurrentUser.Id!.Value;
        if (tenant is not (PublisherTenant or TrustedTenant))
        {
            throw new AbpAuthorizationException(
                message: "Tenant must be either a publisher or a trusted tenant"
            );
        }

        var prev = await Repository.GetAsync(id);
        var proposal = new TransactionProposal(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            info: new DeleteDocumentTransactionInfo(DocumentId: id)
        );
        proposal.AddVote(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            result: true,
            notes: null,
            userId: uid,
            now: Clock.Now
        );
        proposal = await TransactionsRepo.InsertAsync(entity: proposal);

        return await AsyncMapper.MapAsync(proposal);
    }

    [Authorize]
    public async Task<TransactionProposalDto> UpdateOwnEntryAsync(
        [FromRoute] Guid documentId,
        [FromBody] UpdateOwnEntryRequestDto input
    )
    {
        var tenantId = CurrentTenant.GetId();

        var uid = CurrentUser.Id!.Value;

        ArgumentNullException.ThrowIfNull(argument: tenantId);
        var proposal = new TransactionProposal(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            info: new UpdateOwnEntryTransactionInfo(
                DocumentId: documentId,
                NewAvailableCount: input.NewAvailableCount,
                IsAvailableOnline: input.IsAvailableOnline
            )
        );
        proposal.AddVote(
            id: GuidGenerator.Create(),
            tenantId: tenantId,
            result: true,
            notes: null,
            userId: uid,
            now: Clock.Now
        );
        proposal = await TransactionsRepo.InsertAsync(entity: proposal);
        return await AsyncMapper.MapAsync(proposal);
    }
}
