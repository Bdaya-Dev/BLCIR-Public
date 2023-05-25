using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

namespace Bdaya.BLCIRM.HttpApi.Client.ConsoleTestApp;

class Program
{
    static async Task Main(string[] args)
    {
        await CreateHostBuilder(args: args).RunConsoleAsync();
    }

    public static IHostBuilder CreateHostBuilder(string[] args) =>
        Host.CreateDefaultBuilder(args: args)
            .AddAppSettingsSecretsJson()
            .ConfigureServices(
                configureDelegate: (hostContext, services) =>
                {
                    services.AddHostedService<ConsoleTestAppHostedService>();
                }
            );
}
