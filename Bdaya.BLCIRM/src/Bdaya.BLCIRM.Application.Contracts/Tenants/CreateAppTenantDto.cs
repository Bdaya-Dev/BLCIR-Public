namespace Bdaya.BLCIRM.Tenants;

using Bdaya.BLCIRM;

using System;
using System.Collections.Generic;
using System.Text;
using Volo.Abp.TenantManagement;

public class CreateAppTenantDto
{
    public OrgType Type { get; set; }
    public required TenantCreateDto CreateDto { get; set; }
    public required AppTenantInfoDto Info { get; set; }
}
