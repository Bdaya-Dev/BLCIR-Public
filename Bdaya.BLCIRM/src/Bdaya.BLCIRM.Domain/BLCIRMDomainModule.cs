using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyInjection.Extensions;
using Bdaya.BLCIRM.MultiTenancy;
using Volo.Abp.AuditLogging;
using Volo.Abp.BackgroundJobs;
using Volo.Abp.Emailing;
using Volo.Abp.FeatureManagement;
using Volo.Abp.Identity;
using Volo.Abp.Localization;
using Volo.Abp.Modularity;
using Volo.Abp.MultiTenancy;
using Volo.Abp.OpenIddict;
using Volo.Abp.PermissionManagement.Identity;
using Volo.Abp.PermissionManagement.OpenIddict;
using Volo.Abp.SettingManagement;
using Volo.Abp.TenantManagement;
using Volo.Abp.Data;
using Bdaya.BLCIRM.OpenIddict;
using Bdaya.BLCIRM.Seed;

namespace Bdaya.BLCIRM;

[DependsOn(
    dependedTypes: new[]
    {
        typeof(BLCIRMDomainSharedModule),
        typeof(AbpAuditLoggingDomainModule),
        typeof(AbpBackgroundJobsDomainModule),
        typeof(AbpFeatureManagementDomainModule),
        typeof(AbpIdentityDomainModule),
        typeof(AbpOpenIddictDomainModule),
        typeof(AbpPermissionManagementDomainOpenIddictModule),
        typeof(AbpPermissionManagementDomainIdentityModule),
        typeof(AbpSettingManagementDomainModule),
        typeof(AbpTenantManagementDomainModule),
        typeof(AbpEmailingModule)
    }
)]
public class BLCIRMDomainModule : AbpModule
{
    public override void ConfigureServices(ServiceConfigurationContext context)
    {
        Configure<AbpDataSeedOptions>(configureOptions: opt =>
        {
            var contrib = opt.Contributors;
            contrib.MoveToLast<OpenIddictDataSeedContributor>();
            contrib.MoveToLast<AppDataSeedContributor>();
            contrib.MoveToLast<DocumentsSeedContributor>();
            contrib.MoveToLast<LibrariesSeedContributor>();
            contrib.MoveToLast<EnsureProperAllowedBySeedResult>();
        });

        Configure<AbpLocalizationOptions>(configureOptions: options =>
        {
            options.Languages.Add(item: new LanguageInfo(cultureName: "ar", uiCultureName: "ar", displayName: "العربية", flagIcon: "ae"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "cs", uiCultureName: "cs", displayName: "Čeština"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "en", uiCultureName: "en", displayName: "English", flagIcon: "gb"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "en-GB", uiCultureName: "en-GB", displayName: "English (UK)"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "hu", uiCultureName: "hu", displayName: "Magyar"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "fi", uiCultureName: "fi", displayName: "Finnish", flagIcon: "fi"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "fr", uiCultureName: "fr", displayName: "Français", flagIcon: "fr"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "hi", uiCultureName: "hi", displayName: "Hindi", flagIcon: "in"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "it", uiCultureName: "it", displayName: "Italiano", flagIcon: "it"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "pt-BR", uiCultureName: "pt-BR", displayName: "Português"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "ru", uiCultureName: "ru", displayName: "Русский", flagIcon: "ru"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "sk", uiCultureName: "sk", displayName: "Slovak", flagIcon: "sk"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "tr", uiCultureName: "tr", displayName: "Türkçe", flagIcon: "tr"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "zh-Hans", uiCultureName: "zh-Hans", displayName: "简体中文"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "zh-Hant", uiCultureName: "zh-Hant", displayName: "繁體中文"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "de-DE", uiCultureName: "de-DE", displayName: "Deutsch", flagIcon: "de"));
            options.Languages.Add(item: new LanguageInfo(cultureName: "es", uiCultureName: "es", displayName: "Español"));
        });

        Configure<AbpMultiTenancyOptions>(configureOptions: options =>
        {
            options.IsEnabled = MultiTenancyConsts.IsEnabled;
        });

#if DEBUG
        context.Services.Replace(descriptor: ServiceDescriptor.Singleton<IEmailSender, NullEmailSender>());
#endif
    }
}
