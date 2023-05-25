using System;
using System.Threading.Tasks;
using Volo.Abp.Data;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Domain.Repositories;

namespace Bdaya.BLCIRM;

using Bdaya.BLCIRM.JsonConverters;
//using Bogus;
using Bogus.Extensions.UnitedStates;
using Nito.Disposables.Internals;
using State;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.Json;
using Volo.Abp;
using Volo.Abp.Guids;
using Volo.Abp.TenantManagement;
using Volo.Abp.Timing;

public class LibrariesSeedContributor : IDataSeedContributor, ITransientDependency
{
    public LibrariesSeedContributor(
        IRepository<Tenant, Guid> tenantRepository,
        IRepository<AppTenantDocumentEntry, Guid> entryRepository,
        IAppTenantRepository appTenantRepository,
        IGuidGenerator guidGenerator,
        IClock clock,
        ITenantManager tenantManager,
        IRepository<Document, Guid> documents,
        IRepository<LibraryLoanEntry, Guid> loanEntryRepository,
        IRepository<Person, Guid> personRepo
    )
    {
        TenantRepository = tenantRepository;
        EntryRepository = entryRepository;
        AppTenantRepository = appTenantRepository;
        GuidGenerator = guidGenerator;
        Clock = clock;
        TenantManager = tenantManager;
        Documents = documents;
        LoanEntryRepository = loanEntryRepository;
        PersonRepo = personRepo;
    }

    private IRepository<Tenant, Guid> TenantRepository { get; }
    private IRepository<AppTenantDocumentEntry, Guid> EntryRepository { get; }
    private IRepository<LibraryLoanEntry, Guid> LoanEntryRepository { get; }
    private IRepository<Document, Guid> Documents { get; }
    private IRepository<Person, Guid> PersonRepo { get; }
    private IAppTenantRepository AppTenantRepository { get; }
    private IGuidGenerator GuidGenerator { get; }
    private IClock Clock { get; }
    private ITenantManager TenantManager { get; }

