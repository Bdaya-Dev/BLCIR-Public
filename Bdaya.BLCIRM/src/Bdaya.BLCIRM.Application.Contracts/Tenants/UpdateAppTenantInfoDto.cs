namespace Bdaya.BLCIRM.Tenants;

using Bdaya.BLCIRM.Models;

public class UpdateAppTenantInfoDto
{
    public RefNullable<string>? Address { get; set; }
    public RefNullable<string>? Phone { get; set; }
    public RefNullable<string>? Logo { get; set; }
    public RefNullable<string>? Website { get; set; }
    public RefNullable<string>? Email { get; set; }
}
