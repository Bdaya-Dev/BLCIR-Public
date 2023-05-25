using System;
using Bdaya.BLCIRM.State;

namespace Bdaya.BLCIRM;

public class UpdateOwnEntryTransactionInfoDto : TransactionInfoDto
{
    public Guid DocumentId { get; set; }
    public int? NewAvailableCount { get; set; }
    public bool? IsAvailableOnline { get; set; }
}