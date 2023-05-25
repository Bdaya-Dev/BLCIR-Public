namespace Bdaya.BLCIRM.State;

using System;
using System.Diagnostics.CodeAnalysis;
using Volo.Abp.Domain.Entities.Auditing;

public class DocumentMetadataDef : FullAuditedAggregateRoot<string>
{
#pragma warning disable CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
    protected DocumentMetadataDef() { }
#pragma warning restore CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.

    public DocumentMetadataDef(
        string id,
        string title,
        DocumentMetadataType type,
        string? description = default,
        bool isSearchable = false,
        bool isFilterable = false,
        bool isFacet = false,
        bool disableTypoTolerance = false
    )
        : base(id: id)
    {
        Title = title;
        Type = type;
        Description = description;
        IsSearchable = isSearchable;
        IsFilterable = isFilterable;
        IsFacet = isFacet;
        DisableTypoTolerance = disableTypoTolerance;
    }

    public DocumentMetadataType Type { get; set; }
    public string Title { get; set; }
    public string? Description { get; set; }

    public bool IsSearchable { get; set; }
    public bool IsFilterable { get; set; }
    public bool IsFacet { get; set; }
    public bool DisableTypoTolerance { get; set; }
}
