namespace Bdaya.BLCIRM.Migrations;

using Bdaya.Abp.MongoDBMigrator;
using Bdaya.BLCIRM.MongoDB;
using Bdaya.BLCIRM.State;
using global::MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.DependencyInjection;

public class V0_Initial
    : BdayaAbpMongoDBVersionedMigratorBase<BLCIRMMongoDbContext>,
        IScopedDependency
{
    public override int? BaseVersion { get; } = 0;
    public override string VersionName { get; } = "Initial";

    //public override async Task Up(BLCIRMMongoDbContext context, IClientSessionHandle session) { }
}
