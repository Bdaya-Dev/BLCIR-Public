namespace Bdaya.BLCIRM.Permissions;

using Volo.Abp.TenantManagement;

public static class BLCIRMPermissions
{
    public const string GroupName = "BLCIRM";

    //Add your own permission names. Example:
    public static class Tenants
    {
        public const string ApproveTenants =
            TenantManagementPermissions.Tenants.Default + ".ApproveTenants";
    }

    public static class Documents
    {
        public const string Default = GroupName + ".Documents";
        public const string Create = Default + ".Create";
        public const string Update = Default + ".Update";
        public const string Delete = Default + ".Delete";

        public const string BulkImport = Default + ".BulkImport";
    }
    public static class Voting
    {
        public const string Default = GroupName + ".Voting";
    }

    public const string MeiliSearch = GroupName + ".MeiliSearch";
}
