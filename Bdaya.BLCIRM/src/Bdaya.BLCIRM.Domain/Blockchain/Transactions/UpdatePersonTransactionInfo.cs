using System;
using System.Collections.Generic;
using Bdaya.BLCIRM.State;

namespace Bdaya.BLCIRM;

public record UpdatePersonTransactionInfo(Guid PersonId, PersonInfo Info) : TransactionInfo
{
    public override IEnumerable<object?> GetParts()
    {
        yield return PersonId;
        yield return Info;
    }
}