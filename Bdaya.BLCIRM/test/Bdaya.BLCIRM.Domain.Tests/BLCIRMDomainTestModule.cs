using Bdaya.BLCIRM.MongoDB;
using Volo.Abp.Modularity;

namespace Bdaya.BLCIRM;

[DependsOn(dependedTypes: typeof(BLCIRMMongoDbTestModule))]
public class BLCIRMDomainTestModule : AbpModule { }
