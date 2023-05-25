using System;
using System.Linq;
using System.Threading.Tasks;
using Volo.Abp.Data;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Domain.Repositories;

namespace Bdaya.BLCIRM;

//using Bogus;
public class EnsureProperAllowedBySeedResult : IDataSeedContributor, ITransientDependency
{
    public IRepository<BaseAppTenant, Guid> AppTenantRpeo { get; }

    public EnsureProperAllowedBySeedResult(IRepository<BaseAppTenant, Guid> appTenantRpeo)
    {
        AppTenantRpeo = appTenantRpeo;
    }

    public async Task SeedAsync(DataSeedContext context)
    {
        //Run only for tenants
        if (context.TenantId.HasValue)
        {
            return;
        }

        var appTenants = await AppTenantRpeo.GetListAsync(
            predicate: x => x.AllowedBy != null && x.AllowedBy.Result == null
        );
        foreach (var appTenant in appTenants)
        {
            appTenant.AllowedBy = appTenant.AllowedBy! with
            {
                Result = true,
                Reason = "Seeded by system"
            };
        }
        if (appTenants.Any())
        {
            await AppTenantRpeo.UpdateManyAsync(entities: appTenants);
        }
    }
}
