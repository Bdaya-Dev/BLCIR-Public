namespace Bdaya.BLCIRM.State;

using System;
using Volo.Abp.Domain.Entities.Auditing;

public class Author : Person
{
    public Author(Guid id, PersonInfo info)
        : base(id: id, info: info) { }

    protected Author()
        : base() { }
}
