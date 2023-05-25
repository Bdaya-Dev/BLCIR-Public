using System.Collections.Generic;

namespace Bdaya.BLCIRM;

using System;

public record DeletePersonTransactionInfo(Guid PersonId) : TransactionInfo
{
    public override IEnumerable<object?> GetParts()
    {
        yield return PersonId;
    }
}
