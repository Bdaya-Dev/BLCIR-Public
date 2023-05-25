using Bdaya.BLCIRM.MeiliSearch;
using Volo.Abp.Account;
using Volo.Abp.FeatureManagement;
using Volo.Abp.Identity;
using Volo.Abp.Modularity;
using Volo.Abp.ObjectExtending;
using Volo.Abp.PermissionManagement;
using Volo.Abp.SettingManagement;
using Volo.Abp.TenantManagement;

namespace Bdaya.BLCIRM;

[DependsOn(
    dependedTypes: new[]
    {
        typeof(BLCIRMDomainSharedModule),
        typeof(AbpAccountApplicationContractsModule),
        typeof(AbpFeatureManagementApplicationContractsModule),
        typeof(AbpIdentityApplicationContractsModule),
        typeof(AbpPermissionManagementApplicationContractsModule),
        typeof(AbpSettingManagementApplicationContractsModule),
        typeof(AbpTenantManagementApplicationContractsModule),
        typeof(AbpObjectExtendingModule)
    }
)]
[DependsOn(dependedTypes: typeof(BLCIRMMeiliSearchModule))]
public class BLCIRMApplicationContractsModule : AbpModule
{
    public override void PreConfigureServices(ServiceConfigurationContext context)
    {
        BLCIRMDtoExtensions.Configure();
    }
}
