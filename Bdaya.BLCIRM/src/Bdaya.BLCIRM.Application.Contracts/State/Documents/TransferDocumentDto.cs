using System;
using Volo.Abp.MultiTenancy;

namespace Bdaya.BLCIRM.State;

public class TransferDocumentDto
{
    public Guid TargetTenantId { get; set; }
    public int Quantity { get; set; }
    public string? Notes { get; set; }
    public decimal? PricePerItem { get; set; }
}