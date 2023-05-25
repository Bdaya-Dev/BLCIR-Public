using Volo.Abp.Http.Client;

namespace Bdaya.BLCIRM.MeiliSearch;

using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Volo.Abp.Modularity;

[DependsOn(dependedTypes: typeof(BLCIRMDomainModule))]
[DependsOn(dependedTypes: typeof(AbpHttpClientModule))]
public class BLCIRMMeiliSearchModule : AbpModule
{
    public override void ConfigureServices(ServiceConfigurationContext context)
    {
        var configuration = context.Services.GetConfiguration();
        var section = configuration.GetSection(key: "MeiliSearch");
        if (section.Exists())
        {
            Configure<MeiliSearchOptions>(configuration: section);
        }

        Configure<MeiliSearchIndexNames>(configureOptions: x =>
        {
            x.Documents = "Documents";
            x.Loans = "Loans";
            x.Tenants = "Tenants";
            x.People = "People";
        });
    }
}