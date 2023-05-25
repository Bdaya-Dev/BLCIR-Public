namespace Bdaya.BLCIRM.State;
using System;

public class CreateLoanDto
{
    public Guid DocumentId { get; set; }
    public Guid PersonId { get; set; }
    public int PhysicalCopies { get; set; }
    public DateTime? ReturnDate { get; set; }
}