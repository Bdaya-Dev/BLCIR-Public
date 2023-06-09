﻿namespace Bdaya.BLCIRM.JsonConverters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Text.Json;
using System.Threading.Tasks;

public class DictionaryStringObjectJsonConverter : JsonConverter<Dictionary<string, object?>>
{
    public override bool CanConvert(Type typeToConvert)
    {
        return typeToConvert == typeof(Dictionary<string, object>)
            || typeToConvert == typeof(Dictionary<string, object?>);
    }

    public Dictionary<string, object?> DoRead(
        ref Utf8JsonReader reader,
        JsonSerializerOptions options
    )
    {
        if (reader.TokenType != JsonTokenType.StartObject)
        {
            throw new JsonException(
                message: $"JsonTokenType was of type {reader.TokenType}, only objects are supported"
            );
        }

        var dictionary = new Dictionary<string, object?>();
        while (reader.Read())
        {
            if (reader.TokenType == JsonTokenType.EndObject)
            {
                return dictionary;
            }

            if (reader.TokenType != JsonTokenType.PropertyName)
            {
                throw new JsonException(message: "JsonTokenType was not PropertyName");
            }
            var propertyName = reader.GetString();

            if (string.IsNullOrWhiteSpace(value: propertyName))
            {
                throw new JsonException(message: "Failed to get property name");
            }

            reader.Read();

            dictionary.Add(key: propertyName!, value: ExtractValue(reader: ref reader, options: options));
        }

        return dictionary;
    }

    public override Dictionary<string, object?> Read(
        ref Utf8JsonReader reader,
        Type typeToConvert,
        JsonSerializerOptions options
    )
    {
        return DoRead(reader: ref reader, options: options);
    }

    public override void Write(
        Utf8JsonWriter writer,
        Dictionary<string, object?> value,
        JsonSerializerOptions options
    )
    {
        // We don't need any custom serialization logic for writing the json.
        // Ideally, this method should not be called at all. It's only called if you
        // supply JsonSerializerOptions that contains this JsonConverter in it's Converters list.
        // Don't do that, you will lose performance because of the cast needed below.
        // Cast to avoid infinite loop: https://github.com/dotnet/docs/issues/19268
        JsonSerializer.Serialize(writer: writer, value: (IReadOnlyDictionary<string, object?>)value, options: options);
    }

    private object? ExtractValue(ref Utf8JsonReader reader, JsonSerializerOptions options)
    {
        switch (reader.TokenType)
        {
            case JsonTokenType.String:
                if (reader.TryGetDateTime(value: out var date))
                {
                    return date;
                }
                return reader.GetString();
            case JsonTokenType.False:
                return false;
            case JsonTokenType.True:
                return true;
            case JsonTokenType.Null:
                return null;
            case JsonTokenType.Number:
                if (reader.TryGetInt64(value: out var result))
                {
                    return result;
                }
                return reader.GetDecimal();
            case JsonTokenType.StartObject:
                return DoRead(reader: ref reader, options: options);
            case JsonTokenType.StartArray:
                var list = new List<object?>();
                while (reader.Read() && reader.TokenType != JsonTokenType.EndArray)
                {
                    list.Add(item: ExtractValue(reader: ref reader, options: options));
                }
                return list;
            default:
                throw new JsonException(message: $"'{reader.TokenType}' is not supported");
        }
    }
}
