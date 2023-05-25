using System.Linq;

namespace Bdaya.BLCIRM.State;

using System;
using System.Collections.Generic;

public class PersonInfo : IHasParts
{
    public PersonInfo(
        string name,
        string? countryCodeIso3166,
        string? nationalId,
        DateTime? birthday,
        Dictionary<string, object?> metadata
    )
    {
        Name = name;
        CountryCodeIso3166 = countryCodeIso3166;
        NationalId = nationalId;
        Birthday = birthday;
        Metadata = metadata;
    }

    public string Name { get; set; }
    public string? CountryCodeIso3166 { get; set; }
    public string? NationalId { get; set; }
    public DateTime? Birthday { get; set; }
    public Dictionary<string, object?> Metadata { get; set; }

    public IEnumerable<object?> GetParts()
    {
        return Metadata
            .SelectMany(selector: x => Enumerable.Empty<object?>().Append(element: x.Key).Append(element: x.Value))
            .Append(element: Name)
            .Append(element: CountryCodeIso3166)
            .Append(element: NationalId)
            .Append(element: Birthday);
    }
}
