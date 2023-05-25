namespace Bdaya.BLCIRM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Collections;
using Volo.Abp.Data;

public static class DataSeedContributerExt
{
    public static DataSeedContributorList MoveToLast<T>(this DataSeedContributorList list)
        where T : IDataSeedContributor
    {
        list.Remove<T>();
        list.Add<T>();
        return list;
    }
}
