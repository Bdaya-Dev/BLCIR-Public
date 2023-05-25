namespace Bdaya.BLCIRM;
using System.Text.Json;
using System.Text.Json.Serialization;
using System;

public class UnixEpochTimeConverter : JsonConverter<DateTime>
{
    public override DateTime Read(
        ref Utf8JsonReader reader,
        Type typeToConvert,
        JsonSerializerOptions options
    )
    {
        return DateTimeOffset.FromUnixTimeMilliseconds(milliseconds: reader.GetInt64()).UtcDateTime;
    }

    public override void Write(Utf8JsonWriter writer, DateTime value, JsonSerializerOptions options)
    {
        writer.WriteNumberValue(value: new DateTimeOffset(dateTime: value).ToUnixTimeMilliseconds());
    }
}
