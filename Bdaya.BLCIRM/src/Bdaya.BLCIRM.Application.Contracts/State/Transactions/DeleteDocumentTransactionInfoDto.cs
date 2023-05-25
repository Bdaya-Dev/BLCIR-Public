namespace Bdaya.BLCIRM;

using Bdaya.BLCIRM.State;
using System;
using System.Collections.Generic;
using System.Reflection.Metadata;

public class DeleteDocumentTransactionInfoDto : TransactionInfoDto
{
    public Guid DocumentId { get; set; }
}
