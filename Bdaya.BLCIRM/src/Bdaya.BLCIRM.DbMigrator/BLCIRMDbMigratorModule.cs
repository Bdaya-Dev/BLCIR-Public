using Bdaya.Abp.MongoDBMigrator;
using Bdaya.BLCIRM.Application.Mapping;
using Bdaya.BLCIRM.MeiliSearch;
using Bdaya.BLCIRM.MongoDB;
using Castle.Core.Configuration;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Volo.Abp.Autofac;
using Volo.Abp.Data;
using Volo.Abp.Modularity;
using Volo.Abp.Uow;

namespace Bdaya.BLCIRM.DbMigrator;

[DependsOn(
    dependedTypes: new[]
    {
        typeof(AbpAutofacModule),
        typeof(BLCIRMMongoDbModule),
        typeof(BLCIRMApplicationContractsModule)
    }
)]
[DependsOn(dependedTypes: typeof(BLCIRMApplicationMappingModule))]
public class BLCIRMDbMigratorModule : AbpModule
{
    public override void ConfigureServices(ServiceConfigurationContext context)
    {
        //var section = context.Services.GetConfiguration().GetSection("Migrations");
        //Configure<BdayaAbpMongoDBMigratorOptions>(section);

        Configure<BdayaAbpMongoDBMigratorOptions>(configureOptions: opt =>
        {
            opt.Behavior = BdayaAbpMongoDBMigratorBehaviors.Up;
        });

        Configure<AbpDataSeedOptions>(configureOptions: opt =>
        {
            var contrib = opt.Contributors;
            contrib.MoveToLast<MeilisearchSeedContributer>();
        });

        //Configure<AbpUnitOfWorkDefaultOptions>(options =>
        //{
        //    options.TransactionBehavior = UnitOfWorkTransactionBehavior.Auto;
        //});
    }
}
