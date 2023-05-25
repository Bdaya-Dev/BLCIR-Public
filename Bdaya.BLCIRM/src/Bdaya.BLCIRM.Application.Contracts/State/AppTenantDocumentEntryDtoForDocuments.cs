namespace Bdaya.BLCIRM.State;

using Bdaya.BLCIRM.Tenants;
using System;
using Volo.Abp.Application.Dtos;

public class AppTenantDocumentEntryDtoForDocuments : FullAuditedEntityDto<Guid>
{
    /// <summary>
    ///
    /// </summary>
    public required AppTenantDto Tenant { get; set; }

    /// <summary>
    /// the document id
    /// </summary>
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
}
