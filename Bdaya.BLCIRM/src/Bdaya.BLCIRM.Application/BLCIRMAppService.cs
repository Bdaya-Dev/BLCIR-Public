using System;
using System.Collections.Generic;
using System.Text;
using Bdaya.BLCIRM.Localization;
using Volo.Abp.Application.Services;

namespace Bdaya.BLCIRM;

/* Inherit your application services from this class.
 */
public abstract class BLCIRMAppService : ApplicationService
{
    protected BLCIRMAppService()
    {
        LocalizationResource = typeof(BLCIRMResource);
    }
}
