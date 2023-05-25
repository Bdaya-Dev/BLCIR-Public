namespace Bdaya.BLCIRM.Tenants;

using Meilisearch;
using System.Collections.Generic;
using Volo.Abp.Application.Dtos;

public class GetAppTenantsListDto
{
    public HashSet<OrgType>? Types { get; set; }
    public bool? Approved { get; set; }

    /// <summary>
    /// Passed to meilisearch
    /// </summary>
    public SearchQuery? SearchQuery { get; set; }
}
