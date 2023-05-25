using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.Unicode;
using Bdaya.BLCIRM.State;
using Volo.Abp.Domain.Entities;

namespace Bdaya.BLCIRM;

public abstract record TransactionInfo : IHasParts
{
    /*

    public static string QuickHash(IEnumerable<int> input)
    {
        return HashBytes(input.SelectMany(BitConverter.GetBytes).ToArray());
    }

    public static string QuickHash(int input)
    {
        return HashBytes(BitConverter.GetBytes(input));
    }

    
    */
    public static string QuickHash(IEnumerable<string> input)
    {
        return HashBytes(input: input.SelectMany(selector: Encoding.UTF8.GetBytes).ToArray());
    }

    public static string QuickHash(string input)
    {
        return HashBytes(input: Encoding.UTF8.GetBytes(s: input));
    }

    public static string QuickHash(byte[] bytes)
    {
        return HashBytes(input: bytes);
    }

    private static string HashBytes(byte[] input)
    {
        return Convert.ToHexString(inArray: SHA256.HashData(source: input));
    }

    public abstract IEnumerable<object?> GetParts();

    public IEnumerable<byte> GetByteParts()
    {
        return GetBytes(o: this);
    }

    private static IEnumerable<byte> GetBytes(object? o)
    {
        return o switch
        {
            IHasParts partContainer => GetBytes(o: partContainer.GetParts()),
            IEnumerable<object?> oEnumerable => oEnumerable.SelectMany(selector: GetBytes),
            Guid guid => guid.ToByteArray(),
            int i => BitConverter.GetBytes(value: i),
            decimal d => decimal.GetBits(d: d).SelectMany(selector: BitConverter.GetBytes),
            string str => Encoding.UTF8.GetBytes(s: str),
            null => Enumerable.Empty<byte>(),
            //don't hash unknown types
            _ => Enumerable.Empty<byte>()
        };
    }
}