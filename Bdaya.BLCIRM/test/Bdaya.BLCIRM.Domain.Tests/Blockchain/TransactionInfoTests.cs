using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Bdaya.BLCIRM.State;
using Shouldly;
using Volo.Abp.Guids;
using Volo.Abp.Timing;
using Xunit;

namespace Bdaya.BLCIRM.Blockchain;

[Collection(name: BLCIRMTestConsts.CollectionDefinitionName)]
public sealed class TransactionInfoTests : BLCIRMDomainTestBase
{
    public TransactionInfoTests()
    {
        BlockRepository = GetRequiredService<IBlockRepository>();
        Clock = GetRequiredService<IClock>();
        GuidGenerator = GetRequiredService<IGuidGenerator>();
    }

    private IClock Clock { get; }
    private IBlockRepository BlockRepository { get; }
    private IGuidGenerator GuidGenerator { get; }

    [Fact]
    public async Task TestTransactionInfoSerialization()
    {
        Transaction DummyTransaction(TransactionInfo info)
        {
            return new Transaction(
                id: GuidGenerator.Create(),
                tenantId: GuidGenerator.Create(),
                info: info,
                calculatedHash: TransactionInfo.QuickHash(bytes: info.GetByteParts().ToArray())
            );
        }

        var b = new Block(
            blockHash: "initial",
            transactions: new List<Transaction>()
            {
                DummyTransaction(
                    info: new CreateAuthorTransactionInfo(
                        AuthorId: GuidGenerator.Create(),
                        Info: new PersonInfo(
                            name: "A",
                            countryCodeIso3166: default,
                            nationalId: default,
                            birthday: default,
                            metadata: new Dictionary<string, object?>()
                        )
                    )
                ),
                DummyTransaction(info: new RegisterDocumentTransactionInfo(DocumentId: GuidGenerator.Create(), InitialCount: 20, IsAvailableOnline: true))
            },
            previousBlockHash: null,
            creationTime: Clock.Now
        );
        b = await BlockRepository.InsertAsync(entity: b);
        var matching = await BlockRepository.GetLatestBlock();
        matching.ShouldNotBeNull();
        matching.Id.ShouldBe(expected: b.Id);
        matching.Transactions.Count.ShouldBe(expected: b.Transactions.Count);

        var registerDocument = matching.Transactions[index: 1].Info;
        var castedRegisterDocument = registerDocument.ShouldBeOfType<RegisterDocumentTransactionInfo>();
        castedRegisterDocument.InitialCount.ShouldBe(expected: 20);
        castedRegisterDocument.IsAvailableOnline.ShouldBe(expected: true);
    }
}