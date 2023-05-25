using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;
using Bdaya.BLCIRM.JsonConverters;
using Bdaya.BLCIRM.State;
using Volo.Abp.Data;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Domain.Repositories;
using Volo.Abp.Guids;
using Volo.Abp.TenantManagement;
using Volo.Abp.Timing;

namespace Bdaya.BLCIRM.Seed;

public class DocumentsSeedContributor : IDataSeedContributor, ITransientDependency
{
    private IRepository<Tenant, Guid> TenantRepository { get; }
    private IRepository<AppTenantDocumentEntry, Guid> EntryRepository { get; }
    private IRepository<Person, Guid> PersonRepository { get; }
    private IRepository<DocumentMetadataDef, string> MetadataDefRepository { get; }
    private IRepository<Document, Guid> DocumentRepository { get; }
    private IAppTenantRepository AppTenantRepository { get; }
    private IGuidGenerator GuidGenerator { get; }
    private IClock Clock { get; }

    public async Task SeedAsync(DataSeedContext context)
    {
        if (context.TenantId.HasValue)
        {
            return;
        }

        var path = "Seed/Documentds dataset.json";
        if (!File.Exists(path: path))
        {
            return;
        }
        var file = await File.ReadAllTextAsync(path: path);
        var json = JsonDocument.Parse(json: file);

        await ImportBulk(input: json);
        await EnsureDocumentsHaveProperOwners();
    }

    private const string kPublisher = "Publisher";

    private async Task EnsureDocumentsHaveProperOwners()
    {
        // ReSharper disable once ConditionIsAlwaysTrueOrFalseAccordingToNullableAPIContract
        var allDocs = await DocumentRepository.GetListAsync(
            predicate: x => x.PublisherOwners == null || x.PublisherOwners.Count == 0
        );
        var allPublisherNames = allDocs
            .Select(
                selector: (doc) =>
                    NormalizePublisher(
                        name: doc.Info.Metadata.GetValueOrDefault(key: kPublisher)?.As<string>()
                    )
            )
            .ToHashSet();
        var allPublishers = (
            await TenantRepository.GetListAsync(predicate: x => allPublisherNames.Contains(x.Name))
        ).ToDictionary(keySelector: x => x.Name);
        foreach (var doc in allDocs)
        {
            var publisherName = NormalizePublisher(
                name: doc.Info.Metadata.GetValueOrDefault(key: kPublisher)?.As<string>()
            );
            if (string.IsNullOrWhiteSpace(value: publisherName))
            {
                continue;
            }
            var publisher = allPublishers.GetValueOrDefault(key: publisherName);
            if (publisher == null)
            {
                continue;
            }
            //doc.PublisherOwners.Clear();
            doc.PublisherOwners.Add(item: publisher.Id);
        }
        if (allDocs.Any())
        {
            await DocumentRepository.UpdateManyAsync(entities: allDocs);
        }
    }

    private static readonly char[] badChars = new[]
    {
        ' ',
        '\xA0',
        ',',
        '،',
        ']',
        ':',
        '-',
        '\\',
        '/'
    };
    private ITenantManager TenantManager { get; }

    public DocumentsSeedContributor(
        IRepository<Tenant, Guid> tenantRepository,
        IRepository<AppTenantDocumentEntry, Guid> entryRepository,
        IRepository<DocumentMetadataDef, string> metadataDefRepository,
        IRepository<Document, Guid> documentRepository,
        IAppTenantRepository appTenantRepository,
        AppDataSeedContributor appDataSeedContributor,
        IGuidGenerator guidGenerator,
        IRepository<Person, Guid> personRepository,
        ITenantManager tenantManager,
        IClock clock
    )
    {
        TenantRepository = tenantRepository;
        EntryRepository = entryRepository;
        MetadataDefRepository = metadataDefRepository;
        DocumentRepository = documentRepository;
        AppTenantRepository = appTenantRepository;
        GuidGenerator = guidGenerator;
        PersonRepository = personRepository;
        TenantManager = tenantManager;
        Clock = clock;
    }

