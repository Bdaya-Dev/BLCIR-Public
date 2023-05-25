namespace Bdaya.BLCIRM.Application.Mapping;

using Bdaya.BLCIRM.MeiliSearch;
using Volo.Abp.Authorization.Permissions;
using Volo.Abp.AutoMapper;
using Volo.Abp.Modularity;

[DependsOn(dependedTypes: typeof(BLCIRMDomainModule))]
[DependsOn(dependedTypes: typeof(BLCIRMApplicationContractsModule))]
public class BLCIRMApplicationMappingModule : AbpModule
{
    public override void ConfigureServices(ServiceConfigurationContext context)
    {
        Configure<AbpAutoMapperOptions>(configureOptions: options =>
        {
            options.AddMaps<BLCIRMApplicationMappingModule>(validate: true);
        });

        Configure<MeiliSearchSystemTextJsonOptions>(configureOptions: options =>
        {
            options.Options = new System.Text.Json.JsonSerializerOptions(
                defaults: System.Text.Json.JsonSerializerDefaults.Web
            )
            {
                PropertyNamingPolicy = null,
                DefaultIgnoreCondition = System
                    .Text
                    .Json
                    .Serialization
                    .JsonIgnoreCondition
                    .WhenWritingNull
            };
            //options.Options.Converters.Add(new UnixEpochTimeConverter());
        });
    }
}
