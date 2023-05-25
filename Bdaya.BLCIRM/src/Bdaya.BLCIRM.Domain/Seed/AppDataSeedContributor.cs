using System;
using System.Threading.Tasks;
using Volo.Abp.Data;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Domain.Repositories;
using Volo.Abp.Guids;
using Volo.Abp.Identity;
using Volo.Abp.TenantManagement;
using Volo.Abp.Timing;
using Volo.Abp.Uow;

namespace Bdaya.BLCIRM;

public class AppDataSeedContributor : IDataSeedContributor, ITransientDependency
{
    private readonly ITenantRepository _tenantRepository;
    private readonly ITenantManager _tenantManager;
    private readonly IClock _clock;
    private readonly IRepository<BaseAppTenant, Guid> _repository;
    private readonly IIdentityUserRepository _identityUserRepository;

    public AppDataSeedContributor(
        IClock clock,
        ITenantManager tenantManager,
        ITenantRepository tenantRepository,
        IIdentityUserRepository identityUserRepository,
        IRepository<BaseAppTenant, Guid> repository
    )
    {
        _clock = clock;
        _tenantManager = tenantManager;
        _tenantRepository = tenantRepository;
        _identityUserRepository = identityUserRepository;
        _repository = repository;
    }

    [UnitOfWork]
    public async Task SeedAsync(DataSeedContext context)
    {
        if (context.TenantId.HasValue)
        {
            return;
        }
        //ensure admin user is created for host

        var adminUser = await _identityUserRepository.FindByTenantIdAndUserNameAsync(
            tenantId: null,
            userName: "admin"
        );
        var tenantName = "BLCIRM";
        var now = _clock.Now;
        var tenant = await _tenantRepository.FindByNameAsync(name: tenantName);
        if (tenant == null)
        {
            tenant = await _tenantManager.CreateAsync(name: tenantName);
            tenant = await _tenantRepository.InsertAsync(entity: tenant);
        }
        var matchingAppTenant = await _repository.FindAsync(id: tenant.Id);
        if (matchingAppTenant != null)
        {
            return;
        }
        matchingAppTenant = new TrustedTenant(
            id: tenant.Id,
            info: new AppTenantInfo(
                Address: null,
                Phone: "+201006459165",
                Logo: null,
                Website: "https://bdaya-blcirm.web.app",
                Email: "blcirm@bdaya-dev.com",
                CreationTime: now
            ),
            allowedBy: new AllowedByInfo(
                TenantId: null,
                CreatorId: adminUser.Id,
                CreationTime: now,
                Result: null,
                Reason: null
            )
        );
        matchingAppTenant = await _repository.InsertAsync(entity: matchingAppTenant);
    }
}
