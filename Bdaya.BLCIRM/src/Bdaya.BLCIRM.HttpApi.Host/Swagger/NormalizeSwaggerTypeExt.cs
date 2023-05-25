using System;

namespace Bdaya.BLCIRM;

public static class NormalizeSwaggerTypeExt
{
    public static string NormalizeSwaggerType(this Type t)
    {
        return RemoveSpecialChars(
                s: t.ToString().RemovePreFix(comparisonType: StringComparison.InvariantCultureIgnoreCase, preFixes: "Volo.Abp")
            )
            .ReplaceFirst(search: "AspNetCoreMvc", replace: string.Empty);
    }

    public static bool IsSpecialChar(char c)
    {
        // Need you to fill this out
        return c switch
        {
            '`' or '[' or ']' or '.' => true,
            _ => false,
        };
    }

    public static string RemoveSpecialChars(string s)
    {
        var builder = new System.Text.StringBuilder();
        foreach (var cur in s)
        {
            if (!IsSpecialChar(c: cur))
            {
                builder.Append(value: cur);
            }
        }
        return builder.ToString();
    }
}
