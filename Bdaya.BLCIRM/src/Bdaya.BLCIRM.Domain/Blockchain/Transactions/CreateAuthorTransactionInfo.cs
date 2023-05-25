using System;
using System.Collections.Generic;
using Bdaya.BLCIRM.State;

namespace Bdaya.BLCIRM;

public record CreateAuthorTransactionInfo(Guid AuthorId, PersonInfo Info) : TransactionInfo
{
    public override IEnumerable<object?> GetParts()
    {
        yield return AuthorId;
        yield return Info;
    }
}