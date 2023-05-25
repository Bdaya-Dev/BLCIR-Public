namespace Bdaya.BLCIRM.State;
using System;
using Volo.Abp.Domain.Entities.Auditing;
using Volo.Abp.MultiTenancy;

public class AppTenantDocumentEntry : FullAuditedAggregateRoot<Guid>, IMultiTenant
{
    public Guid? TenantId { get; set; }
    public Guid DocumentId { get; set; }

    /// <summary>
    /// Total owned copies including loaned
    /// </summary>
    public int OwnedQuantity { get; set; }

    /// <summary>
    /// Total loaned copies
    /// </summary>
    public int LoanedQuantity { get; set; }

    /// <summary>
    /// How many copies available for loaning
    /// </summary>
    public int AvailableQuantity => OwnedQuantity - LoanedQuantity;

    public bool IsAvailableOnline { get; set; }

    public AppTenantDocumentEntry(
        Guid id,
        Guid? tenantId,
        Guid documentId,
        int ownedQuantity,
        int loanedQuantity,
        bool isAvailableOnline
    )
        : base(id: id)
    {
        OwnedQuantity = ownedQuantity;
        LoanedQuantity = loanedQuantity;
        IsAvailableOnline = isAvailableOnline;
        TenantId = tenantId;
        DocumentId = documentId;
    }

    protected AppTenantDocumentEntry() { }
}
