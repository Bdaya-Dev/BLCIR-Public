using System;
using Volo.Abp.Application.Dtos;
using Volo.Abp.MultiTenancy;

namespace Bdaya.BLCIRM.State;

public class CompcatTenantEntryDto : EntityDto<Guid>, IMultiTenant
{
    public Guid? TenantId { get; set; }

    public required string Name { get; set; }

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