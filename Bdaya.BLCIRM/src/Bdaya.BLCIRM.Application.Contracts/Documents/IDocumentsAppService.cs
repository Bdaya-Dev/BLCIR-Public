using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Bdaya.BLCIRM.State;
using Volo.Abp.Application.Services;

namespace Bdaya.BLCIRM;

public interface IDocumentsAppService
    : IReadOnlyAppService<DocumentDto, Guid>,
        ICreateAppService<TransactionProposalDto, CreateDocumentDto>,
        IUpdateAppService<TransactionProposalDto, Guid, UpdateDocumentDto>

{
    Task<TransactionProposalDto> RegisterDocumentEntryForTenantAsync(
        RegisterDocumentTransactionInfoDto input
    );

    Task<List<DocumentMetadataDefDto>> GetMetadataDefs();
    Task<MeiliDocumentDto> GetMeiliMappedDocumentAsync(Guid id);

    Task<List<AppTenantDocumentEntryDtoForDocuments>> GetRelatedEntriesForDocumentAsync(
        Guid documentId
    );

    Task<List<AppTenantDocumentEntryDtoForTenants>> GetRelatedEntriesForTenantAsync(Guid tenantId);

    Task<AppTenantDocumentEntryDtoForTenants?> GetSingleRelatedEntryForTenantAsync(
        Guid tenantId,
        Guid documentId
    );

    Task<TransactionProposalDto> TransferDocumentAsync(Guid id, TransferDocumentDto input);
    Task<TransactionProposalDto> DeleteAsync(Guid id);

    Task<TransactionProposalDto> UpdateOwnEntryAsync(Guid documentId, UpdateOwnEntryRequestDto input);
}