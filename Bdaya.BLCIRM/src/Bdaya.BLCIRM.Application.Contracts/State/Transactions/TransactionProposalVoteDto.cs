namespace Bdaya.BLCIRM.State;
using System;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Identity;
using Volo.Abp.MultiTenancy;

public class TransactionProposalVoteDto : CreationAuditedEntityDto<Guid>, IMultiTenant
{
    public Guid? TenantId { get; set; }
    public bool Result { get; set; }
    public string? Notes { get; set; }

}
