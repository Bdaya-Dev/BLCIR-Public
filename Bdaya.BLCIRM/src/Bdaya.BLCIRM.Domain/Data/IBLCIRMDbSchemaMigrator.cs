using System.Threading.Tasks;

namespace Bdaya.BLCIRM.Data;

public interface IBLCIRMDbSchemaMigrator
{
    Task MigrateAsync();
}
