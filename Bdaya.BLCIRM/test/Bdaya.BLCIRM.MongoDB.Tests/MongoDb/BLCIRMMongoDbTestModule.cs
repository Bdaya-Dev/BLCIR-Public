using System;
using Volo.Abp.Data;
using Volo.Abp.Modularity;
using Volo.Abp.Uow;

namespace Bdaya.BLCIRM.MongoDB;

[DependsOn(dependedTypes: new[] { typeof(BLCIRMTestBaseModule), typeof(BLCIRMMongoDbModule) })]
public class BLCIRMMongoDbTestModule : AbpModule
{
    public override void ConfigureServices(ServiceConfigurationContext context)
    {
        var stringArray = BLCIRMMongoDbFixture.ConnectionString.Split(separator: '?');
        var connectionString =
            stringArray[0].EnsureEndsWith(c: '/')
            + "Db_"
            + Guid.NewGuid().ToString(format: "N")
            + "/?"
            + stringArray[1];

        Configure<AbpDbConnectionOptions>(configureOptions: options =>
        {
            options.ConnectionStrings.Default = connectionString;
        });
        Configure<AbpUnitOfWorkDefaultOptions>(configureOptions: options =>
        {
            options.TransactionBehavior = UnitOfWorkTransactionBehavior.Disabled;
        });
    }
}
