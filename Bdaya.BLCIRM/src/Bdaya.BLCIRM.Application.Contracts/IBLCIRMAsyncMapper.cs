namespace Bdaya.BLCIRM;

using Bdaya.BLCIRM.State;
using Bdaya.BLCIRM.Tenants;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.TenantManagement;

public interface IBLCIRMAsyncMapper
{
    Task<List<AppTenantDto>> MapAsync(IEnumerable<Tenant> docs);
    Task<List<AppTenantDto>> MapAsync(IEnumerable<BaseAppTenant> docs);
    Task<List<DocumentDto>> MapDocumentsAsync(HashSet<Guid> docIds);
    Task<List<DocumentDto>> MapDocumentsAsync(IEnumerable<Document> docs);
    Task<List<AppTenantDocumentEntryDtoForTenants>> MapDocumentEntriesForTenantAsync(
        IEnumerable<AppTenantDocumentEntry> docs
    );
    Task<List<AppTenantDocumentEntryDtoForDocuments>> MapDocumentEntriesForDocumentsAsync(
        IEnumerable<AppTenantDocumentEntry> docs
    );
    Task<List<MeiliDocumentDto>> MapMeiliDocumentsAsync(HashSet<Guid> docIds);
    Task<List<MeiliDocumentDto>> MapMeiliDocumentsAsync(IEnumerable<Document> docs);
    Task<List<FullLoanDetailsDto>> MapAsync(IEnumerable<LibraryLoanEntry> docs);

    Task<List<PersonDto>> MapAsync(IEnumerable<Person> docs);
    Task<List<TransactionInfoDto>> MapAsync(List<TransactionInfo> infos);
    Task<List<TransactionProposalDto>> MapAsync(List<TransactionProposal> input);
    Task<TransactionProposalDto> MapAsync(TransactionProposal input);
}
