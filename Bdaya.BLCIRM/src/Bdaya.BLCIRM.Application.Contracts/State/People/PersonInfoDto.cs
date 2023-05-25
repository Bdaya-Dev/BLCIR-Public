namespace Bdaya.BLCIRM.State;
using System;
using System.Collections.Generic;

public class PersonInfoDto
{
    public required string Name { get; set; }
    public string? CountryCodeIso3166 { get; set; }
    public string? NationalId { get; set; }
    public DateTime? Birthday { get; set; }
    public Dictionary<string, object?>? Metadata { get; set; }
}
