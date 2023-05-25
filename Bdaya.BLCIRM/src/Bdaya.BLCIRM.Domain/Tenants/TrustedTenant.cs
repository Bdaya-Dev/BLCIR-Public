namespace Bdaya.BLCIRM;
using System;

public class TrustedTenant : BaseAppTenant
{
    protected TrustedTenant() { }

    public TrustedTenant(Guid id, AppTenantInfo info, AllowedByInfo? allowedBy)
        : base(id: id, info: info, allowedBy: allowedBy) { }
}
