namespace Bdaya.BLCIRM.State;
using System;
using Volo.Abp.Application.Dtos;

public class DocumentMetadataDefDto : FullAuditedEntityDto<string>
{
    public DocumentMetadataType Type { get; set; }
    public required string Title { get; set; }
    public string? Description { get; set; }

    public bool IsSearchable { get; set; }
    public bool IsFilterable { get; set; }
    public bool IsFacet { get; set; }
    public bool DisableTypoTolerance { get; set; }
}
