using System;
using System.Collections.Generic;

namespace Bdaya.BLCIRM;

public record RegisterDocumentTransactionInfo(
    Guid DocumentId,
    int InitialCount,
    bool IsAvailableOnline
) : TransactionInfo
{
    public override IEnumerable<object?> GetParts()
    {
        yield return DocumentId;
        yield return InitialCount;
        yield return IsAvailableOnline;
    }
}
