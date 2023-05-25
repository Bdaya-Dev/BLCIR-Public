namespace Bdaya.BLCIRM;

using Bdaya.BLCIRM.State;
using System;

public class UpdateAuthorTransactionInfoDto : TransactionInfoDto
{
    public Guid AuthorId { get; set; }
    public required PersonInfoDto Info { get; set; }
}

