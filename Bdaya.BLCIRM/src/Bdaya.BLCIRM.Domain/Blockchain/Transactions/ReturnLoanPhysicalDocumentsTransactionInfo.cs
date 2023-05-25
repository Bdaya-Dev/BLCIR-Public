using System;
using System.Collections.Generic;

namespace Bdaya.BLCIRM;

public record ReturnLoanPhysicalDocumentsTransactionInfo(
    Guid LoanId,
    int PhysicalCopies,
    DateTime ReturnDate
) : TransactionInfo
{
    public override IEnumerable<object?> GetParts()
    {
        yield return LoanId;
        yield return PhysicalCopies;
        yield return ReturnDate;
    }
}