    public async Task SeedAsync(DataSeedContext context)
    {
        if (context.TenantId.HasValue)
        {
            return;
        }

        var path = "Seed/world_universities_and_domains.json";
        if (!File.Exists(path: path))
        {
            return;
        }

        var file = await File.ReadAllTextAsync(path: path);
        var blcirmTenant = await TenantRepository.FindAsync(predicate: x => x.Name == "BLCIRM");
        var blcirmAppTenant = await AppTenantRepository.GetAsync(id: blcirmTenant.Id);
        if (blcirmAppTenant is not TrustedTenant trusted)
        {
            throw new InvalidOperationException(message: "BLCIRM must be a trusted tenant");
        }

        var jsonOpts = new JsonSerializerOptions();
        jsonOpts.Converters.Add(item: new DictionaryStringObjectJsonConverter());

        var json = (
            JsonSerializer.Deserialize<List<Dictionary<string, object?>>>(json: file, options: jsonOpts) ?? new()
        ).Take(count: 100);

        var toAdd = new List<(Tenant tenant, LibraryTenant library)>();
        var allNames = json.Select(selector: x => x.GetValueOrDefault(key: "name")?.As<string>()).WhereNotNull();
        var allExistingTenants = (
                await TenantRepository.GetListAsync(predicate: x => allNames.Contains(x.Name))
            )
            .DistinctBy(keySelector: x => x.Name)
            .ToDictionary(keySelector: x => x.Name);
        foreach (var doc in json)
        {
            var name = doc.GetValueOrDefault(key: "name")?.As<string>();
            if (name == null)
            {
                continue;
            }

            if (allExistingTenants.ContainsKey(key: name))
            {
                continue;
            }

            var domains = doc.GetValueOrDefault(key: "domains")?.As<List<object?>>().Cast<string>();
            var web_pages = doc.GetValueOrDefault(key: "web_pages")?.As<List<object?>>().Cast<string>();
            var country = doc.GetValueOrDefault(key: "country")?.As<string>();
            var alpha_two_code = doc.GetValueOrDefault(key: "alpha_two_code")?.As<string>();
            var state_province = doc.GetValueOrDefault(key: "state-province")?.As<string>();

            var tenant = await TenantManager.CreateAsync(name: name);
            var lib = new LibraryTenant(
                id: tenant.Id,
                info: new AppTenantInfo(Address: country, Phone: null, Logo: null, Website: web_pages?.FirstOrDefault(), Email: null, CreationTime: null),
                allowedBy: new AllowedByInfo(
                    TenantId: trusted.Id,
                    CreatorId: null,
                    CreationTime: Clock.Now,
                    Result: true,
                    Reason: "Seeded by system"
                )
            );
            toAdd.Add(item: (tenant, lib));
        }

        if (toAdd.Any())
        {
            await TenantRepository.InsertManyAsync(entities: toAdd.Select(selector: x => x.tenant));
            await AppTenantRepository.InsertManyAsync(entities: toAdd.Select(selector: x => x.library));
        }

        //synthesize loans
        var documents = await Documents.GetListAsync();

        var entriesToAdd = new List<AppTenantDocumentEntry>(capacity: toAdd.Count);
        foreach (var (tenant, library) in toAdd)
        {
            var RandomIndex = Random.Shared.Next(minValue: 0, maxValue: documents.Count);
            var doc = documents[index: RandomIndex];
            var ownedNowQuantity = Random.Shared.Next(maxValue: 10000);
            var loanedQuantity = Random.Shared.Next(maxValue: 10000);
            var newEntry = new AppTenantDocumentEntry(
                id: GuidGenerator.Create(),
                tenantId: tenant.Id,
                documentId: doc.Id,
                ownedQuantity: ownedNowQuantity + loanedQuantity,
                loanedQuantity: loanedQuantity,
                isAvailableOnline: false
            );
            entriesToAdd.Add(item: newEntry);
        }

        if (entriesToAdd.Any())
        {
            await EntryRepository.InsertManyAsync(entities: entriesToAdd);
        }

        // Setup some kind of seed, global or local. Here, we use a global seed.
        Bogus.Randomizer.Seed = new Random(Seed: 1338);

        var peopleCount = await PersonRepo.GetCountAsync();
        var minPeople = 2_000;

        if (peopleCount < minPeople)
        {
            var peopleToAdd = new List<Person>();
            var f = new Bogus.Faker();
            for (int i = 0; i < minPeople; i++)
            {
                var p = new Bogus.Person();

                var name = p.FullName;
                var id = GuidGenerator.Create();
                var code = f.Address.CountryCode();
                var nationalId = p.Ssn();

                var person = new Person(
                    id: id,
                    info: new PersonInfo(name: name, countryCodeIso3166: code, nationalId: nationalId, birthday: p.DateOfBirth, metadata: new())
                );
                peopleToAdd.Add(item: person);
            }

            var loansToAdd = new List<LibraryLoanEntry>();
            foreach (var item in entriesToAdd)
            {
                if (item.LoanedQuantity == 0)
                {
                    continue;
                }

                var loaned = item.LoanedQuantity;
                while (loaned > 0)
                {
                    var personIndex = Random.Shared.Next(minValue: 0, maxValue: minPeople);
                    var person = peopleToAdd[index: personIndex];
                    var toLoan = Random.Shared.Next(minValue: 1, maxValue: loaned);
                    loaned -= toLoan;
                    var loanEntry = new LibraryLoanEntry(
                        id: GuidGenerator.Create(),
                        tenantId: item.TenantId,
                        documentId: item.DocumentId,
                        personId: person.Id,
                        physicalCopies: toLoan,
                        returnDate: null, actualReturnDate: null
                    )
                    {
                        CreationTime = f.Date.Past(),
                    };
                    loansToAdd.Add(item: loanEntry);
                }
            }

            if (peopleToAdd.Any())
            {
                await PersonRepo.InsertManyAsync(entities: peopleToAdd);
            }

            if (loansToAdd.Any())
            {
                await LoanEntryRepository.InsertManyAsync(entities: loansToAdd);
            }
        }
    }
}