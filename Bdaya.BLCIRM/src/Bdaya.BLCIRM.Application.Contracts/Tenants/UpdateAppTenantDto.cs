namespace Bdaya.BLCIRM.Tenants;

using Bdaya.BLCIRM.Models;

public class UpdateAppTenantDto
{
    public RefNullable<string>? Name { get; set; }
    public UpdateAppTenantInfoDto? Info { get; set; }
}
