namespace Bdaya.BLCIRM.State;

using System;
using System.Collections.Generic;
using Volo.Abp.Domain.Entities.Auditing;

public class Document : FullAuditedAggregateRoot<Guid>
{
#pragma warning disable CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
    protected Document() { }
#pragma warning restore CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.

    public Document(Guid id, DocumentInfo info, HashSet<Guid> publisherOwners)
        : base(id: id)
    {
        Info = info;
        PublisherOwners = publisherOwners;
    }

    public DocumentInfo Info { get; set; }
    public HashSet<Guid> PublisherOwners { get; set; }
}
