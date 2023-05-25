using System.Threading.Tasks;
using Volo.Abp.DependencyInjection;

namespace Bdaya.BLCIRM.Data;

/* This is used if database provider does't define
 * IBLCIRMDbSchemaMigrator implementation.
 */
public class NullBLCIRMDbSchemaMigrator : IBLCIRMDbSchemaMigrator, ITransientDependency
{
    public Task MigrateAsync()
    {
        return Task.CompletedTask;
    }
}
