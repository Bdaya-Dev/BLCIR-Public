namespace Bdaya.BLCIRM.State;

using Bdaya.BLCIRM.Tenants;
using System;
using Volo.Abp.Application.Dtos;
using Volo.Abp.TenantManagement;

public class FullLoanDetailsDto : FullAuditedEntityDto<Guid>
{
    public AppTenantDto? Tenant { get; set; }
    public DocumentDto? Document { get; set; }
    public PersonDto? Person { get; set; }
    public int PhysicalCopies { get; set; }
    public int ReturnedCopies { get; set; }
    public int RemainingCopies => PhysicalCopies - ReturnedCopies;
    public DateTime? ReturnDate { get; set; }
    public DateTime? ActualReturnDate { get; set; }
    
}
