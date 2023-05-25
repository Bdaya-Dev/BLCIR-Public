using Bdaya.BLCIRM.State;

namespace Bdaya.BLCIRM;

using Bdaya.BLCIRM.State;
using System;

public class DeletePersonTransactionInfoDto : TransactionInfoDto
{
    public Guid PersonId { get; set; }
    public required PersonInfoDto Info { get; set; }
}
