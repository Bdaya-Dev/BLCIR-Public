using AutoMapper;
using Bdaya.BLCIRM.State;
using Nito.Disposables.Internals;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using Bdaya.BLCIRM.State.People;
using Volo.Abp.TenantManagement;

namespace Bdaya.BLCIRM;

public class DocumentsProfile : Profile
{
    public DocumentsProfile()
    {
        CreateMap<PersonInfo, PersonInfoDto>();
        CreateMap<PersonInfoDto, PersonInfo>();

        CreateMap<Person, PersonDto>()
            .ForMemberMapFrom(destinationMember: x => x.Info, srcMember: x => x.Info);
        CreateMap<Author, AuthorDto>().IncludeBase<Person, PersonDto>();

        CreateMap<CreatePersonDto, PersonInfo>().IncludeMembers(memberExpressions: x => x.Info);
        CreateMap<CreateAuthorDto, PersonInfo>().IncludeBase<CreatePersonDto, PersonInfo>();

        CreateMap<UpdateDocumentDto, DocumentInfo>()
            .ForMemberMapFrom(x => x.Authors, x => x.Authors)
            .ForMemberMapFrom(x => x.Language639_1Code, x => x.Language639_1Code)
            .ForMemberMapFrom(x => x.Metadata, x => x.Metadata)
            .ForMemberMapFrom(x => x.Title, x => x.Title)
            .ForMemberMapFrom(x => x.ContentHashes, x => x.ContentHashes)
            .ForMemberMapFrom(x => x.CoverImageContentHashes, x => x.CoverImageContentHashes);
        
        CreateMap<CreateDocumentDto, DocumentInfo>()
            .ForMemberMapFrom(
                destinationMember: x => x.Language639_1Code,
                srcMember: x => x.Language639_1Code
            )
            .ForMemberMapFrom(destinationMember: x => x.Authors, srcMember: x => x.Authors);

        CreateMap<DocumentInfo, DocumentInfoDto>()
            .ForMemberMapFrom(
                destinationMember: x => x.Language639_1Code,
                srcMember: x => x.Language639_1Code
            )
            .ForMemberWithItemEntry(
                destinationMember: x => x.Authors,
                entryName: nameof(Person),
                mapFrom: (DocumentInfo info, IReadOnlyDictionary<Guid, Person> dict) =>
                    info.Authors.Select(selector: dict.GetValueOrDefault).OfType<Author>().ToList()
            );

        CreateMap<Document, DocumentDto>();
        CreateMap<AppTenantDocumentEntry, CompcatTenantEntryDto>()
            .ForMemberWithItemEntry(
                destinationMember: x => x.Name,
                entryName: nameof(Tenant),
                mapFrom: (AppTenantDocumentEntry d, IReadOnlyDictionary<Guid, Tenant> tenants) =>
                    tenants.GetValueOrDefaultBetter(key: d.TenantId)?.Name
            );

        CreateMap<Document, MeiliDocumentDto>()
            .IncludeBase<Document, DocumentDto>()
            .ForMemberWithItemEntry(
                destinationMember: x => x.Entries,
                entryName: nameof(AppTenantDocumentEntry),
                mapFrom: (Document d, IReadOnlyDictionary<Guid, AppTenantDocumentEntry> entries) =>
                    entries.Values.Where(predicate: x => x.DocumentId == d.Id)
            );

        CreateMap<DocumentMetadataDef, DocumentMetadataDefDto>();
        CreateMap<AppTenantDocumentEntry, AppTenantDocumentEntryDtoForDocuments>()
            .ForMemberWithItemEntry(
                destinationMember: x => x.Tenant,
                entryName: nameof(BaseAppTenant),
                mapFrom: (
                    AppTenantDocumentEntry entry,
                    IReadOnlyDictionary<Guid, BaseAppTenant> tenants
                ) =>
                {
                    if (
                        entry.TenantId is { } tenantId
                        && tenants.TryGetValue(key: tenantId, value: out var tenant)
                    )
                    {
                        return tenant;
                    }

                    return null;
                }
            );
        CreateMap<AppTenantDocumentEntry, AppTenantDocumentEntryDtoForTenants>()
            .ForMemberWithItemEntry(
                destinationMember: x => x.Document,
                entryName: nameof(Document),
                mapFrom: (AppTenantDocumentEntry entry, IReadOnlyDictionary<Guid, Document> docs) =>
                    docs.TryGetValue(key: entry.DocumentId, value: out var doc) ? doc : null
            );
    }
}
