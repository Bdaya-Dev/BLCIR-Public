namespace Bdaya.BLCIRM;
using System;
using Volo.Abp.Domain.Entities.Auditing;

public abstract class BaseAppTenant : FullAuditedAggregateRoot<Guid>
{
#pragma warning disable CS8618
    protected BaseAppTenant() { }
#pragma warning restore CS8618

    public BaseAppTenant(Guid id, AppTenantInfo info, AllowedByInfo? allowedBy)
        : base(id: id)
    {
        Info = info;
        AllowedBy = allowedBy;
    }

    public AppTenantInfo Info { get; set; }
    public AllowedByInfo? AllowedBy { get; set; }
}
