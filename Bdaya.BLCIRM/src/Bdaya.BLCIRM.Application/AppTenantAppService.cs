using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Bdaya.BLCIRM.Localization;
using Bdaya.BLCIRM.Models;
using Bdaya.BLCIRM.Permissions;
using Bdaya.BLCIRM.Tenants;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Volo.Abp;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;
using Volo.Abp.TenantManagement;
using Volo.Abp.Users;

namespace Bdaya.BLCIRM;

public class AppTenantAppService
    : CrudAppService<
            BaseAppTenant,
            AppTenantDto,
            AppTenantDto,
            Guid,
            PagedAndSortedResultRequestDto,
            CreateAppTenantDto,
            UpdateAppTenantDto
        >,
        IAppTenantAppService
{
    private readonly ITenantAppService _tenantAppService;
    private IBLCIRMAsyncMapper AsyncMapper { get; }

    public AppTenantAppService(
        IAppTenantRepository repository,
        ITenantAppService tenantAppService,
        IBLCIRMAsyncMapper asyncMapper
    )
        : base(repository: repository)
    {
        LocalizationResource = typeof(BLCIRMResource);
        _tenantAppService = tenantAppService;
        AsyncMapper = asyncMapper;

        CreatePolicyName = TenantManagementPermissions.Tenants.Create;
        UpdatePolicyName = TenantManagementPermissions.Tenants.Update;
        DeletePolicyName = TenantManagementPermissions.Tenants.Delete;
    }


    protected override async Task<BaseAppTenant> MapToEntityAsync(CreateAppTenantDto createInput)
    {
        var created = await _tenantAppService.CreateAsync(input: createInput.CreateDto);
        var mappedInfo = ObjectMapper.Map<AppTenantInfoDto, AppTenantInfo>(source: createInput.Info);
        BaseAppTenant entity = createInput.Type switch
        {
            OrgType.Library => new LibraryTenant(id: created.Id, info: mappedInfo, allowedBy: null),
            OrgType.Publisher => new PublisherTenant(id: created.Id, info: mappedInfo, allowedBy: null),
            OrgType.TrustedAuthority => new TrustedTenant(id: created.Id, info: mappedInfo, allowedBy: null),
            _ => throw new NotSupportedException(),
        };
        return entity;
    }

    protected override async Task MapToEntityAsync(
        UpdateAppTenantDto updateInput,
        BaseAppTenant entity
    )
    {
        if (updateInput.Name.ShouldUpdate(value: out var name))
        {
            var tenant = await _tenantAppService.UpdateAsync(
                id: entity.Id,
                input: new TenantUpdateDto { Name = name }
            );
        }

        if (updateInput.Info != null)
        {
            var infoUpdate = updateInput.Info;
            var info = entity.Info;

            if (infoUpdate.Address.ShouldUpdate(value: out var address))
            {
                info.Address = address;
            }

            if (infoUpdate.Email.ShouldUpdate(value: out var email))
            {
                info.Email = email;
            }

            if (infoUpdate.Logo.ShouldUpdate(value: out var logo))
            {
                info.Logo = logo;
            }

            if (infoUpdate.Phone.ShouldUpdate(value: out var phone))
            {
                info.Phone = phone;
            }

            if (infoUpdate.Website.ShouldUpdate(value: out var website))
            {
                info.Website = website;
            }
        }

        //await base.MapToEntityAsync(updateInput, entity);
    }

    protected override async Task DeleteByIdAsync(Guid id)
    {
        await _tenantAppService.DeleteAsync(id: id);
        await base.DeleteByIdAsync(id: id);
    }

    protected override async Task<AppTenantDto> MapToGetOutputDtoAsync(BaseAppTenant entity)
    {
        return (await AsyncMapper.MapAsync(docs: new[] { entity })).First();
    }

    protected override async Task<List<AppTenantDto>> MapToGetListOutputDtosAsync(
        List<BaseAppTenant> entities
    )
    {
        return await AsyncMapper.MapAsync(docs: entities);
    }

    public async Task<IReadOnlyDictionary<Guid, AppTenantDto>> GetTenantsByIds(
        [FromQuery] HashSet<Guid> ids
    )
    {
        var relatedAppTenants = await Repository.GetListAsync(predicate: x => ids.Contains(x.Id));
        var mapped = await MapToGetListOutputDtosAsync(entities: relatedAppTenants);
        return mapped.ToDictionary(keySelector: x => x.Id);
    }

    [Authorize(policy: BLCIRMPermissions.Tenants.ApproveTenants)]
    public async Task ApproveTenantAsync(ApproveTenantDto dto)
    {
        var userId = CurrentUser.GetId();
        var tenantIdN = CurrentUser.TenantId;
        var targetTenantId = dto.TenantId;

        var trusted = tenantIdN.HasValue ? await Repository.GetAsync(id: tenantIdN.Value) : null;
        var target = await Repository.GetAsync(id: targetTenantId);
        if (trusted != null && trusted is not TrustedTenant)
        {
            throw new BusinessException(code: BLCIRMDomainErrorCodes.TenantNotTrusted).WithData(
                name: "TenantId",
                value: trusted.Id
            );
        }

        if (target.AllowedBy is { Result: not null })
        {
            throw new BusinessException(code: BLCIRMDomainErrorCodes.TenantAlreadyVerified).WithData(
                name: "TenantId",
                value: target.Id
            );
        }

        target.AllowedBy = new AllowedByInfo(
            TenantId: trusted?.Id,
            CreatorId: userId,
            CreationTime: Clock.Now,
            Result: dto.Result,
            Reason: dto.Reason
        );
        await Repository.UpdateAsync(entity: target);
    }
}