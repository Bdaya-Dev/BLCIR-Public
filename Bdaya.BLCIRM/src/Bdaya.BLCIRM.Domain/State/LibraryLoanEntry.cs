namespace Bdaya.BLCIRM.State;

using System;
using Volo.Abp.Domain.Entities.Auditing;
using Volo.Abp.MultiTenancy;

public class LibraryLoanEntry : FullAuditedAggregateRoot<Guid>, IMultiTenant
{
    protected LibraryLoanEntry()
    {
    }

    public LibraryLoanEntry(
        Guid id,
        Guid? tenantId,
        Guid documentId,
        Guid personId,
        int physicalCopies,
        DateOnly? returnDate,
        DateTime? actualReturnDate
    )
        : base(id: id)
    {
        TenantId = tenantId;
        DocumentId = documentId;
        PersonId = personId;
        PhysicalCopies = physicalCopies;
        ReturnDate = returnDate;
        ActualReturnDate = actualReturnDate;
    }

    public Guid? TenantId { get; protected set; }
    public Guid DocumentId { get; protected set; }
    public Guid PersonId { get; protected set; }
    public DateOnly? ReturnDate { get; protected set; }
    public DateTime? ActualReturnDate { get; set; }

    public int PhysicalCopies { get; set; }
    public int ReturnedCopies { get; set; }
    public int RemainingCopies => PhysicalCopies - ReturnedCopies;
}