using System;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using MongoDB.Driver;
using Bdaya.BLCIRM.Data;
using Volo.Abp.Data;
using Volo.Abp.DependencyInjection;
using Volo.Abp.MongoDB;
using Bdaya.Abp.MongoDBMigrator;
using System.Collections.Generic;
using Microsoft.Extensions.Configuration;
using System.Linq;
using Microsoft.Extensions.Options;

namespace Bdaya.BLCIRM.MongoDB;

public class MongoDbBLCIRMDbSchemaMigrator : IBLCIRMDbSchemaMigrator, ITransientDependency
{
    private readonly IServiceProvider _serviceProvider;
    private readonly IBdayaAbpMongoDBDatabaseMigrator _mongoDBMigrator;

    public MongoDbBLCIRMDbSchemaMigrator(
        IServiceProvider serviceProvider,
        IBdayaAbpMongoDBDatabaseMigrator mongoDBMigrator
    )
    {
        _serviceProvider = serviceProvider;
        _mongoDBMigrator = mongoDBMigrator;
    }

    public async Task MigrateAsync()
    {
        var dbContexts = _serviceProvider.GetServices<IAbpMongoDbContext>();
        var connectionStringResolver =
            _serviceProvider.GetRequiredService<IConnectionStringResolver>();

        foreach (var dbContext in dbContexts)
        {
            var connectionString = await connectionStringResolver.ResolveAsync(
                connectionStringName: ConnectionStringNameAttribute.GetConnStringName(type: dbContext.GetType())
            );

            var mongoUrl = new MongoUrl(url: connectionString);
            var databaseName = mongoUrl.DatabaseName;
            var client = new MongoClient(url: mongoUrl);

            if (databaseName.IsNullOrWhiteSpace())
            {
                databaseName = ConnectionStringNameAttribute.GetConnStringName(type: dbContext.GetType());
            }
            var db = client.GetDatabase(name: databaseName);

            (dbContext as AbpMongoDbContext)?.InitializeCollections(database: db);
        }

        await _mongoDBMigrator.MigrateFromConfig(
            contexts: dbContexts.OfType<IBdayaAbpMigratableMongoDbContext>()
        );
    }
}
