using System;
using System.Threading.Tasks;
using MongoDB.Driver.Linq;
using Shouldly;
using Volo.Abp.Domain.Repositories;
using Volo.Abp.Identity;
using Volo.Abp.TenantManagement;
using Volo.Abp.TenantManagement.MongoDB;
using Xunit;
using System.Linq.Dynamic.Core;
using MongoDB.Driver;

namespace Bdaya.BLCIRM.MongoDB.Samples;

/* This is just an example test class.
 * Normally, you don't test ABP framework code
 * (like default AppUser repository IRepository<AppUser, Guid> here).
 * Only test your custom repository methods.
 */
[Collection(name: BLCIRMTestConsts.CollectionDefinitionName)]
public class SampleRepositoryTests : BLCIRMMongoDbTestBase
{
    private readonly IRepository<IdentityUser, Guid> _appUserRepository;
    private readonly ITenantRepository _tenantRepository;

    public SampleRepositoryTests()
    {
        _appUserRepository = GetRequiredService<IRepository<IdentityUser, Guid>>();
        _tenantRepository = GetRequiredService<ITenantRepository>();
    }

    [Fact]
    public async Task Should_Query_AppUser()
    {
        /* Need to manually start Unit Of Work because
         * FirstOrDefaultAsync should be executed while db connection / context is available.
         */
        await WithUnitOfWorkAsync(func: async () =>
        {
            //Act
            var adminUser = await (
                await _appUserRepository.GetMongoQueryableAsync()
            ).FirstOrDefaultAsync(predicate: u => u.UserName == "admin");

            //Assert
            adminUser.ShouldNotBeNull();
        });
    }

    [Fact]
    public async Task Test_Linq3()
    {
        await WithUnitOfWorkAsync(func: async () =>
        {
            //var tenantRep = _tenantRepository;
            //var queryable = await tenantRep.GetMongoQueryableAsync();

            //var ordered = queryable
            //    .OrderBy(ParsingConfig.Default, nameof(Tenant.Name))
            //    .As<IMongoQueryable<Tenant>>();
            //var res = await ordered.ToListAsync();
            //res.ShouldNotBeNull();
            //Act
            var tenants = await _tenantRepository.GetListAsync();

            //Assert
        });
    }
}
