using System;
using System.Collections.Generic;
using Bdaya.BLCIRM.State;

namespace Bdaya.BLCIRM;

public record UpdateDocumentTransactionInfo(Guid DocumentId, DocumentInfo Info) : TransactionInfo
{
    public override IEnumerable<object?> GetParts()
    {
        yield return DocumentId;
        yield return Info;
    }
}