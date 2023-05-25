using System;
using Bdaya.BLCIRM.State;

namespace Bdaya.BLCIRM;

public class CreateDocumentTransactionInfoDto : TransactionInfoDto
{
    public Guid DocumentId { get; set; }
    public required DocumentInfoDto Info { get; set; }
}