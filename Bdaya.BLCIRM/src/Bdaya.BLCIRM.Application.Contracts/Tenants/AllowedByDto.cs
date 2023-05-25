namespace Bdaya.BLCIRM.Tenants;

using System;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Auditing;
using Volo.Abp.MultiTenancy;

public class AllowedByDto : IEntityDto, IMultiTenant, IHasCreationTime, IMayHaveCreator
{
    public DateTime CreationTime { get; set; }
    public Guid? CreatorId { get; set; }
    public Guid? TenantId { get; set; }
    public bool? Result { get; set; }
    public string? Reason { get; set; }
}
