namespace Bdaya.BLCIRM.State;
using System;
using Volo.Abp.Application.Dtos;

public class GetLoansRelatedToDocumentDto : PagedAndSortedResultRequestDto
{
    public Guid DocumentId { get; set; }
}
