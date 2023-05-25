using Bdaya.BLCIRM.MongoDB;
using Xunit;

namespace Bdaya.BLCIRM;

[CollectionDefinition(name: BLCIRMTestConsts.CollectionDefinitionName)]
public class BLCIRMApplicationCollection : BLCIRMMongoDbCollectionFixtureBase { }
