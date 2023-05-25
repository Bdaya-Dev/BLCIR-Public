using Bdaya.Abp.MongoDBMigrator;
using MongoDB.Driver;
using Volo.Abp.Data;
using Volo.Abp.MongoDB;

namespace Bdaya.BLCIRM.MongoDB;

[ConnectionStringName(name: "Blockchain")]
public class BlockchainMongoDbContext : AbpMongoDbContext, IBdayaAbpMigratableMongoDbContext
{
    public string ContextId { get; } = "Blockchain";

    public IMongoCollection<BdayaAbpMongoDBMigrationHistoryEntry> MigrationHistory =>
        Collection<BdayaAbpMongoDBMigrationHistoryEntry>();

    public IMongoCollection<Block> Blocks => Collection<Block>();

    public IMongoCollection<TransactionProposal> PendingTransactions =>
        Collection<TransactionProposal>();

    protected override void CreateModel(IMongoModelBuilder modelBuilder)
    {
        modelBuilder.ConfigureMigrations();
        modelBuilder.Entity<Block>(buildAction: e =>
        {
            e.CollectionName = BLCIRMConsts.BlockchainDbTablePrefix + "Blocks";
        });
        modelBuilder.Entity<TransactionProposal>(buildAction: e =>
        {
            e.CollectionName = BLCIRMConsts.BlockchainDbTablePrefix + "Proposals";
        });
    }
}
