namespace Bdaya.BLCIRM.Tenants;

using Bdaya.BLCIRM.MeiliSearch;

public record MeiliSearchConfigDto(string Url, string ApiKey, MeiliSearchIndexNames IndexNames);
