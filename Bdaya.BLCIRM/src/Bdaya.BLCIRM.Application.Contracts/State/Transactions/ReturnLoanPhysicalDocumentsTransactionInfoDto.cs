namespace Bdaya.BLCIRM;

using Bdaya.BLCIRM.State;
using System;

public class ReturnLoanPhysicalDocumentsTransactionInfoDto : TransactionInfoDto
{
    public Guid LoanId { get; set; }
    public int PhysicalCopies { get; set; }
    public DateTime ReturnDate { get; set; }
}