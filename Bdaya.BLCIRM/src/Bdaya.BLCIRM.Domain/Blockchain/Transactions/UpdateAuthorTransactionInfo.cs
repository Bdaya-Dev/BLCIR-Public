using System.Collections.Generic;
using System.Linq;

namespace Bdaya.BLCIRM;

using State;
using System;

public record UpdateAuthorTransactionInfo(Guid AuthorId, PersonInfo Info) : TransactionInfo
{
    public override IEnumerable<object?> GetParts()
    {
        yield return AuthorId;
        yield return Info;
    }
}
