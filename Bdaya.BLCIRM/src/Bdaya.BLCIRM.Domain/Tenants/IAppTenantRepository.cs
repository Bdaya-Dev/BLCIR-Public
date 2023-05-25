namespace Bdaya.BLCIRM;
using System;
using Volo.Abp.Domain.Repositories;

public interface IAppTenantRepository : IRepository<BaseAppTenant, Guid> { }
