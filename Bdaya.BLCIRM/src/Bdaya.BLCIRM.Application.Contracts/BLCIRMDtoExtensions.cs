using System.ComponentModel.DataAnnotations;
using Volo.Abp.Identity;
using Volo.Abp.ObjectExtending;
using Volo.Abp.TenantManagement;
using Volo.Abp.Threading;

namespace Bdaya.BLCIRM;

public static class BLCIRMDtoExtensions
{
    private static readonly OneTimeRunner OneTimeRunner = new();

    public static void Configure()
    {
        OneTimeRunner.Run(action: () => {
            /* You can add extension properties to DTOs
             * defined in the depended modules.
             *
             * Example:
             *
             * ObjectExtensionManager.Instance
             *   .AddOrUpdateProperty<IdentityRoleDto, string>("Title");
             *
             * See the documentation for more:
             * https://docs.abp.io/en/abp/latest/Object-Extensions
             */
        });
    }
}
