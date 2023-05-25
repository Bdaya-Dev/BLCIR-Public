using Bdaya.Abp.MongoDBMigrator;
using Bdaya.BLCIRM.Repos;
using Bdaya.BLCIRM.State;
using Microsoft.Extensions.DependencyInjection;
using MongoDB.Bson;
using MongoDB.Bson.Serialization;
using MongoDB.Bson.Serialization.Conventions;
using MongoDB.Bson.Serialization.Serializers;
using MongoDB.Driver.Linq;
using System;
using System.Threading.Tasks;
using Volo.Abp;
using Volo.Abp.AuditLogging.MongoDB;
using Volo.Abp.BackgroundJobs.MongoDB;
using Volo.Abp.Domain.Repositories;
using Volo.Abp.Domain.Repositories.MongoDB;
using Volo.Abp.FeatureManagement.MongoDB;
using Volo.Abp.Identity.MongoDB;
using Volo.Abp.Modularity;
using Volo.Abp.MongoDB;
using Volo.Abp.OpenIddict.MongoDB;
using Volo.Abp.PermissionManagement.MongoDB;
using Volo.Abp.SettingManagement.MongoDB;
using Volo.Abp.TenantManagement.MongoDB;
using Volo.Abp.Threading;
using Volo.Abp.Uow;

namespace Bdaya.BLCIRM.MongoDB;

[DependsOn(
    dependedTypes: new[]
    {
        typeof(BLCIRMDomainModule),
        typeof(AbpPermissionManagementMongoDbModule),
        typeof(AbpSettingManagementMongoDbModule),
        typeof(AbpIdentityMongoDbModule),
        typeof(AbpOpenIddictMongoDbModule),
        typeof(AbpBackgroundJobsMongoDbModule),
        typeof(AbpAuditLoggingMongoDbModule),
        typeof(AbpTenantManagementMongoDbModule),
        typeof(AbpFeatureManagementMongoDbModule)
    }
)]
[DependsOn(dependedTypes: typeof(BdayaAbpMongoDBMigratorModule))]
public class BLCIRMMongoDbModule : AbpModule
{
    private static OneTimeRunner _runner = new OneTimeRunner();
    private static GuidSerializer Serializer = new(guidRepresentation: GuidRepresentation.Standard);

    public override void ConfigureServices(ServiceConfigurationContext context)
    {
#pragma warning disable CS0618 // Type or member is obsolete
        BsonDefaults.GuidRepresentationMode = GuidRepresentationMode.V3;
#pragma warning restore CS0618 // Type or member is obsolete
        BsonSerializer.TryRegisterSerializer(serializer: Serializer);
        _runner.Run(action: () =>
        {
            BsonClassMap.TryRegisterClassMap<TransactionInfo>(classMapInitializer: cm =>
            {
                cm.AutoMap();
                cm.SetIsRootClass(isRootClass: true);
            });
            
            //Author
            BsonClassMap.RegisterClassMap<CreateAuthorTransactionInfo>();
            BsonClassMap.RegisterClassMap<CreateDocumentTransactionInfo>();
            BsonClassMap.RegisterClassMap<CreatePersonTransactionInfo>();
            BsonClassMap.RegisterClassMap<DeleteDocumentTransactionInfo>();
            BsonClassMap.RegisterClassMap<DeletePersonTransactionInfo>();
            BsonClassMap.RegisterClassMap<LoanPhysicalDocumentsTransactionInfo>();
            BsonClassMap.RegisterClassMap<RegisterDocumentTransactionInfo>();
            BsonClassMap.RegisterClassMap<ReturnLoanPhysicalDocumentsTransactionInfo>();
            BsonClassMap.RegisterClassMap<TransferPhysicalDocumentsTransactionInfo>();
            BsonClassMap.RegisterClassMap<UpdateAuthorTransactionInfo>();
            BsonClassMap.RegisterClassMap<UpdateDocumentTransactionInfo>();
            BsonClassMap.RegisterClassMap<UpdateOwnEntryTransactionInfo>();
            BsonClassMap.RegisterClassMap<UpdatePersonTransactionInfo>();
        });
        context.Services.AddMongoDbContext<BLCIRMMongoDbContext>(optionsBuilder: options =>
        {
            //options.SetDefaultRepositoryClasses(typeof(BulkRepoBase<,>), typeof(BulkRepoBase<>));
            options.AddDefaultRepositories();
            options.AddRepository<BaseAppTenant, TenantRepo>();
        });
        context.Services.AddMongoDbContext<BlockchainMongoDbContext>(optionsBuilder: options =>
        {
            //options.SetDefaultRepositoryClasses(typeof(BulkRepoBase<,>), typeof(BulkRepoBase<>));
            options.AddRepository<Block, BlockRepo>();
            options.AddDefaultRepository<TransactionProposal>();
        });

        Configure<AbpMongoDbContextOptions>(
            configureOptions: (o) =>
            {
                o.MongoClientSettingsConfigurer = (c) =>
                {
                    c.LinqProvider = LinqProvider.V3;
                };
            }
        );

        Configure<AbpUnitOfWorkDefaultOptions>(configureOptions: options =>
        {
            options.TransactionBehavior = UnitOfWorkTransactionBehavior.Enabled;
        });
    }
}
