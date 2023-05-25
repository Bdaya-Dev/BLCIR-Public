namespace Bdaya.BLCIRM;

using Bdaya.BLCIRM.MeiliSearch;
using Bdaya.BLCIRM.Permissions;
using Bdaya.BLCIRM.Tenants;
using MS = Meilisearch;
using Microsoft.AspNetCore.Authorization;
using Microsoft.Extensions.Options;
using NUglify.JavaScript.Syntax;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;
using Volo.Abp.ObjectMapping;
using Volo.Abp.TenantManagement;
using Volo.Abp.Threading;
using Volo.Abp.Json.SystemTextJson;
using Volo.Abp;
using Volo.Abp.Auditing;
using Volo.Abp.Domain.Entities;
using System;
using Volo.Abp.Domain.Repositories;
using Bdaya.BLCIRM.State;
using Volo.Abp.AutoMapper;

//using Volo.Abp.ObjectMapping.;

[Authorize(policy: BLCIRMPermissions.MeiliSearch)]
public class MeiliSearchService : BLCIRMAppService
{
    private readonly MeiliSearchIndexNames _indexNames;
    private readonly MeiliSearchOptions _meiliSearchOptions;

    public MeiliSearchService(
        IOptions<MeiliSearchIndexNames> indexNamesOptions,
        IOptions<MeiliSearchOptions> meiliSearchOptions
    )
    {
        _indexNames = indexNamesOptions.Value;
        _meiliSearchOptions = meiliSearchOptions.Value;
    }

    [AllowAnonymous]
    public Task<MeiliSearchConfigDto> GetMeiliSearchConfig()
    {
        return Task.FromResult(
            result: new MeiliSearchConfigDto(
                Url: _meiliSearchOptions.Url,
                ApiKey: _meiliSearchOptions.SearchAPIKey,
                IndexNames: _indexNames
            )
        );
    }
}

public static class TaskInfoExt
{
    public static async Task WaitFor(this Task<MS.TaskInfo> taskTask, MS.MeilisearchClient client)
    {
        await client.WaitForTaskAsync(taskUid: (await taskTask).TaskUid);
    }
}
