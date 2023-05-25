using System.Diagnostics.CodeAnalysis;

namespace Bdaya.BLCIRM;

using System;
using Volo.Abp.Domain.Entities.Auditing;
using Volo.Abp.MultiTenancy;

public class Transaction : CreationAuditedEntity<Guid>, IMultiTenant
{
    protected Transaction() { }

    [SetsRequiredMembers]
    public Transaction(Guid id, Guid? tenantId, TransactionInfo info, string calculatedHash)
        : base(id: id)
    {
        TenantId = tenantId;
        Info = info;
        CalculatedHash = calculatedHash;
    }

    public static Transaction FromProposal(TransactionProposal proposal)
    {
        return new Transaction(
            id: proposal.Id,
            tenantId: proposal.TenantId,
            info: proposal.Info,
            calculatedHash: proposal.CalculatedHash
        )
        {
            CreationTime = proposal.CreationTime,
            CreatorId = proposal.CreatorId
        };
    }

    /// <summary>
    /// transactions will always involve at least one party
    /// </summary>
    public Guid? TenantId { get; set; }

    public required TransactionInfo Info { get; set; }
    public required string CalculatedHash { get; set; }
}
