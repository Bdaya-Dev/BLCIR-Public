namespace Bdaya.BLCIRM.Repos;

using Bdaya.BLCIRM.MongoDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Domain.Repositories.MongoDB;
using Volo.Abp.MongoDB;

[ExposeServices(serviceTypes: typeof(IAppTenantRepository))]
public class TenantRepo
    : MongoDbRepository<BLCIRMMongoDbContext, BaseAppTenant, Guid>,
        IAppTenantRepository
{
    public TenantRepo(IMongoDbContextProvider<BLCIRMMongoDbContext> dbContextProvider)
        : base(dbContextProvider: dbContextProvider) { }

    
}