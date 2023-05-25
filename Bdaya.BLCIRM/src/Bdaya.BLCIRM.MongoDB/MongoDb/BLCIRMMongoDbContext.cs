using Bdaya.Abp.MongoDBMigrator;
using Bdaya.BLCIRM.State;
using MongoDB.Driver;
using MongoDB.Driver.Linq;
using Volo.Abp.Data;
using Volo.Abp.MongoDB;
using Volo.Abp.TenantManagement;
using Volo.Abp.TenantManagement.MongoDB;
using MongoDB.Bson.Serialization;
using System.Collections.Generic;
using System;

namespace Bdaya.BLCIRM.MongoDB;

[ConnectionStringName(name: "Default")]
public class BLCIRMMongoDbContext : AbpMongoDbContext, IBdayaAbpMigratableMongoDbContext
{
    public IMongoCollection<Person> People => Collection<Person>();

    public IFilteredMongoCollection<Author> Authors() => People.OfType<Author>();

    public IMongoCollection<BaseAppTenant> Tenants => Collection<BaseAppTenant>();

    public IFilteredMongoCollection<LibraryTenant> Libraries() => Tenants.OfType<LibraryTenant>();

    public IFilteredMongoCollection<PublisherTenant> Publishers() =>
        Tenants.OfType<PublisherTenant>();

    public IFilteredMongoCollection<TrustedTenant> TrustedAuthorities() =>
        Tenants.OfType<TrustedTenant>();

    public IMongoCollection<Document> Documents => Collection<Document>();
    public IMongoCollection<DocumentMetadataDef> MetadataDef => Collection<DocumentMetadataDef>();
    public IMongoCollection<LibraryLoanEntry> Loans => Collection<LibraryLoanEntry>();
    public IMongoCollection<AppTenantDocumentEntry> OrganizationDocuments =>
        Collection<AppTenantDocumentEntry>();

    public string ContextId { get; } = "BLCIRM";
    public IMongoCollection<BdayaAbpMongoDBMigrationHistoryEntry> MigrationHistory =>
        Collection<BdayaAbpMongoDBMigrationHistoryEntry>();

    protected override void CreateModel(IMongoModelBuilder modelBuilder)
    {
        modelBuilder.ConfigureMigrations();

        BsonClassMap.TryRegisterClassMap<AppTenantInfo>(classMapInitializer: b =>
        {
            b.ConfigureAbpConventions();
        });
        BsonClassMap.TryRegisterClassMap<AllowedByInfo>(classMapInitializer: b =>
        {
            b.ConfigureAbpConventions();
        });

        //Tenants
        modelBuilder.Entity<BaseAppTenant>(
            buildAction: (opt) =>
            {
                opt.CollectionName = BLCIRMConsts.DbTablePrefix + "Tenants";
                opt.BsonMap.SetIsRootClass(isRootClass: true);
                opt.BsonMap.SetDiscriminator(discriminator: "Tenant");
            }
        );
        BsonClassMap.TryRegisterClassMap<LibraryTenant>(classMapInitializer: b =>
        {
            b.ConfigureAbpConventions();
            b.SetDiscriminator(discriminator: "Library");
        });
        BsonClassMap.TryRegisterClassMap<PublisherTenant>(classMapInitializer: b =>
        {
            b.ConfigureAbpConventions();
            b.SetDiscriminator(discriminator: "Publisher");
        });
        BsonClassMap.TryRegisterClassMap<TrustedTenant>(classMapInitializer: b =>
        {
            b.ConfigureAbpConventions();
            b.SetDiscriminator(discriminator: "Trusted");
        });
        //Person
        modelBuilder.Entity<Person>(buildAction: b =>
        {
            b.CollectionName = BLCIRMConsts.DbTablePrefix + "People";
            b.BsonMap.SetIsRootClass(isRootClass: true);
            b.BsonMap.SetDiscriminator(discriminator: "Person");
        });
        BsonClassMap.TryRegisterClassMap<Author>(classMapInitializer: b =>
        {
            b.ConfigureAbpConventions();
            b.SetDiscriminator(discriminator: "Author");
        });
        //Documents
        modelBuilder.Entity<Document>(buildAction: b =>
        {
            b.CollectionName = BLCIRMConsts.DbTablePrefix + "Documents";
            b.BsonMap
                .MapProperty(propertyLambda: x => x.PublisherOwners)
                .SetDefaultValue(defaultValueCreator: () => new HashSet<Guid>());
        });
        modelBuilder.Entity<DocumentMetadataDef>(buildAction: b =>
        {
            b.CollectionName = BLCIRMConsts.DbTablePrefix + "MetadataDef";
        });
        modelBuilder.Entity<AppTenantDocumentEntry>(buildAction: b =>
        {
            b.CollectionName = BLCIRMConsts.DbTablePrefix + "OrganizationDocuments";
            
        });

        //Library Loans
        modelBuilder.Entity<LibraryLoanEntry>(buildAction: b =>
        {
            b.CollectionName = BLCIRMConsts.DbTablePrefix + "Loans";
        });
    }
}
