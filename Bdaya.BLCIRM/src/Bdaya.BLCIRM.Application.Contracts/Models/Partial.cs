namespace Bdaya.BLCIRM.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class RefNullable<T>
{
    public RefNullable(bool hasValue, T? value)
    {
        HasValue = hasValue;
        Value = value;
    }

    public bool HasValue { get; set; }
    public T? Value { get; set; }
}

public static class RefNullableExt
{
    public static bool ShouldUpdate<T>(
        [NotNullWhen(returnValue: true)] this RefNullable<T>? src,
        [NotNullWhen(returnValue: true)] out T? value
    )
    {
        if (src == null)
        {
            value = default;
            return false;
        }
        value = src.HasValue ? src.Value : default;
        return src.HasValue;
    }
}
