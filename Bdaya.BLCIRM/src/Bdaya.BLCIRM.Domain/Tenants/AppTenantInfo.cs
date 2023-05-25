namespace Bdaya.BLCIRM;

using System;
using Volo.Abp.Auditing;

public class AppTenantInfo
{
    public AppTenantInfo(
        string? Address,
        string? Phone,
        string? Logo,
        string? Website,
        string? Email,
        DateTime? CreationTime
    )
    {
        this.Address = Address;
        this.Phone = Phone;
        this.Logo = Logo;
        this.Website = Website;
        this.Email = Email;
        this.CreationTime = CreationTime;
    }

    public string? Address { get; set; }
    public string? Phone { get; set; }
    public string? Logo { get; set; }
    public string? Website { get; set; }
    public string? Email { get; set; }
    public DateTime? CreationTime { get; set; }
}