    static object? NormalizeValue(object? value)
    {
        if (value == null)
        {
            return null;
        }
        if (value is string str)
        {
            return str.Trim(trimChars: badChars);
        }
        return value;
    }

    static string? NormalizeAuthor(string? name)
    {
        if (string.IsNullOrWhiteSpace(value: name))
            return null;
        var split = name.Split(
            separator: badChars,
            options: StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries
        );
        if (!split.Any())
        {
            return null;
        }
        var correct = split.SkipLast(count: 1).Prepend(element: split.Last());
        return string.Join(separator: ' ', values: correct);
    }

    private static string? NormalizePublisher(string? name)
    {
        var trimmed = name?.TrimEnd(trimChars: badChars);
        if (string.IsNullOrWhiteSpace(value: trimmed))
        {
            return null;
        }

        return trimmed.Contains(value: "د. ن.") ? null : trimmed;
    }

    private static string? NormalizePublishLocation(string? name)
    {
        name = name?.TrimEnd(trimChars: badChars);
        if (string.IsNullOrWhiteSpace(value: name))
        {
            return null;
        }

        return name.Contains(value: "د. م.") ? null : name;
    }

    private async Task<int> ImportBulk(JsonDocument input)
    {
        var blcirmTenant = await TenantRepository.FindAsync(predicate: x => x.Name == "BLCIRM");
        var blcirmAppTenant = await AppTenantRepository.GetAsync(id: blcirmTenant.Id);
        if (blcirmAppTenant is not TrustedTenant trusted)
        {
            throw new InvalidOperationException(message: "BLCIRM must be a trusted tenant");
        }
        var element = input.RootElement;
        const string kTitle = "Title";
        //int takeLimit = 500;
        var en = element
            .GetProperty(propertyName: "en")
            .EnumerateArray()
            .Where(
                predicate: x => x.TryGetProperty(propertyName: kTitle, value: out _)
            )
        /*.Take(takeLimit)*/;
        var ar = element
            .GetProperty(propertyName: "ar")
            .EnumerateArray()
            .Where(
                predicate: x => x.TryGetProperty(propertyName: kTitle, value: out _)
            )
        /*.Take(takeLimit)*/;
        const string kSubTitle = "Sub title";
        const string kNormalSubTitle = "Subtitle";
        const string kAuthor = "Author";
        const string kResponsibility = "Responsibility";
        const string kEdition = "Edition";
        const string kPublishLocation = "Publish location";
        const string kNormalPublishLocation = "PublishLocation";
        const string kPublishYear = "Publish year";
        const string kNormalPublishYear = "PublishYear";
        const string kPhysicalDescriptionExtent = "Physical Description - Extent";
        const string kNormalPhysicalDescriptionExtent = "PhysicalDescriptionExtent";
        const string kDewey = "Dewey";
        const string kSubjectHeadings = "Subject headings";
        const string kNormalSubjectHeadings = "SubjectHeadings";
        const string kISBN = "ISBN";
        const string kCopiesCount = "Copies count";
        const string kBorrowCount = "Borrow Count";

        async Task UpsertMetadata(
            IReadOnlyDictionary<string, string> normalMetadataMapping,
            IEnumerable<string> metadataProps
        )
        {
            var normalMetadataProps = metadataProps
                .Select(selector: x => normalMetadataMapping.GetValueOrDefault(key: x) ?? x)
                .ToHashSet();
            var existingDefs = (
                await MetadataDefRepository.GetListAsync(predicate: x => normalMetadataProps.Contains(x.Id))
            ).ToDictionary(keySelector: x => x.Id);

            var missingDefs = normalMetadataProps
                .Where(predicate: x => !existingDefs.ContainsKey(key: x))
                .ToHashSet();
            var toAdd = new List<DocumentMetadataDef>();
            foreach (var metaPropName in missingDefs)
            {
                var def = metaPropName switch
                {
                    kPublisher
                        => new DocumentMetadataDef(
                            id: kPublisher,
                            title: kPublisher,
                            type: DocumentMetadataType.Text,
                            isSearchable: true,
                            isFilterable: false
                        ),
                    kAuthor
                        => new DocumentMetadataDef(
                            id: kAuthor,
                            title: kAuthor,
                            type: DocumentMetadataType.Text,
                            isSearchable: true,
                            isFilterable: false
                        ),
                    kNormalSubTitle
                        => new DocumentMetadataDef(
                            id: kNormalSubTitle,
                            title: kSubTitle,
                            type: DocumentMetadataType.Text,
                            isSearchable: true,
                            isFilterable: false
                        ),
                    kResponsibility
                        => new DocumentMetadataDef(
                            id: kResponsibility,
                            title: kResponsibility,
                            type: DocumentMetadataType.Text,
                            isSearchable: true,
                            isFilterable: false
                        ),
                    kEdition
                        => new DocumentMetadataDef(
                            id: kEdition,
                            title: kEdition,
                            type: DocumentMetadataType.Text,
                            isSearchable: true,
                            isFilterable: false
                        ),
                    kNormalPublishLocation
                        => new DocumentMetadataDef(
                            id: kNormalPublishLocation,
                            title: kPublishLocation,
                            type: DocumentMetadataType.Text,
                            isSearchable: true,
                            isFilterable: false
                        ),
                    kNormalPublishYear
                        => new DocumentMetadataDef(
                            id: kNormalPublishYear,
                            title: kPublishYear,
                            type: DocumentMetadataType.Text,
                            isSearchable: false,
                            isFilterable: true,
                            disableTypoTolerance: true,
                            isFacet: true
                        ),
                    kNormalPhysicalDescriptionExtent
                        => new DocumentMetadataDef(
                            id: kNormalPhysicalDescriptionExtent,
                            title: kPhysicalDescriptionExtent,
                            type: DocumentMetadataType.Text,
                            isSearchable: true,
                            isFilterable: false,
                            disableTypoTolerance: false
                        ),
                    kDewey
                        => new DocumentMetadataDef(
                            id: kDewey,
                            title: kDewey,
                            type: DocumentMetadataType.Text,
                            isSearchable: true,
                            isFilterable: false,
                            disableTypoTolerance: true
                        ),
                    kNormalSubjectHeadings
                        => new DocumentMetadataDef(
                            id: kNormalSubjectHeadings,
                            title: kSubjectHeadings,
                            type: DocumentMetadataType.Text,
                            isSearchable: true,
                            disableTypoTolerance: false,
                            isFacet: true,
                            isFilterable: true
                        ),
                    kISBN
                        => new DocumentMetadataDef(
                            id: kISBN,
                            title: kISBN,
                            type: DocumentMetadataType.Text,
                            isSearchable: true,
                            disableTypoTolerance: true
                        ),
                    _ => null,
                };
                if (def != null)
                {
                    toAdd.Add(item: def);
                }
            }
            if (toAdd.Any())
            {
                await MetadataDefRepository.InsertManyAsync(entities: toAdd);
            }
        }
        var metadataProps = new[]
        {
            kSubTitle,
            kResponsibility,
            kEdition,
            kPublishLocation,
            kPublisher,
            kAuthor,
            kPublishYear,
            kPhysicalDescriptionExtent,
            kDewey,
            kSubjectHeadings,
            kISBN,
        };
        Dictionary<string, string> normalMetadataMapping =
            new()
            {
                { kSubTitle, kNormalSubTitle },
                { kPublishLocation, kNormalPublishLocation },
                { kPublishYear, kNormalPublishYear },
                { kPhysicalDescriptionExtent, kNormalPhysicalDescriptionExtent },
                { kSubjectHeadings, kNormalSubjectHeadings },
            };
        //upsert metadata
        await UpsertMetadata(normalMetadataMapping: normalMetadataMapping, metadataProps: metadataProps);

        (string key, object? value) NormalizeMetadata(string metadataKey, object? metadataValue)
        {
            object? value = metadataKey switch
            {
                kSubTitle => null,
                kAuthor => NormalizeAuthor(name: metadataValue as string),
                kResponsibility => null,
                kEdition => null,
                kPublishLocation => NormalizePublishLocation(name: metadataValue as string),
                kPublisher => NormalizePublisher(name: metadataValue as string),
                kPublishYear
                    => int.TryParse(
                        s: NormalizeValue(value: metadataValue) as string,
                        result: out var parsedPublishYear
                    )
                        ? parsedPublishYear
                        : null,
                kPhysicalDescriptionExtent => null,
                kDewey => null,
                kSubjectHeadings => null,
                kISBN => null,
                //kCopiesCount => ,
                //kBorrowCount => ,
                _ => null
            };
            return (
                normalMetadataMapping.GetOrDefault(key: metadataKey) ?? metadataKey,
                value ?? NormalizeValue(value: metadataValue)
            );
        }

        var allElements = en.Concat(second: ar).ToList();

        var combinedAuthorNames = await UpsertAuthors(docs: allElements, kAuthor: kAuthor);
        var combinedPublishers = await UpsertPublishers(docs: allElements, kPublisher: kPublisher, blcirm: trusted);

        var jsonOpts = new JsonSerializerOptions();
        jsonOpts.Converters.Add(item: new DictionaryStringObjectJsonConverter());
        var docsToAdd = new List<(Dictionary<string, object?> parsed, Document doc)>();
        var entriesToAdd = new List<AppTenantDocumentEntry>();

        var allBooks = en.Select(selector: x => (lang: "en", item: x))
            .Concat(second: ar.Select(selector: x => (lang: "ar", item: x)))
            .Select(
                selector: (x) =>
                    (
                        x.lang,
                        x.item,
                        title: NormalizeValue(value: x.item.GetProperty(propertyName: kTitle).GetString()) as string
                    )
            )
            .ToList();
        //Add books
        var allCurrentBooksByName = await GetBooksAsync(allBooks: allBooks);

        var allTenantIds = combinedPublishers.Values.Select(selector: x => (Guid?)x.Id).ToHashSet();
        foreach (var itemTuple in allBooks)
        {
            var (lang, item, title) = itemTuple;

            var parsed = item.Deserialize<Dictionary<string, object?>>(options: jsonOpts);
            if (parsed == null)
            {
                continue;
            }
            var id = GuidGenerator.Create();
            title ??= id.ToString();
            if (allCurrentBooksByName.ContainsKey(key: title))
            {
                continue;
            }
            var metadataValues = new Dictionary<string, object?>();
            foreach (var propName in metadataProps)
            {
                if (!parsed.TryGetValue(key: propName, value: out var propValue))
                {
                    continue;
                }
                (string key, object? value) = NormalizeMetadata(metadataKey: propName, metadataValue: propValue);
                metadataValues[key: key] = value;
            }

            var author = metadataValues.GetValueOrDefault(key: kAuthor)?.As<string>();
            var authorObj = author == null ? null : combinedAuthorNames.GetValueOrDefault(key: author);
            var authorIds = new[] { authorObj?.Id }.OfType<Guid>().ToList();
            var publisherName = NormalizePublisher(
                name: parsed.GetValueOrDefault(key: kPublisher)?.As<string>()
            );
            var publisher =
                publisherName == null ? null : combinedPublishers.GetValueOrDefault(key: publisherName);
            var document = new Document(
                id: id,
                info: new DocumentInfo(
                    title: title,
                    metadata: metadataValues,
                    authors: authorIds,
                    language: lang
                ),
                publisherOwners: new[] { publisher?.Id }.OfType<Guid>().ToHashSet()
            );
            docsToAdd.Add(item: (parsed, document));
        }
        var allDocIds = docsToAdd.Select(selector: x => x.doc.Id).ToHashSet();
        var existingEntries = (
            await EntryRepository.GetListAsync(
                predicate: x => allTenantIds.Contains(x.TenantId) && allDocIds.Contains(x.DocumentId)
            )
        )
            .Select(selector: x => (x.TenantId, x.DocumentId))
            .ToHashSet();
        foreach (var (parsed, doc) in docsToAdd)
        {
            var metadata = doc.Info.Metadata;
            var publisherName = NormalizePublisher(
                name: parsed.GetValueOrDefault(key: kPublisher)?.As<string>()
            );
            if (
                !(
                    parsed.TryGetValue(key: kBorrowCount, value: out var loandObj)
                    && loandObj is string loanedStr
                    && int.TryParse(s: loanedStr.Trim(), result: out var loaned)
                )
            )
            {
                loaned = 0;
            }

            if (
                !(
                    parsed.TryGetValue(key: kCopiesCount, value: out var copiesObj)
                    && copiesObj is string copiesStr
                    && int.TryParse(s: copiesStr.Trim(), result: out var copies)
                )
            )
            {
                copies = 0;
            }
            var publisher =
                publisherName == null ? null : combinedPublishers.GetValueOrDefault(key: publisherName);

            if (!existingEntries.Contains(item: (publisher?.Id, doc.Id)))
            {
                entriesToAdd.Add(
                    item: new AppTenantDocumentEntry(
                        id: GuidGenerator.Create(),
                        tenantId: publisher?.Id,
                        documentId: doc.Id,
                        ownedQuantity: copies + loaned,
                        loanedQuantity: loaned,
                        isAvailableOnline: false
                    )
                );
            }
        }
        foreach (var chunk in docsToAdd.Select(selector: x => x.doc).Chunk(size: 100))
        {
            if (chunk.Length > 0)
            {
                await DocumentRepository.InsertManyAsync(entities: chunk);
            }
        }
        foreach (var chunk in entriesToAdd.Chunk(size: 100))
        {
            if (chunk.Length > 0)
                await EntryRepository.InsertManyAsync(entities: chunk);
        }

        return docsToAdd.Count;
    }

