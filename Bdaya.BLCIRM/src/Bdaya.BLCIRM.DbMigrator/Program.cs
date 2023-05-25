using System.IO;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Serilog;
using Serilog.Events;

namespace Bdaya.BLCIRM.DbMigrator;

class Program
{
    static async Task Main(string[] args)
    {
        Log.Logger = new LoggerConfiguration().MinimumLevel
            .Information()
            .MinimumLevel.Override(source: "Microsoft", minimumLevel: LogEventLevel.Warning)
            .MinimumLevel.Override(source: "Volo.Abp", minimumLevel: LogEventLevel.Warning)
#if DEBUG
            .MinimumLevel.Override(source: "Bdaya.BLCIRM", minimumLevel: LogEventLevel.Debug)
#else
            .MinimumLevel.Override("Bdaya.BLCIRM", LogEventLevel.Information)
#endif
            .Enrich.FromLogContext()
            .WriteTo.Async(configure: c => c.File(path: "Logs/logs.txt"))
            .WriteTo.Async(configure: c => c.Console())
            .CreateLogger();

        await CreateHostBuilder(args: args).RunConsoleAsync();
    }

    public static IHostBuilder CreateHostBuilder(string[] args) =>
        Host.CreateDefaultBuilder(args: args)
            .AddAppSettingsSecretsJson()
            .ConfigureLogging(configureLogging: (context, logging) => logging.ClearProviders())
            .ConfigureServices(
                configureDelegate: (hostContext, services) =>
                {
                    services.AddHostedService<DbMigratorHostedService>();
                }
            );
}
