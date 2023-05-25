namespace Bdaya.BLCIRM.Tenants;

using Bdaya.BLCIRM.Tenants;
using System;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Volo.Abp.Application.Dtos;
using Volo.Abp.Application.Services;

public interface IAppTenantAppService
    : ICrudAppService<
        AppTenantDto,
        AppTenantDto,
        Guid,
        PagedAndSortedResultRequestDto,
        CreateAppTenantDto,
        UpdateAppTenantDto
    >
{
    //Task<PagedResultDto<AppTenantDto>> GetMeiliSearchListAsync(GetAppTenantsListDto input);
}
