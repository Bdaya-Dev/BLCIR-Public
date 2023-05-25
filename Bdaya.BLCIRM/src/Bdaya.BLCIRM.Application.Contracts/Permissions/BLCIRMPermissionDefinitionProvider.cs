using Bdaya.BLCIRM.Localization;
using Volo.Abp.Authorization.Permissions;
using Volo.Abp.Localization;
using Volo.Abp.MultiTenancy;
using Volo.Abp.TenantManagement;

namespace Bdaya.BLCIRM.Permissions;

public class BLCIRMPermissionDefinitionProvider : PermissionDefinitionProvider
{
    public override void Define(IPermissionDefinitionContext context)
    {
        var myGroup = context.AddGroup(name: BLCIRMPermissions.GroupName);
        //Meilisearch
        myGroup.AddPermission(name: BLCIRMPermissions.MeiliSearch, displayName: L(name: "Permission:MeiliSearch"));
        //Tenants
        var originalTenants = context.GetGroup(name: TenantManagementPermissions.GroupName);
        originalTenants.AddPermission(
            name: BLCIRMPermissions.Tenants.ApproveTenants,
            displayName: L(name: "Permission:ApproveTenants")
        );
        //documents
        var docsP = myGroup.AddPermission(
            name: BLCIRMPermissions.Documents.Default,
            displayName: L(name: "Permission:Documents"),
            multiTenancySide: MultiTenancySides.Tenant
        );
        docsP.AddChild(name: BLCIRMPermissions.Documents.Create, displayName: L(name: "Permission:Documents.Create"));
        docsP.AddChild(name: BLCIRMPermissions.Documents.Update, displayName: L(name: "Permission:Documents.Update"));
        docsP.AddChild(name: BLCIRMPermissions.Documents.Delete, displayName: L(name: "Permission:Documents.Delete"));
        docsP.AddChild(
            name: BLCIRMPermissions.Documents.BulkImport,
            displayName: L(name: "Permission:Documents.BulkImport"),
            multiTenancySide: Volo.Abp.MultiTenancy.MultiTenancySides.Host
        );

        //voting
        myGroup.AddPermission(
            name: BLCIRMPermissions.Voting.Default,
            displayName: L(name: "Permission:Voting"),
            multiTenancySide: MultiTenancySides.Tenant
        );
    }

    private static LocalizableString L(string name)
    {
        return LocalizableString.Create<BLCIRMResource>(name: name);
    }
}
