using System;
using Bdaya.BLCIRM.State;

namespace Bdaya.BLCIRM;

public class CreatePersonTransactionInfoDto : TransactionInfoDto
{
    public Guid PersonId { get; set; }
    public required PersonInfoDto Info { get; set; }
}