namespace Bdaya.BLCIRM;
using System;
using Volo.Abp.Auditing;
using Volo.Abp.MultiTenancy;

public record AllowedByInfo(
    Guid? TenantId,
    Guid? CreatorId,
    DateTime CreationTime,
    bool? Result,
    string? Reason
) : IMultiTenant, IHasCreationTime, IMayHaveCreator;
