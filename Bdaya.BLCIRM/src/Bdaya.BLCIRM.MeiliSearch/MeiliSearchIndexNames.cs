namespace Bdaya.BLCIRM.MeiliSearch;

public class MeiliSearchIndexNames
{
    public required string Tenants { get; set; }
    public required string Loans { get; set; }
    public required string Documents { get; set; }

    public string DocumentsLang(string lang) => Documents + "_" + lang;

    public required string People { get; set; }
}