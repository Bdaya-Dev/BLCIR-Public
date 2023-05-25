namespace Bdaya.BLCIRM.State;
using System;
using System.Diagnostics.CodeAnalysis;
using Volo.Abp.Domain.Entities.Auditing;

public class Person : FullAuditedAggregateRoot<Guid>
{
#pragma warning disable CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
    protected Person() { }
#pragma warning restore CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.

    public Person(Guid id, PersonInfo info)
        : base(id: id)
    {
        Info = info;
    }

    public PersonInfo Info { get; set; }
}
