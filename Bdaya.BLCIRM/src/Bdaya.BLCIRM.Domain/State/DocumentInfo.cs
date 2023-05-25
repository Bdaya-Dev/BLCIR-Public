using System.Linq;

namespace Bdaya.BLCIRM.State;

using System;
using System.Collections.Generic;

public class DocumentInfo : IHasParts
{
#pragma warning disable CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
    protected DocumentInfo()
    {
    }
#pragma warning restore CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.

    public DocumentInfo(
        string title,
        HashSet<string>? coverImageContentHashes = default,
        HashSet<string>? contentHashes = default,
        Dictionary<string, object?>? metadata = default,
        List<Guid>? authors = default,
        string? language = default
    )
    {
        Title = title;
        CoverImageContentHashes = coverImageContentHashes ?? new HashSet<string>();
        ContentHashes = contentHashes ?? new HashSet<string>();
        Authors = authors ?? new List<Guid>();
        Metadata = metadata ?? new Dictionary<string, object?>();
        Language639_1Code = language;
    }

    public string Title { get; set; }
    public string? Language639_1Code { get; set; }
    public HashSet<string> CoverImageContentHashes { get; set; }
    public HashSet<string> ContentHashes { get; set; }
    public List<Guid> Authors { get; set; }
    public Dictionary<string, object?> Metadata { get; set; }

    public IEnumerable<object?> GetParts()
    {
        return Metadata
            .SelectMany(selector: (x) => Enumerable.Empty<object?>().Append(element: x.Key).Append(element: x.Value))
            .Append(element: Title)
            .Append(element: Language639_1Code)
            .Concat(second: CoverImageContentHashes)
            .Concat(second: ContentHashes)
            .Concat(second: Authors.Cast<object>());
    }
}