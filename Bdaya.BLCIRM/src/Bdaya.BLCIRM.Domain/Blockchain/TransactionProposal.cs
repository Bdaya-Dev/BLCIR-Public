using System.Linq;
using Volo.Abp;

namespace Bdaya.BLCIRM;

using System;
using System.Collections.Generic;
using Volo.Abp.Domain.Entities.Auditing;
using Volo.Abp.MultiTenancy;

public class TransactionProposal : AuditedAggregateRoot<Guid>, IMultiTenant
{
    // ReSharper disable once UnusedMember.Global
#pragma warning disable CS8618
    protected TransactionProposal()
#pragma warning restore CS8618
    {
    }

    public TransactionProposal(Guid id, Guid? tenantId, TransactionInfo info) : base(id: id)
    {
        TenantId = tenantId;
        Info = info;
        CalculatedHash = TransactionInfo.QuickHash(bytes: info.GetByteParts().ToArray());
        Votes = new List<TransactionProposalVote>();
    }

    public Guid? TenantId { get; set; }
    public TransactionInfo Info { get; set; }
    public string CalculatedHash { get; set; }
    public List<TransactionProposalVote> Votes { get; set; }
    public bool? CompletionResult { get; set; }
    public DateTime? CompletedAt { get; set; }

    public TransactionProposalVote AddVote(Guid id, Guid tenantId, bool result, string? notes, Guid userId,
        DateTime now)
    {
        var prev = Votes.FirstOrDefault(predicate: x => x.TenantId == tenantId);
        if (prev != null)
        {
            return prev;
        }

        prev = TransactionProposalVote.Create(id: id, tenantId: tenantId, result: result, notes: notes, userId: userId, creationTime: now);
        Votes.Add(item: prev);
        return prev;
    }
}