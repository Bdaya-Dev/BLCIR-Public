using System;
using System.Collections.Generic;

namespace Bdaya.BLCIRM.State;

public class UpdateDocumentDto
{
    public string? Title { get; set; }
    public HashSet<string>? CoverImageContentHashes { get; set; }
    public HashSet<string>? ContentHashes { get; set; }
    public HashSet<Guid>? Authors { get; set; }
    public Dictionary<string, object?>? Metadata { get; set; }
    public string? Language639_1Code { get; set; }
}