using JetBrains.Annotations;

namespace Bdaya.BLCIRM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Auditing;
using Volo.Abp.Domain.Entities;

public class Block : AggregateRoot<string>, IHasCreationTime
{
#pragma warning disable CS8618
    [UsedImplicitly]
    protected Block() { }
#pragma warning restore CS8618

    public Block(
        string blockHash,
        List<Transaction> transactions,
        string? previousBlockHash,
        DateTime creationTime
    )
        : base(id: blockHash)
    {
        Transactions = transactions;
        PreviousBlockHash = previousBlockHash;
        CreationTime = creationTime;
    }

    public List<Transaction> Transactions { get; set; }
    public string? PreviousBlockHash { get; set; }
    public DateTime CreationTime { get; set; }
}
