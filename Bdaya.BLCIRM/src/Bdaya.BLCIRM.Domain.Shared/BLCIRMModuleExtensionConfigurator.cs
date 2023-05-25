using System.ComponentModel.DataAnnotations;
using Volo.Abp.Identity;
using Volo.Abp.ObjectExtending;
using Volo.Abp.TenantManagement;
using Volo.Abp.Threading;

namespace Bdaya.BLCIRM;

public static class BLCIRMModuleExtensionConfigurator
{
    private static readonly OneTimeRunner OneTimeRunner = new();

    public static void Configure()
    {
        OneTimeRunner.Run(action: () =>
        {
            ConfigureExistingProperties();
            ConfigureExtraProperties();
        });
    }

    private static void ConfigureExistingProperties()
    {
        /* You can change max lengths for properties of the
         * entities defined in the modules used by your application.
         *
         * Example: Change user and role name max lengths

           IdentityUserConsts.MaxNameLength = 99;
           IdentityRoleConsts.MaxNameLength = 99;

         * Notice: It is not suggested to change property lengths
         * unless you really need it. Go with the standard values wherever possible.
         *
         * If you are using EF Core, you will need to run the add-migration command after your changes.
         */
        TenantConsts.MaxNameLength = 300;
        IdentityUserConsts.MaxNameLength = 300;
        IdentityUserConsts.MaxUserNameLength = 300;
    }

    private static void ConfigureExtraProperties()
    {
        /* You can configure extra properties for the
         * entities defined in the modules used by your application.
         *
         * This class can be used to define these extra properties
         * with a high level, easy to use API.
         *
         * Example: Add a new property to the user entity of the identity module
         * See the documentation for more:
         * https://docs.abp.io/en/abp/latest/Module-Entity-Extensions
         */
    }
}
