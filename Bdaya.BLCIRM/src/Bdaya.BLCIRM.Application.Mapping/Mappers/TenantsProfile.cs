using AutoMapper;
using Bdaya.BLCIRM.Tenants;
using System;
using System.Collections;
using System.Collections.Generic;
using JetBrains.Annotations;
using Volo.Abp.AutoMapper;
using Volo.Abp.TenantManagement;

namespace Bdaya.BLCIRM;

[UsedImplicitly]
public class TenantsProfile : Profile
{
    public TenantsProfile()
    {
        /* You can configure your AutoMapper mapping configuration here.
         * Alternatively, you can split your mapping configurations
         * into multiple profile classes for a better organization. */

        CreateMap<AppTenantInfo, AppTenantInfoDto>();
        CreateMap<AppTenantInfoDto, AppTenantInfo>();

        CreateMap<AllowedByInfo, AllowedByDto>();
        CreateMap<AllowedByDto, AllowedByInfo>();

        CreateMap<BaseAppTenant, AppTenantDto>()
            .Ignore(destinationMember: x => x.Type)
            .ForMemberMapFrom(destinationMember: x => x.Info, srcMember: x => x.Info)
            .ForMemberMapFrom(destinationMember: x => x.AllowedBy, srcMember: x => x.AllowedBy)
            .ForMemberWithItemEntry(
                destinationMember: x => x.Name,
                entryName: nameof(Tenant),
                mapFrom: (BaseAppTenant tenant, IDictionary<Guid, Tenant> dict) =>
                    dict.GetOrDefault(key: tenant.Id)?.Name
            );

        CreateMap<LibraryTenant, AppTenantDto>()
            .IncludeBase<BaseAppTenant, AppTenantDto>()
            .ForMemberMapFrom(destinationMember: x => x.Type, srcMember: x => OrgType.Library);

        CreateMap<PublisherTenant, AppTenantDto>()
            .IncludeBase<BaseAppTenant, AppTenantDto>()
            .ForMemberMapFrom(destinationMember: x => x.Type, srcMember: x => OrgType.Publisher);

        CreateMap<TrustedTenant, AppTenantDto>()
            .IncludeBase<BaseAppTenant, AppTenantDto>()
            .ForMemberMapFrom(destinationMember: x => x.Type, srcMember: x => OrgType.TrustedAuthority);
    }
}
