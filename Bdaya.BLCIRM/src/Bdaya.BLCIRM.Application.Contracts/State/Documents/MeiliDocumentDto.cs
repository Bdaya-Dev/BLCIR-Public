namespace Bdaya.BLCIRM.State;

using System.Collections.Generic;

public class MeiliDocumentDto : DocumentDto
{
    public required List<CompcatTenantEntryDto> Entries { get; set; }
}