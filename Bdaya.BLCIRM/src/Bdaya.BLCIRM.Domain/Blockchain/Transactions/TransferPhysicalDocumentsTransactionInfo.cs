using System.Collections.Generic;

namespace Bdaya.BLCIRM;

using System;
using Volo.Abp.MultiTenancy;

public record TransferPhysicalDocumentsTransactionInfo(
    Guid TransferId,
    Guid TargetTenantId,
    Guid DocumentId,
    int Quantity,
    decimal? PricePerItem,
    string? Notes
) : TransactionInfo
{
    public override IEnumerable<object?> GetParts()
    {
        yield return TransferId;
        yield return TargetTenantId;
        yield return DocumentId;
        yield return Quantity;
        yield return PricePerItem;
        yield return Notes;
    }
}