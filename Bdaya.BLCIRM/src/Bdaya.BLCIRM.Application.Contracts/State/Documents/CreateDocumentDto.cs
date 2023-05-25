namespace Bdaya.BLCIRM.State;

using System;
using System.Collections.Generic;

public class CreateDocumentDto
{
    public required string Title { get; set; }
    public HashSet<string>? CoverImageContentHashes { get; set; }
    public HashSet<string>? ContentHashes { get; set; }
    public HashSet<Guid>? Authors { get; set; }
    public Dictionary<string, object?>? Metadata { get; set; }
    public string? Language639_1Code { get; set; }
    public HashSet<Guid>? ExtraOwners { get; set; }
}