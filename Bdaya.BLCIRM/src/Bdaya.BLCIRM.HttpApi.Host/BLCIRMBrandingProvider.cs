using Volo.Abp.DependencyInjection;
using Volo.Abp.Ui.Branding;

namespace Bdaya.BLCIRM;

[Dependency(ReplaceServices = true)]
public class BLCIRMBrandingProvider : DefaultBrandingProvider
{
    public override string AppName => "BLCIRM";
    public override string LogoReverseUrl =>
        "https://drive.google.com/uc?export=download&id=1Mhy5cEE0almWaQMfrLCH9fHve9GiM3m8";
    public override string LogoUrl =>
        "https://drive.google.com/uc?export=download&id=1md-GbzYziSE-8RdCQYSj4HWWlm3SCV1W";
}
