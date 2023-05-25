using System.Threading.Tasks;
using Volo.Abp.Domain.Repositories;

namespace Bdaya.BLCIRM;

public interface IBlockRepository : IRepository<Block, string>
{
    Task<Block?> GetLatestBlock();
}
