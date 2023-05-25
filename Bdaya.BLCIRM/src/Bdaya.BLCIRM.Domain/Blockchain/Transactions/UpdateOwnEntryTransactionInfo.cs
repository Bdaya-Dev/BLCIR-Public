using AutoMapper.Internal;

namespace Bdaya.BLCIRM;

using System;
using System.Collections.Generic;

public record UpdateOwnEntryTransactionInfo(Guid DocumentId, int? NewAvailableCount, bool? IsAvailableOnline)
    : TransactionInfo
{
    public override IEnumerable<object?> GetParts()
    {
        yield return DocumentId;
        yield return NewAvailableCount;
        yield return IsAvailableOnline;
    }
}
