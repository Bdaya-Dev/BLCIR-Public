using System;
using System.Threading.Tasks;
using Bdaya.BLCIRM;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Serilog;
using Serilog.Events;

Log.Logger = new LoggerConfiguration()
#if DEBUG
.MinimumLevel
    .Debug()
#else
.MinimumLevel
    .Information()
#endif
    .MinimumLevel.Override(source: "Microsoft", minimumLevel: LogEventLevel.Information)
    .MinimumLevel.Override(source: "Microsoft.EntityFrameworkCore", minimumLevel: LogEventLevel.Warning)
    .Enrich.FromLogContext()
    .WriteTo.Async(configure: c => c.File(path: "Logs/logs.txt"))
    .WriteTo.Async(configure: c => c.Console())
    .CreateLogger();

try
{
    var portEnv = Environment.GetEnvironmentVariable(variable: "PORT");

    Log.Information(messageTemplate: "Starting Bdaya.BLCIRM.HttpApi.Host.");
    var builder = WebApplication.CreateBuilder(args: args);
    if (!string.IsNullOrWhiteSpace(value: portEnv))
    {
        builder.WebHost.ConfigureKestrel(options: o =>
        {
            o.ListenAnyIP(port: int.Parse(s: portEnv));
        });
    }
    builder.Host.AddAppSettingsSecretsJson().UseAutofac().UseSerilog();
    await builder.AddApplicationAsync<BLCIRMHttpApiHostModule>();
    var app = builder.Build();
    await app.InitializeApplicationAsync();
    await app.RunAsync();
    return 0;
}
catch (Exception ex)
{
    Log.Fatal(exception: ex, messageTemplate: "Host terminated unexpectedly!");
    return 1;
}
finally
{
    Log.CloseAndFlush();
}