    private async Task<Dictionary<string, Document>> GetBooksAsync(
        IEnumerable<(string lang, JsonElement item, string? title)> allBooks
    )
    {
        var normalizedBookNames = allBooks.Select(selector: x => x.title);
        var allCurrentBooks = await DocumentRepository.GetListAsync(
            predicate: x => normalizedBookNames.Contains(x.Info.Title)
        );
        var allCurrentBooksByName = allCurrentBooks
            .DistinctBy(keySelector: x => x.Info.Title)
            .ToDictionary(keySelector: x => x.Info.Title);
        return allCurrentBooksByName;
    }

    private async Task<Dictionary<string, Author>> UpsertAuthors(
        IEnumerable<JsonElement> docs,
        string kAuthor
    )
    {
        var allAuthorNames = new HashSet<string>();
        foreach (var item in docs)
        {
            if (!item.TryGetProperty(propertyName: kAuthor, value: out var authorRaw))
            {
                continue;
            }
            var author = NormalizeAuthor(name: authorRaw.GetString());
            if (author != null)
            {
                allAuthorNames.Add(item: author);
            }
        }
        var currentAuthors = (
            await PersonRepository.GetListAsync(
                predicate: x => x is Author && allAuthorNames.Contains(x.Info.Name)
            )
        )
            .OfType<Author>()
            .ToDictionary(keySelector: x => x.Id);
        var currentAuthorNames = currentAuthors.Values.Select(selector: x => x.Info.Name).ToHashSet();
        var notAddedAuthors = allAuthorNames
            .Where(predicate: x => !currentAuthorNames.Contains(item: x))
            .ToHashSet();
        var authorsToAdd = notAddedAuthors
            .Select(
                selector: name =>
                    new Author(
                        id: GuidGenerator.Create(),
                        info: new PersonInfo(name: name, countryCodeIso3166: null, nationalId: null, birthday: null, metadata: new())
                    )
            )
            .ToList();
        if (authorsToAdd.Any())
        {
            await PersonRepository.InsertManyAsync(entities: authorsToAdd);
        }

        var combinedNewAuthorNames = currentAuthors.Values
            .Concat(second: authorsToAdd)
            .ToDictionary(keySelector: x => x.Info.Name);
        return combinedNewAuthorNames;
    }

