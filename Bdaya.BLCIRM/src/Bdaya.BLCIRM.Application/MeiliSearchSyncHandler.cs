using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;
using Bdaya.BLCIRM.MeiliSearch;
using Bdaya.BLCIRM.State;
using Bdaya.BLCIRM.Tenants;
using Meilisearch;
using Microsoft.Extensions.Options;
using Volo.Abp;
using Volo.Abp.Data;
using Volo.Abp.DependencyInjection;
using Volo.Abp.Domain.Entities.Events;
using Volo.Abp.EventBus;
using Volo.Abp.MultiTenancy;
using Volo.Abp.TenantManagement;
using Index = Meilisearch.Index;

namespace Bdaya.BLCIRM;

[RemoteService(isEnabled: false)]
public class MeiliSearchSyncHandler
    : ILocalEventHandler<EntityChangedEventData<BaseAppTenant>>,
        ILocalEventHandler<EntityChangedEventData<Tenant>>,
        ILocalEventHandler<EntityChangedEventData<Document>>,
        ILocalEventHandler<EntityChangedEventData<AppTenantDocumentEntry>>,
        ILocalEventHandler<EntityChangedEventData<LibraryLoanEntry>>,
        ILocalEventHandler<EntityChangedEventData<Person>>,
        ITransientDependency
{
    MeilisearchClient? Client => MeiliSearchAccessor.Value;
    Index? TenantsIndex => Client?.Index(uid: IndexNames.Tenants);
    Index? LoansIndex => Client?.Index(uid: IndexNames.Loans);
    Index? PeopleIndex => Client?.Index(uid: IndexNames.People);

    [return: NotNullIfNotNull(parameterName: "client")]
    Index? DocumentsIndex(string lang, MeilisearchClient? client = null) =>
        (client ?? Client)?.Index(uid: IndexNames.DocumentsLang(lang: lang));

    private IBLCIRMAsyncMapper AsyncMapper { get; }
    private MeiliSearchIndexNames IndexNames { get; }
    private IMeiliSearchAccessor MeiliSearchAccessor { get; }
    private JsonSerializerOptions JsonSerializerOptions { get; }
    private IDataFilter<IMultiTenant> DataFilter { get; }

    public MeiliSearchSyncHandler(
        IOptions<MeiliSearchIndexNames> indexNames,
        IMeiliSearchAccessor meiliSearchAccessor,
        IOptions<MeiliSearchSystemTextJsonOptions> systemTextJsonSerializerOptions,
        IBLCIRMAsyncMapper asyncMapper,
        IDataFilter<IMultiTenant> dataFilter
    )
    {
        IndexNames = indexNames.Value;
        MeiliSearchAccessor = meiliSearchAccessor;
        JsonSerializerOptions = systemTextJsonSerializerOptions.Value.Options;
        AsyncMapper = asyncMapper;
        DataFilter = dataFilter;
    }

    private string JsonSerialize<T>(IEnumerable<T> values)
    {
        return JsonSerializer.Serialize(value: values, options: JsonSerializerOptions);
    }

    #region Tenants

    public async Task HandleEventAsync(EntityChangedEventData<BaseAppTenant> eventData)
    {
        using var _ = DataFilter.Disable();
        var index = TenantsIndex;
        if (index == null)
        {
            return;
        }

        var entity = eventData.Entity;
        var docs = new[] { entity };
        var mapped = await AsyncMapper.MapAsync(docs: docs);
        var task = eventData switch
        {
            EntityCreatedEventData<BaseAppTenant>
                or EntityUpdatedEventData<BaseAppTenant>
                => await index.UpdateDocumentsJsonAsync(
                    documents: JsonSerialize(values: mapped),
                    primaryKey: nameof(AppTenantDto.Id)
                ),
            EntityDeletedEventData<BaseAppTenant>
                => await index.DeleteDocumentsAsync(documentIds: docs.Select(selector: x => x.Id.ToString())),
            _ => throw new InvalidOperationException(),
        };
        await index.WaitForTaskAsync(taskUid: task.TaskUid);
    }

    public async Task HandleEventAsync(EntityChangedEventData<Tenant> eventData)
    {
        using var _ = DataFilter.Disable();
        var index = TenantsIndex;
        if (index == null)
        {
            return;
        }

        var entity = eventData.Entity;
        var docs = new[] { entity };
        var mapped = await AsyncMapper.MapAsync(docs: docs);

        TaskInfo task = eventData switch
        {
            EntityCreatedEventData<Tenant>
                or EntityUpdatedEventData<Tenant>
                => await index.UpdateDocumentsJsonAsync(
                    documents: JsonSerialize(values: mapped),
                    primaryKey: nameof(AppTenantDto.Id)
                ),
            EntityDeletedEventData<Tenant>
                => await index.DeleteDocumentsAsync(documentIds: docs.Select(selector: x => x.Id.ToString())),
            _ => throw new InvalidOperationException(),
        };
        await index.WaitForTaskAsync(taskUid: task.TaskUid);
    }

    #endregion

    public async Task HandleEventAsync(EntityChangedEventData<Document> eventData)
    {
        using var _ = DataFilter.Disable();
        var client = Client;
        if (client == null)
        {
            return;
        }

        var entity = eventData.Entity;
        var docs = new[] { entity };
        foreach (
            var group in (await AsyncMapper.MapMeiliDocumentsAsync(docs: docs)).GroupBy(
                keySelector: x => x.Info.Language639_1Code
            )
        )
        {
            var index = DocumentsIndex(lang: group.Key ?? string.Empty, client: client);
            var items = group.ToList();
            var task = eventData switch
            {
                EntityCreatedEventData<Document>
                    or EntityUpdatedEventData<Document>
                    => await index.UpdateDocumentsJsonAsync(
                        documents: JsonSerialize(values: items),
                        primaryKey: nameof(DocumentDto.Id)
                    ),
                EntityDeletedEventData<Document>
                    => await index.DeleteDocumentsAsync(documentIds: items.Select(selector: x => x.Id.ToString())),
                _ => throw new InvalidOperationException(),
            };
            await index.WaitForTaskAsync(taskUid: task.TaskUid);
        }
    }

    public async Task HandleEventAsync(EntityChangedEventData<LibraryLoanEntry> eventData)
    {
        using var _ = DataFilter.Disable();
        var index = LoansIndex;
        if (index == null)
        {
            return;
        }

        var entity = eventData.Entity;
        var docs = new[] { entity };

        var mapped = await AsyncMapper.MapAsync(docs: docs);

        var task = eventData switch
        {
            EntityCreatedEventData<LibraryLoanEntry>
                or EntityUpdatedEventData<LibraryLoanEntry>
                => await index.UpdateDocumentsJsonAsync(
                    documents: JsonSerialize(values: mapped),
                    primaryKey: nameof(FullLoanDetailsDto.Id)
                ),
            EntityDeletedEventData<LibraryLoanEntry>
                => await index.DeleteDocumentsAsync(documentIds: docs.Select(selector: x => x.Id.ToString())),
            _ => throw new InvalidOperationException(),
        };
        await index.WaitForTaskAsync(taskUid: task.TaskUid);
    }

    public async Task HandleEventAsync(EntityChangedEventData<AppTenantDocumentEntry> eventData)
    {
        using var _ = DataFilter.Disable();
        var client = Client;
        if (client == null)
        {
            return;
        }

        var entity = eventData.Entity;
        var docId = entity.DocumentId;
        var allDocIds = new[] { docId }.ToHashSet();

        foreach (
            var group in (await AsyncMapper.MapMeiliDocumentsAsync(docIds: allDocIds)).GroupBy(
                keySelector: x => x.Info.Language639_1Code
            )
        )
        {
            var index = DocumentsIndex(lang: group.Key ?? string.Empty, client: client);
            var items = group.ToList();
            var task = eventData switch
            {
                EntityCreatedEventData<AppTenantDocumentEntry>
                    or EntityUpdatedEventData<AppTenantDocumentEntry>
                    => await index.UpdateDocumentsJsonAsync(
                        documents: JsonSerialize(values: items),
                        primaryKey: nameof(DocumentDto.Id)
                    ),
                EntityDeletedEventData<AppTenantDocumentEntry>
                    => await index.DeleteDocumentsAsync(documentIds: items.Select(selector: x => x.Id.ToString())),
                _ => throw new InvalidOperationException(),
            };
            await index.WaitForTaskAsync(taskUid: task.TaskUid);
        }
    }

    public async Task HandleEventAsync(EntityChangedEventData<Person> eventData)
    {
        var entity = eventData.Entity;
        var index = PeopleIndex;
        if (index == null)
        {
            return;
        }
        var docs = new[] { entity };

        var mapped = await AsyncMapper.MapAsync(docs: docs);
        var task = eventData switch
        {
            EntityCreatedEventData<Person>
                or EntityUpdatedEventData<Person>
                => await index.UpdateDocumentsJsonAsync(
                    documents: JsonSerialize(values: mapped),
                    primaryKey: nameof(PersonDto.Id)
                ),
            EntityDeletedEventData<Person>
                => await index.DeleteDocumentsAsync(documentIds: docs.Select(selector: x => x.Id.ToString())),
            _ => throw new InvalidOperationException(),
        };
        await index.WaitForTaskAsync(taskUid: task.TaskUid);
        
    }
}