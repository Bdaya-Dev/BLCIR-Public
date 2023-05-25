using Meilisearch;

namespace Bdaya.BLCIRM.MeiliSearch;

using Volo.Abp.DependencyInjection;

public interface IMeiliSearchAccessor : IObjectAccessor<MeilisearchClient?> { }
