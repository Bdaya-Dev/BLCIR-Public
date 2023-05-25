using Bdaya.BLCIRM.Localization;
using Volo.Abp.AspNetCore.Mvc;

namespace Bdaya.BLCIRM.Controllers;

/* Inherit your controllers from this class.
 */
public abstract class BLCIRMController : AbpControllerBase
{
    protected BLCIRMController()
    {
        LocalizationResource = typeof(BLCIRMResource);
    }
}
