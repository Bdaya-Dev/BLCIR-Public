namespace Bdaya.BLCIRM.Tenants;

using System;
using Volo.Abp.Application.Dtos;
using Volo.Abp.TenantManagement;

public class AppTenantDto : FullAuditedEntityDto<Guid>
{
    public string? Name { get; set; }
    public OrgType Type { get; set; }
    public required AppTenantInfoDto Info { get; set; }
    public AllowedByDto? AllowedBy { get; set; }
}
