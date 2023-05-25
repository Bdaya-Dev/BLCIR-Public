using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Logging.Abstractions;
using Microsoft.Extensions.Options;
using Volo.Abp.Data;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Identity;
using Volo.Abp.MultiTenancy;
using Volo.Abp.TenantManagement;
using Volo.Abp.Uow;
using static System.Net.WebRequestMethods;

namespace Bdaya.BLCIRM.Data;

public class BLCIRMDbMigrationService : ITransientDependency
{
    public ILogger<BLCIRMDbMigrationService> Logger { get; set; }

    private readonly IDataSeeder _dataSeeder;
    private readonly IEnumerable<IBLCIRMDbSchemaMigrator> _dbSchemaMigrators;
    private readonly ITenantRepository _tenantRepository;
    private readonly ICurrentTenant _currentTenant;

    public BLCIRMDbMigrationService(
        IDataSeeder dataSeeder,
        IEnumerable<IBLCIRMDbSchemaMigrator> dbSchemaMigrators,
        ITenantRepository tenantRepository,
        ICurrentTenant currentTenant
    )
    {
        _dataSeeder = dataSeeder;
        _dbSchemaMigrators = dbSchemaMigrators;
        _tenantRepository = tenantRepository;
        _currentTenant = currentTenant;

        Logger = NullLogger<BLCIRMDbMigrationService>.Instance;
    }

    public async Task MigrateAsync()
    {
        Logger.LogInformation(message: "Started database migrations...");

        await MigrateDatabaseSchemaAsync();
        await SeedDataAsync();

        Logger.LogInformation(message: $"Successfully completed host database migrations.");

        //Temp disable tenant seeding
        var tenants = await _tenantRepository.GetListAsync(includeDetails: true);

        var migratedDatabaseSchemas = new HashSet<string>();
        int concurrencyLimit = 50;

        foreach (var tenantsPart in tenants.Chunk(size: concurrencyLimit))
        {
            var tasks = tenantsPart.Select(
                selector: (tenant) =>
                    Task.Run(function: async () =>
                    {
                        using (_currentTenant.Change(id: tenant.Id))
                        {
                            if (tenant.ConnectionStrings.Any())
                            {
                                var tenantConnectionStrings = tenant.ConnectionStrings
                                    .Select(selector: x => x.Value)
                                    .ToList();

                                if (!migratedDatabaseSchemas.IsSupersetOf(other: tenantConnectionStrings))
                                {
                                    await MigrateDatabaseSchemaAsync(tenant: tenant);

                                    migratedDatabaseSchemas.AddIfNotContains(
                                        items: tenantConnectionStrings
                                    );
                                }
                            }

                            await SeedDataAsync(tenant: tenant);
                        }

                        Logger.LogInformation(
                            message: "Successfully completed {tenantName} tenant database migrations.",
                            args: tenant.Name
                        );
                    })
            );
            await Task.WhenAll(tasks: tasks.ToArray());
        }

        Logger.LogInformation(message: "Successfully completed all database migrations.");
        Logger.LogInformation(message: "You can safely end this process...");
    }

    private async Task MigrateDatabaseSchemaAsync(Tenant? tenant = null)
    {
        Logger.LogInformation(
            message: "Migrating schema for {sideName} database...",
            args: tenant == null ? "host" : tenant.Name + " tenant"
        );

        foreach (var migrator in _dbSchemaMigrators)
        {
            await migrator.MigrateAsync();
        }
    }

    private async Task SeedDataAsync(Tenant? tenant = null)
    {
        Logger.LogInformation(
            message: "Executing {tenantName} database seed...",
            args: tenant == null ? "host" : tenant.Name + " tenant"
        );
        var context = new DataSeedContext(tenantId: tenant?.Id)
            .WithProperty(
                key: IdentityDataSeedContributor.AdminEmailPropertyName,
                value: "blcirm@bdaya-dev.com"
            )
            .WithProperty(
                key: IdentityDataSeedContributor.AdminPasswordPropertyName,
                value: IdentityDataSeedContributor.AdminPasswordDefaultValue
            );
        context.WithProperty(key: DataSeederExtensions.SeedInSeparateUow, value: true);
        context.WithProperty(
            key: DataSeederExtensions.SeedInSeparateUowOptions,
            value: new AbpUnitOfWorkOptions()
        );
        context.WithProperty(key: DataSeederExtensions.SeedInSeparateUowRequiresNew, value: false);
        await _dataSeeder.SeedAsync(context: context);
    }
}
