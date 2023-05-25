using AutoMapper;
using Bdaya.BLCIRM.State;
using System;
using System.Collections;
using System.Collections.Generic;
using Volo.Abp.TenantManagement;

namespace Bdaya.BLCIRM;

public class LoansProfile : Profile
{
    public LoansProfile()
    {
        CreateMap<LibraryLoanEntry, LoanDetailsDto>()
            .ForMemberMapFrom(
                x => x.ReturnDate,
                x =>
                    x.ReturnDate.HasValue
                        ? x.ReturnDate.Value.ToDateTime(TimeOnly.MinValue)
                        : default(DateTime?)
            );
        CreateMap<LibraryLoanEntry, FullLoanDetailsDto>()
            .ForMemberMapFrom(
                x => x.ReturnDate,
                x =>
                    x.ReturnDate.HasValue
                        ? x.ReturnDate.Value.ToDateTime(TimeOnly.MinValue)
                        : default(DateTime?)
            )
            .ForMemberWithItemEntry(
                destinationMember: x => x.Document,
                entryName: nameof(Document),
                mapFrom: (LibraryLoanEntry entry, IReadOnlyDictionary<Guid, Document> dict) =>
                    dict.GetValueOrDefault(key: entry.DocumentId)
            )
            .ForMemberWithItemEntry(
                destinationMember: x => x.Tenant,
                entryName: nameof(BaseAppTenant),
                mapFrom: (LibraryLoanEntry entry, IReadOnlyDictionary<Guid, BaseAppTenant> dict) =>
                    dict.GetValueOrDefaultBetter(key: entry.TenantId)
            )
            .ForMemberWithItemEntry(
                destinationMember: x => x.Person,
                entryName: nameof(Person),
                mapFrom: (LibraryLoanEntry entry, IReadOnlyDictionary<Guid, Person> dict) =>
                    dict.GetValueOrDefaultBetter(key: entry.PersonId)
            );
    }
}
