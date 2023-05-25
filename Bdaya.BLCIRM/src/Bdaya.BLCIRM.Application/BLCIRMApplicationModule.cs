using Bdaya.BLCIRM.Application.Mapping;
using Bdaya.BLCIRM.MeiliSearch;
using System.Text.Json.Serialization;
using System.Text.Json;
using System;
using System.Text.Json.Serialization.Metadata;
using Volo.Abp.Account;
using Volo.Abp.Authorization.Permissions;
using Volo.Abp.AutoMapper;
using Volo.Abp.FeatureManagement;
using Volo.Abp.Identity;
using Volo.Abp.Json.SystemTextJson;
using Volo.Abp.Modularity;
using Volo.Abp.PermissionManagement;
using Volo.Abp.SettingManagement;
using Volo.Abp.TenantManagement;

namespace Bdaya.BLCIRM;

[DependsOn(
    dependedTypes: new[]
    {
        typeof(BLCIRMDomainModule),
        typeof(AbpAccountApplicationModule),
        typeof(BLCIRMApplicationContractsModule),
        typeof(AbpIdentityApplicationModule),
        typeof(AbpPermissionManagementApplicationModule),
        typeof(AbpTenantManagementApplicationModule),
        typeof(AbpFeatureManagementApplicationModule),
        typeof(AbpSettingManagementApplicationModule)
    }
)]
[DependsOn(dependedTypes: typeof(BLCIRMMeiliSearchModule))]
[DependsOn(dependedTypes: typeof(BLCIRMApplicationMappingModule))]
public class BLCIRMApplicationModule : AbpModule
{
    public override void PreConfigureServices(ServiceConfigurationContext context)
    {
        PreConfigure<AbpSystemTextJsonSerializerOptions>(configureOptions: o =>
        {
            o.JsonSerializerOptions.TypeInfoResolver = new DefaultJsonTypeInfoResolver();
            //o.JsonSerializerOptions.Converters.Insert(0, new PolyJsonConverterFactory());
        });
    }

    public override void ConfigureServices(ServiceConfigurationContext context)
    {
        Configure<AbpAutoMapperOptions>(configureOptions: options =>
        {
            options.AddMaps<BLCIRMApplicationModule>(validate: true);
        });

        Configure<AbpPermissionOptions>(configureOptions: options =>
        {
            options.ValueProviders.Add<GrantTenantListToAllUsersPermissionProvider>();
        });
    }
}

//public class PolyJsonConverterFactory : JsonConverterFactory
//{
//    public override bool CanConvert(Type typeToConvert)
//    {
//        var attr = (JsonPolymorphicAttribute?)Attribute.GetCustomAttribute(
//            typeToConvert,
//            typeof(JsonPolymorphicAttribute)
//        );
//        return attr != null;
//    }

//    public override JsonConverter? CreateConverter(
//        Type typeToConvert,
//        JsonSerializerOptions options
//    )
//    {
//        return (JsonConverter)Activator.CreateInstance(
//            typeof(PolyJsonConverter<>).MakeGenericType(typeToConvert)
//        )!;
//    }
//}


//public class PolyJsonConverter<T> : JsonConverter<T>
//{
//    // public JsonEncodedText DiscriminatorPropertyName { get; set; }
//    // public Type? DefaultType { get; set; }
//    // public Dictionary<JsonEncodedText, Type> SubTypes { get; set; } = new();

//    public override T Read(
//        ref Utf8JsonReader reader,
//        Type typeToConvert,
//        JsonSerializerOptions options
//    )
//    {
//        // Create a reader copy that we can use to find the discriminator value without advancing the original reader
//        var nestedReader = reader;
//        var info = options.GetTypeInfo(typeToConvert);
//        if (nestedReader.TokenType == JsonTokenType.None)
//        {
//            nestedReader.Read();
//        }

//        while (nestedReader.Read())
//        {
//            if (
//                nestedReader.TokenType == JsonTokenType.PropertyName
//                && nestedReader.ValueTextEquals(
//                    info.PolymorphismOptions!.TypeDiscriminatorPropertyName
//                )
//            )
//            {
//                // Advance the reader to the property value
//                nestedReader.Read();

//                // Resolve the type from the discriminator value
//                var subType = GetSubType(ref nestedReader, info);

//                // Perform the actual deserialization with the original reader
//                return (T)JsonSerializer.Deserialize(ref reader, subType, options)!;
//            }
//            else if (
//                nestedReader.TokenType == JsonTokenType.StartObject
//                || nestedReader.TokenType == JsonTokenType.StartArray
//            )
//            {
//                // Skip until TokenType is EndObject/EndArray
//                // Skip() always throws if IsFinalBlock == false, even when it could actually skip.
//                // We therefore use TrySkip() and if that is impossible, we simply return without advancing the original reader.
//                // For reference, see:
//                // https://stackoverflow.com/questions/63038334/how-do-i-handle-partial-json-in-a-jsonconverter-while-using-deserializeasync-on
//                // https://github.com/dotnet/runtime/blob/main/src/libraries/System.Text.Json/src/System/Text/Json/Reader/Utf8JsonReader.cs#L310-L318
//                if (!nestedReader.TrySkip())
//                {
//                    // Do not advance the reader, i.e. do not set reader = nestedReader,
//                    // as that would cause us to have an incomplete object available for full final deserialization.

//                    // NOTE: This does not actually work.
//                    // The System.Text.Json reader will throw that the converter consumed too few bytes.
//                    return default!;
//                }
//            }
//            else if (nestedReader.TokenType == JsonTokenType.EndObject)
//            {
//                // We have exhausted the search within the object for a discriminator but it was not found.
//                break;
//            }
//        }

//        // if (DefaultType is not null)
//        // {
//        //     return (T)JsonSerializer.Deserialize(ref reader, DefaultType, options)!;
//        // }

//        if (reader.IsFinalBlock)
//        {
//            throw new JsonException(
//                $"Unable to find discriminator property '{info.PolymorphismOptions!.TypeDiscriminatorPropertyName}'"
//            );
//        }

//        return default!;
//    }

//    public override void Write(Utf8JsonWriter writer, T value, JsonSerializerOptions options)
//    {
//        JsonSerializer.Serialize<object>(writer, value!, options);
//    }

//    private Type GetSubType(ref Utf8JsonReader reader, JsonTypeInfo typeInfo)
//    {
//        // if (reader.TokenType != JsonTokenType.String)
//        // {
//        //     if (reader.TokenType == JsonTokenType.Null && DefaultType is not null)
//        //     {
//        //         return DefaultType;
//        //     }

//        //     throw new JsonException($"Expected string discriminator value, got '{reader.TokenType}'");
//        // }
//        if (typeInfo.PolymorphismOptions == null)
//        {
//            throw new JsonException("PolymorphismOptions is null");
//        }
//        foreach (var derivedType in typeInfo.PolymorphismOptions.DerivedTypes)
//        {
//            if (reader.ValueTextEquals(derivedType.TypeDiscriminator?.ToString()))
//            {
//                return derivedType.DerivedType;
//            }
//        }
//        throw new JsonException($"'{reader.GetString()}' is not a valid discriminator value");
//    }
//}
