using Volo.Abp;

namespace Bdaya.BLCIRM;

using System;
using Volo.Abp.Domain.Entities.Auditing;
using Volo.Abp.MultiTenancy;

public class TransactionProposalVote : CreationAuditedEntity<Guid>, IMultiTenant
{
    protected TransactionProposalVote() { }

    private TransactionProposalVote(Guid id, Guid? tenantId, bool result, string? notes)
        : base(id: id)
    {
        TenantId = tenantId;
        Result = result;
        Notes = notes;
    }

    public static TransactionProposalVote Create(
        Guid id,
        Guid? tenantId,
        bool result,
        string? notes,
        Guid userId,
        DateTime creationTime
    )
    {
        var vote = new TransactionProposalVote(id: id, tenantId: tenantId, result: result, notes: notes);
        ObjectHelper.TrySetProperty(obj: vote, propertySelector: x => x.CreationTime, valueFactory: () => creationTime);
        ObjectHelper.TrySetProperty(obj: vote, propertySelector: x => x.CreatorId, valueFactory: () => userId);
        return vote;
    }

    public Guid? TenantId { get; set; }
    public bool Result { get; set; }
    public string? Notes { get; set; }
}
