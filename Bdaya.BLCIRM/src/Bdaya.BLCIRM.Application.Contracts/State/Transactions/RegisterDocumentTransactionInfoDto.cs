using System;
using Bdaya.BLCIRM.State;
using Volo.Abp.MultiTenancy;

namespace Bdaya.BLCIRM;

public class RegisterDocumentTransactionInfoDto : TransactionInfoDto
{
    public Guid DocumentId { get; set; }
    public int InitialCount { get; set; }
    public bool IsAvailableOnline { get; set; }
}