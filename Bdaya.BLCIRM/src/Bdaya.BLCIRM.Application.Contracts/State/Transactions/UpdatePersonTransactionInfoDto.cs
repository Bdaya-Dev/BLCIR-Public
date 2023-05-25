using System;
using Bdaya.BLCIRM.State;

namespace Bdaya.BLCIRM;

public class UpdatePersonTransactionInfoDto : TransactionInfoDto
{
    public Guid PersonId { get; set; }
    public required PersonInfoDto Info { get; set; }
}