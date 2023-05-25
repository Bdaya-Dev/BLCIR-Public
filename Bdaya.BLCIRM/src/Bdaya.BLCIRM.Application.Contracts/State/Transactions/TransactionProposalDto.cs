namespace Bdaya.BLCIRM.State;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Domain.Entities.Auditing;

public class TransactionProposalDto : AuditedEntityDto<Guid>
{
    public Guid? TenantId { get; set; }
    public required TransactionInfoDto Info { get; set; }
    public required string CalculatedHash { get; set; }
    public required List<TransactionProposalVoteDto> Votes { get; set; }
    
    public bool? CompletionResult { get; set; }
    public DateTime? CompletedAt { get; set; }
}