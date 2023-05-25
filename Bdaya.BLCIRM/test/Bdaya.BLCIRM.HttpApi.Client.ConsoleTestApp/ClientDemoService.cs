using System;
using System.Threading.Tasks;
using Volo.Abp.Account;
using Volo.Abp.DependencyInjection;

namespace Bdaya.BLCIRM.HttpApi.Client.ConsoleTestApp;

public class ClientDemoService : ITransientDependency
{
    private readonly IProfileAppService _profileAppService;

    public ClientDemoService(IProfileAppService profileAppService)
    {
        _profileAppService = profileAppService;
    }

    public async Task RunAsync()
    {
        var output = await _profileAppService.GetAsync();
        Console.WriteLine(value: $"UserName : {output.UserName}");
        Console.WriteLine(value: $"Email    : {output.Email}");
        Console.WriteLine(value: $"Name     : {output.Name}");
        Console.WriteLine(value: $"Surname  : {output.Surname}");
    }
}
