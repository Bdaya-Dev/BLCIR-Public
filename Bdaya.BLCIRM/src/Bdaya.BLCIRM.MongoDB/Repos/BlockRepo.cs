using System;
using System.Threading.Tasks;
using Bdaya.BLCIRM.MongoDB;
using MongoDB.Driver;
using MongoDB.Driver.Linq;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Domain.Repositories.MongoDB;
using Volo.Abp.MongoDB;

namespace Bdaya.BLCIRM.Repos;

[ExposeServices(serviceTypes: typeof(IBlockRepository))]
public class BlockRepo : MongoDbRepository<BlockchainMongoDbContext, Block, string>, IBlockRepository
{
    public BlockRepo(IMongoDbContextProvider<BlockchainMongoDbContext> dbContextProvider)
        : base(dbContextProvider: dbContextProvider) { }

    /// <inheritdoc />
    public async Task<Block?> GetLatestBlock()
    {
        var q = await GetMongoQueryableAsync();
        q = q.OrderByDescending(keySelector: x => x.CreationTime);
        return await q.FirstOrDefaultAsync();
    }
}
