using Microsoft.Extensions.DependencyInjection;
using Volo.Abp;
using Volo.Abp.Authorization;
using Volo.Abp.Autofac;
using Volo.Abp.BackgroundJobs;
using Volo.Abp.Data;
using Volo.Abp.Modularity;
using Volo.Abp.Threading;

namespace Bdaya.BLCIRM;

[DependsOn(
    dependedTypes: new[]
    {
        typeof(AbpAutofacModule),
        typeof(AbpTestBaseModule),
        typeof(AbpAuthorizationModule),
        typeof(BLCIRMDomainModule)
    }
)]
public class BLCIRMTestBaseModule : AbpModule
{
    public override void PreConfigureServices(ServiceConfigurationContext context) { }

    public override void ConfigureServices(ServiceConfigurationContext context)
    {
        Configure<AbpBackgroundJobOptions>(configureOptions: options =>
        {
            options.IsJobExecutionEnabled = false;
        });

        context.Services.AddAlwaysAllowAuthorization();

        Configure<AbpDataSeedOptions>(configureOptions: options =>
        {
            options.Contributors.MoveToLast<BLCIRMTestDataSeedContributor>();
        });
    }

    public override void OnApplicationInitialization(ApplicationInitializationContext context)
    {
        SeedTestData(context: context);
    }

    private static void SeedTestData(ApplicationInitializationContext context)
    {
        AsyncHelper.RunSync(action: async () =>
        {
            using var scope = context.ServiceProvider.CreateScope();
            await scope.ServiceProvider.GetRequiredService<IDataSeeder>().SeedAsync();
        });
    }
}