    private async Task<Dictionary<string, BaseAppTenant>> UpsertPublishers(
        IEnumerable<JsonElement> docs,
        string kPublisher,
        TrustedTenant blcirm
    )
    {
        var allNames = new HashSet<string>();
        foreach (var item in docs)
        {
            if (!item.TryGetProperty(propertyName: kPublisher, value: out var publisherRaw))
            {
                continue;
            }
            var publisher = NormalizePublisher(name: publisherRaw.GetString());
            if (publisher != null)
            {
                allNames.Add(item: publisher);
            }
        }
        var current = (
            await TenantRepository.GetListAsync(predicate: x => allNames.Contains(x.Name))
        ).ToDictionary(keySelector: x => x.Name);
        var currentAppTenantIds = current.Values.Select(selector: x => x.Id).ToHashSet();
        var currentAppTenants = (
            await AppTenantRepository.GetListAsync(predicate: x => currentAppTenantIds.Contains(x.Id))
        ).ToDictionary(keySelector: x => x.Id);
        var currentNames = current.Keys.ToHashSet();
        var notAdded = allNames.Where(predicate: x => !currentNames.Contains(item: x)).ToHashSet();

        var tenantsToAdd = await Task.WhenAll(
            tasks: notAdded.Select(selector: (name) => TenantManager.CreateAsync(name: name))
        );

        if (tenantsToAdd.Any())
        {
            await TenantRepository.InsertManyAsync(entities: tenantsToAdd);
        }
        var combinedTenantsDict = tenantsToAdd.Concat(second: current.Values).ToDictionary(keySelector: x => x.Name);
        var publishersToAdd = tenantsToAdd
            .Select(selector: t =>
            {
                return new PublisherTenant(
                    id: t.Id,
                    info: new AppTenantInfo(
                        Address: null,
                        Phone: null,
                        Logo: null,
                        Website: null,
                        Email: null,
                        CreationTime: null
                    ),
                    allowedBy: new AllowedByInfo(
                        TenantId: blcirm.Id,
                        CreatorId: null,
                        CreationTime: Clock.Now,
                        Result: true,
                        Reason: "Seeded by system"
                    )
                );
            })
            .ToList();
        var newPublishersDict = publishersToAdd.Cast<BaseAppTenant>().ToDictionary(keySelector: x => x.Id);
        if (publishersToAdd.Any())
        {
            await AppTenantRepository.InsertManyAsync(entities: publishersToAdd);
        }

        //foreach (var tenant in tenantsToAdd)
        //{
        //    using (CurrentTenant.Change(tenant.Id, tenant.Name))
        //    {
        //        await DataSeeder.SeedAsync(
        //            new DataSeedContext(tenant.Id)
        //                .WithProperty("AdminEmail", "blcirm@bdaya-dev.com")
        //                .WithProperty(
        //                    "AdminPassword",
        //                    IdentityDataSeedContributor.AdminPasswordDefaultValue
        //                )
        //        );
        //    }
        //}
        return allNames
            .Select(selector: name =>
            {
                var tenant = combinedTenantsDict[key: name];
                var matching =
                    currentAppTenants.GetValueOrDefault(key: tenant.Id) ?? newPublishersDict[key: tenant.Id];
                return new KeyValuePair<string, BaseAppTenant>(key: name, value: matching);
            })
            .ToDictionary(keySelector: x => x.Key, elementSelector: x => x.Value);
    }
}
