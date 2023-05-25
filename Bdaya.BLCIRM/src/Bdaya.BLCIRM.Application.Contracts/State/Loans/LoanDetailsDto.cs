namespace Bdaya.BLCIRM.State;
using System;
using Volo.Abp.Application.Dtos;
using Volo.Abp.MultiTenancy;

public class LoanDetailsDto : FullAuditedEntityDto<Guid>, IMultiTenant
{
    public Guid? TenantId { get; set; }
    public Guid DocumentId { get; set; }
    public Guid PersonId { get; set; }
    public int PhysicalCopies { get; set; }
    public int ReturnedCopies { get; set; }
    public int RemainingCopies => PhysicalCopies - ReturnedCopies;
    public DateTime? ReturnDate { get; set; }
    public DateTime ActualReturnDate { get; set; }
}
