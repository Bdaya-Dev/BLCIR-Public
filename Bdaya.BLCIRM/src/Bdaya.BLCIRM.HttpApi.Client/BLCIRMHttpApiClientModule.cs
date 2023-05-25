using Microsoft.Extensions.DependencyInjection;
using Volo.Abp.Account;
using Volo.Abp.FeatureManagement;
using Volo.Abp.Identity;
using Volo.Abp.Modularity;
using Volo.Abp.PermissionManagement;
using Volo.Abp.TenantManagement;
using Volo.Abp.SettingManagement;
using Volo.Abp.VirtualFileSystem;

namespace Bdaya.BLCIRM;

[DependsOn(
    dependedTypes: new[]
    {
        typeof(BLCIRMApplicationContractsModule),
        typeof(AbpAccountHttpApiClientModule),
        typeof(AbpIdentityHttpApiClientModule),
        typeof(AbpPermissionManagementHttpApiClientModule),
        typeof(AbpTenantManagementHttpApiClientModule),
        typeof(AbpFeatureManagementHttpApiClientModule),
        typeof(AbpSettingManagementHttpApiClientModule)
    }
)]
public class BLCIRMHttpApiClientModule : AbpModule
{
    public const string RemoteServiceName = "Default";

    public override void ConfigureServices(ServiceConfigurationContext context)
    {
        context.Services.AddHttpClientProxies(
            assembly: typeof(BLCIRMApplicationContractsModule).Assembly,
            remoteServiceConfigurationName: RemoteServiceName
        );

        Configure<AbpVirtualFileSystemOptions>(configureOptions: options =>
        {
            options.FileSets.AddEmbedded<BLCIRMHttpApiClientModule>();
        });
    }
}
