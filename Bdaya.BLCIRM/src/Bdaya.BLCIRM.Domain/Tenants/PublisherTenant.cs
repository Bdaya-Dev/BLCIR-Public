namespace Bdaya.BLCIRM;
using System;

public class PublisherTenant : BaseAppTenant
{
    protected PublisherTenant() { }

    public PublisherTenant(Guid id, AppTenantInfo info, AllowedByInfo? allowedBy)
        : base(id: id, info: info, allowedBy: allowedBy) { }
}
