namespace Bdaya.BLCIRM;
using System;

public class ApproveTenantDto
{
    public Guid TenantId { get; set; }
    public bool Result { get; set; }
    public string? Reason { get; set; }
}
