using Volo.Abp.Modularity;

namespace Bdaya.BLCIRM;

[DependsOn(dependedTypes: new[] { typeof(BLCIRMApplicationModule), typeof(BLCIRMDomainTestModule) })]
public class BLCIRMApplicationTestModule : AbpModule { }
