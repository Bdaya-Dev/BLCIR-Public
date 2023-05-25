using Bdaya.BLCIRM.Tenants;

namespace Bdaya.BLCIRM;

using Bdaya.BLCIRM.State;
using System;
using Volo.Abp.MultiTenancy;

/// <param name="TenantId"> From </param>
/// <param name="DocumentId"></param>
/// <param name="PhysicalCopiesChange"> Always positive </param>
public class TransferPhysicalDocumentsTransactionInfoDto : TransactionInfoDto
{
    public Guid TargetTenantId { get; set; }
    public AppTenantDto? TargetTenant { get; set; }

    public Guid DocumentId { get; set; }
    public DocumentDto? Document { get; set; }

    public int Quantity { get; set; }
    public string? Notes { get; set; }
    public double? PricePerItem { get; set; }
}
