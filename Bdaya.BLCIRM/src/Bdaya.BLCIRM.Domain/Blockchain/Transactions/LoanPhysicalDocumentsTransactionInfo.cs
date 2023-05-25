using System.Collections.Generic;

namespace Bdaya.BLCIRM;

using System;

/// <param name="DocumentId"></param>
/// <param name="PersonId"></param>
/// <param name="PhysicalCopies"> Positive means library is loaning person, negative means person is returning document to library </param>
public record LoanPhysicalDocumentsTransactionInfo(
    Guid LoanId,
    Guid DocumentId,
    Guid PersonId,
    int PhysicalCopies,
    DateOnly? ReturnDate
) : TransactionInfo
{
    public override IEnumerable<object?> GetParts()
    {
        yield return LoanId;
        yield return DocumentId;
        yield return PersonId;
        yield return PhysicalCopies;
        yield return ReturnDate;
    }
}