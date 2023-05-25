using AutoMapper;
using Bdaya.BLCIRM.State;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Volo.Abp.AutoMapper;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Identity;

namespace Bdaya.BLCIRM;

public class TransactionProfile : Profile
{
    public TransactionProfile()
    {
        CreateMap<TransactionInfo, TransactionInfoDto>().IncludeAllDerived();
        //Documents
        CreateMap<CreateDocumentTransactionInfo, CreateDocumentTransactionInfoDto>();
        CreateMap<UpdateDocumentTransactionInfo, UpdateDocumentTransactionInfoDto>();
        CreateMap<DeleteDocumentTransactionInfo, DeleteDocumentTransactionInfoDto>();
        //Document Entries
        CreateMap<RegisterDocumentTransactionInfo, RegisterDocumentTransactionInfoDto>();
        CreateMap<UpdateOwnEntryTransactionInfo, UpdateOwnEntryTransactionInfoDto>()
            .ForMemberMapFrom(x => x.IsAvailableOnline, x => x.IsAvailableOnline)
            .ForMemberMapFrom(x => x.NewAvailableCount, x => x.NewAvailableCount);
        CreateMap<LoanPhysicalDocumentsTransactionInfo, LoanPhysicalDocumentsTransactionInfoDto>()
            .ForMemberMapFrom(
                x => x.ReturnDate,
                x =>
                    x.ReturnDate.HasValue
                        ? x.ReturnDate.Value.ToDateTime(TimeOnly.MinValue)
                        : default
            );
        CreateMap<
            ReturnLoanPhysicalDocumentsTransactionInfo,
            ReturnLoanPhysicalDocumentsTransactionInfoDto
        >();
        CreateMap<
            TransferPhysicalDocumentsTransactionInfo,
            TransferPhysicalDocumentsTransactionInfoDto
        >()
            .ForMemberWithItemEntry(
                x => x.Document,
                nameof(Document),
                (
                    TransferPhysicalDocumentsTransactionInfo src,
                    IReadOnlyDictionary<Guid, Document> dict
                ) => dict.GetValueOrDefault(src.DocumentId)
            )
            .ForMemberWithItemEntry(
                x => x.TargetTenant,
                nameof(BaseAppTenant),
                (
                    TransferPhysicalDocumentsTransactionInfo src,
                    IReadOnlyDictionary<Guid, BaseAppTenant> dict
                ) => dict.GetValueOrDefault(src.TargetTenantId)
            );
        //Authors
        CreateMap<CreateAuthorTransactionInfo, CreateAuthorTransactionInfoDto>();
        CreateMap<UpdateAuthorTransactionInfo, UpdateAuthorTransactionInfoDto>();
        //People
        CreateMap<CreatePersonTransactionInfo, CreatePersonTransactionInfoDto>();
        CreateMap<UpdatePersonTransactionInfo, UpdatePersonTransactionInfoDto>();
        CreateMap<DeletePersonTransactionInfo, DeletePersonTransactionInfoDto>()
            .ForMemberWithItemEntry(
                x => x.Info,
                nameof(Person),
                (DeletePersonTransactionInfo src, IReadOnlyDictionary<Guid, Person> people) =>
                    people.GetValueOrDefault(src.PersonId)?.Info
            );
        /**/

        CreateMap<TransactionProposalVote, TransactionProposalVoteDto>()
            .ForMemberMapFrom(x => x.Notes, x => x.Notes);
        CreateMap<TransactionProposal, TransactionProposalDto>()
            .ForMemberMapFrom(destinationMember: x => x.Info, srcMember: x => x.Info);
    }
}
