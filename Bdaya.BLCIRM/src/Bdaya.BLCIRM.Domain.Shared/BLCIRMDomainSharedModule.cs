using Bdaya.BLCIRM.Localization;
using Volo.Abp.AuditLogging;
using Volo.Abp.BackgroundJobs;
using Volo.Abp.FeatureManagement;
using Volo.Abp.Identity;
using Volo.Abp.Localization;
using Volo.Abp.Localization.ExceptionHandling;
using Volo.Abp.Modularity;
using Volo.Abp.OpenIddict;
using Volo.Abp.PermissionManagement;
using Volo.Abp.SettingManagement;
using Volo.Abp.TenantManagement;
using Volo.Abp.Timing;
using Volo.Abp.Validation.Localization;
using Volo.Abp.VirtualFileSystem;

namespace Bdaya.BLCIRM;

[DependsOn(
    dependedTypes: new[]
    {
        typeof(AbpAuditLoggingDomainSharedModule),
        typeof(AbpBackgroundJobsDomainSharedModule),
        typeof(AbpFeatureManagementDomainSharedModule),
        typeof(AbpIdentityDomainSharedModule),
        typeof(AbpOpenIddictDomainSharedModule),
        typeof(AbpPermissionManagementDomainSharedModule),
        typeof(AbpSettingManagementDomainSharedModule),
        typeof(AbpTenantManagementDomainSharedModule)
    }
)]
public class BLCIRMDomainSharedModule : AbpModule
{
    public override void PreConfigureServices(ServiceConfigurationContext context)
    {
        BLCIRMGlobalFeatureConfigurator.Configure();
        BLCIRMModuleExtensionConfigurator.Configure();
    }

    public override void ConfigureServices(ServiceConfigurationContext context)
    {
        Configure<AbpVirtualFileSystemOptions>(configureOptions: options =>
        {
            options.FileSets.AddEmbedded<BLCIRMDomainSharedModule>();
        });

        Configure<AbpLocalizationOptions>(configureOptions: options =>
        {
            options.Resources
                .Add<BLCIRMResource>(defaultCultureName: "en")
                .AddBaseTypes(types: typeof(AbpValidationResource))
                .AddVirtualJson(virtualPath: "/Localization/BLCIRM");

            options.DefaultResourceType = typeof(BLCIRMResource);
        });

        Configure<AbpExceptionLocalizationOptions>(configureOptions: options =>
        {
            options.MapCodeNamespace(errorCodeNamespace: "BLCIRM", type: typeof(BLCIRMResource));
        });

        Configure<AbpClockOptions>(configureOptions: o =>
        {
            o.Kind = System.DateTimeKind.Utc;
        });
    }
}
