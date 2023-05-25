namespace Bdaya.BLCIRM.Migrations;

using Bdaya.Abp.MongoDBMigrator;
using Bdaya.BLCIRM.MongoDB;
using Volo.Abp.DependencyInjection;

public class Blockchain_V0_Initial
    : BdayaAbpMongoDBVersionedMigratorBase<BlockchainMongoDbContext>,
        IScopedDependency
{
    public override int? BaseVersion { get; } = 0;
    public override string VersionName { get; } = "Initial";
}
