namespace Bdaya.BLCIRM;
using System.Threading.Tasks;
using Volo.Abp.TenantManagement;
using Volo.Abp.Authorization.Permissions;
using System.Linq;
using Volo.Abp.DependencyInjection;

public class GrantTenantListToAllUsersPermissionProvider
    : IPermissionValueProvider,
        ITransientDependency
{
    public string Name { get; } = "AppTenants";

    public Task<PermissionGrantResult> CheckAsync(PermissionValueCheckContext context)
    {
        return context.Permission.Name switch
        {
            TenantManagementPermissions.Tenants.Default
            or TenantManagementPermissions.Tenants.Create
                => Task.FromResult(result: PermissionGrantResult.Granted),
            _ => Task.FromResult(result: PermissionGrantResult.Undefined),
        };
    }

    public Task<MultiplePermissionGrantResult> CheckAsync(PermissionValuesCheckContext context)
    {
        var targets = context.Permissions.Where(
            predicate: x =>
                x.Name == TenantManagementPermissions.Tenants.Default
                || x.Name == TenantManagementPermissions.Tenants.Create
        );
        return Task.FromResult(
            result: new MultiplePermissionGrantResult(
                names: targets.Select(selector: x => x.Name).ToArray(),
                grantResult: PermissionGrantResult.Granted
            )
        );
    }
}
