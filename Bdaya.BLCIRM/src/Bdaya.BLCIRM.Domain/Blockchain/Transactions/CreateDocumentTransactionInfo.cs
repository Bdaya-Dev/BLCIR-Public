using System;
using System.Collections.Generic;
using Bdaya.BLCIRM.State;

namespace Bdaya.BLCIRM;

public record CreateDocumentTransactionInfo(
    Guid DocumentId,
    DocumentInfo Info,
    HashSet<Guid> Owners
) : TransactionInfo
{
    public override IEnumerable<object?> GetParts()
    {
        yield return DocumentId;
        yield return Info;
        yield return Owners;
    }
}