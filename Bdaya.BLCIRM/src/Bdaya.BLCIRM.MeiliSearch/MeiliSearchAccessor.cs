using Meilisearch;

namespace Bdaya.BLCIRM.MeiliSearch;

using Microsoft.Extensions.Options;
using System.Diagnostics.CodeAnalysis;
using Volo.Abp.DependencyInjection;

[ExposeServices(serviceTypes: new[] { typeof(IMeiliSearchAccessor), typeof(IObjectAccessor<MeilisearchClient?>) })]
public sealed class MeiliSearchAccessor : IMeiliSearchAccessor, ISingletonDependency, IDisposable
{
    private readonly IDisposable? _subDispose;

    private static MeilisearchClient? CreateFromOptions(MeiliSearchOptions o)
    {
        if (o.Url.IsNullOrWhiteSpace() || o.APIKey.IsNullOrWhiteSpace())
        {
            return null;
        }
        return new MeilisearchClient(url: o.Url, apiKey: o.APIKey);
    }

    public MeiliSearchAccessor(IOptionsMonitor<MeiliSearchOptions> options)
    {
        _subDispose = options.OnChange(listener: (o) => Value = CreateFromOptions(o: o));
        Value = CreateFromOptions(o: options.CurrentValue);
    }

    public MeilisearchClient? Value { get; private set; }

    public void Dispose()
    {
        _subDispose?.Dispose();
    }
}
