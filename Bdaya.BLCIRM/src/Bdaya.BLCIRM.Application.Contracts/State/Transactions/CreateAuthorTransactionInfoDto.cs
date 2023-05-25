using System;
using Bdaya.BLCIRM.State;

namespace Bdaya.BLCIRM;

public class CreateAuthorTransactionInfoDto : TransactionInfoDto
{
    public Guid AuthorId { get; set; }
    public required PersonInfoDto Info { get; set; }
}