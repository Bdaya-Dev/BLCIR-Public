using Microsoft.AspNetCore.Mvc;
using Volo.Abp.AspNetCore.Mvc;

namespace Bdaya.BLCIRM.Controllers;

public class HomeController : AbpController
{
    public ActionResult Index()
    {
        return Redirect(url: "~/swagger");
    }
}
