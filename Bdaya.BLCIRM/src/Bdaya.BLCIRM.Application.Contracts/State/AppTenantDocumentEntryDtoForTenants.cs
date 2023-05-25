namespace Bdaya.BLCIRM.State;

using System;
using Volo.Abp.Application.Dtos;
using Volo.Abp.MultiTenancy;

public class AppTenantDocumentEntryDtoForTenants : FullAuditedEntityDto<Guid>
{
    /// <summary>
    /// the document id
    /// </summary>
    public required DocumentDto Document { get; set; }

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
}
