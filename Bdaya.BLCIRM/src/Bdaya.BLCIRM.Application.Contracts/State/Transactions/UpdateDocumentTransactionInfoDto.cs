using System;
using Bdaya.BLCIRM.State;

namespace Bdaya.BLCIRM;

public class UpdateDocumentTransactionInfoDto : TransactionInfoDto
{
    public Guid DocumentId { get; set; }
    public required DocumentInfoDto Info { get; set; }
}