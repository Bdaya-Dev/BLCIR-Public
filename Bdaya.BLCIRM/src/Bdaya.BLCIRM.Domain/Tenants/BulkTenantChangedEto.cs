namespace Bdaya.BLCIRM;

using System;
using System.Collections.Generic;

public enum BulkEventType
{
    InsertMany,
    UpdateMany,
    DeleteMany
}
//public class BulkTenantChangedEto
//{
//    public BulkEventType Type { get; set; }
//    public BaseAppTenant[] Tenants { get; protected set; }

//    public BulkTenantChangedEto(BaseAppTenant[] tenants, BulkEventType type)
//    {
//        Tenants = tenants;
//        Type = type;
//    }
//}
