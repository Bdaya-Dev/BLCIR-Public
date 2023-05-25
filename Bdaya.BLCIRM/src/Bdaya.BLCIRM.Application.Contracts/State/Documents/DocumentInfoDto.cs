namespace Bdaya.BLCIRM.State;

using System.Collections.Generic;

public class DocumentInfoDto
{
    public required string Title { get; set; }
    public string? Language639_1Code { get; set; }
    public required HashSet<string> CoverImageContentHashes { get; set; }
    public required HashSet<string> ContentHashes { get; set; }
    public required List<AuthorDto> Authors { get; set; }
    public required Dictionary<string, object?> Metadata { get; set; }
}
