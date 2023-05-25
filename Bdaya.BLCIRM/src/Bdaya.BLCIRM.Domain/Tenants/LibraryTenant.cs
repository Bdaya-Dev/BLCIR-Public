namespace Bdaya.BLCIRM;
using System;
using Volo.Abp.TenantManagement;

public class LibraryTenant : BaseAppTenant
{
    protected LibraryTenant() { }

    public LibraryTenant(Guid id, AppTenantInfo info, AllowedByInfo? allowedBy)
        : base(id: id, info: info, allowedBy: allowedBy) { }
}
