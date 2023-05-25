using System;
using System.Collections.Generic;

namespace Bdaya.BLCIRM;

public record DeleteDocumentTransactionInfo(Guid DocumentId) : TransactionInfo
{
    public override IEnumerable<object?> GetParts()
    {
        yield return DocumentId;
    }
}