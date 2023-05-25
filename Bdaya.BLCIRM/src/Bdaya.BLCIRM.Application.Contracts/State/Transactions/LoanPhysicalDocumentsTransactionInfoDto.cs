using System;
using Bdaya.BLCIRM.State;

namespace Bdaya.BLCIRM;

/// <param name="DocumentId"></param>
/// <param name="PersonId"></param>
/// <param name="PhysicalCopies"> Positive means library is loaning person, negative means person is returning document to library </param>
public class LoanPhysicalDocumentsTransactionInfoDto : TransactionInfoDto
{
    public Guid LoanId { get; set; }
    public Guid DocumentId { get; set; }
    public Guid PersonId { get; set; }
    public int PhysicalCopies { get; set; }
    public DateTime? ReturnDate { get; set; }
}