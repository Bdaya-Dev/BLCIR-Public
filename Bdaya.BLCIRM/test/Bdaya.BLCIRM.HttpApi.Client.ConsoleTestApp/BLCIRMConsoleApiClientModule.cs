using System;
using Microsoft.Extensions.DependencyInjection;
using Polly;
using Volo.Abp.Autofac;
using Volo.Abp.Http.Client;
using Volo.Abp.Http.Client.IdentityModel;
using Volo.Abp.Modularity;

namespace Bdaya.BLCIRM.HttpApi.Client.ConsoleTestApp;

[DependsOn(
    dependedTypes: new[]
    {
        typeof(AbpAutofacModule),
        typeof(BLCIRMHttpApiClientModule),
        typeof(AbpHttpClientIdentityModelModule)
    }
)]
public class BLCIRMConsoleApiClientModule : AbpModule
{
    public override void PreConfigureServices(ServiceConfigurationContext context)
    {
        PreConfigure<AbpHttpClientBuilderOptions>(configureOptions: options =>
        {
            options.ProxyClientBuildActions.Add(
                item: (remoteServiceName, clientBuilder) =>
                {
                    clientBuilder.AddTransientHttpErrorPolicy(
                        configurePolicy: policyBuilder =>
                            policyBuilder.WaitAndRetryAsync(
                                retryCount: 3,
                                sleepDurationProvider: i => TimeSpan.FromSeconds(value: Math.Pow(x: 2, y: i))
                            )
                    );
                }
            );
        });
    }
}
