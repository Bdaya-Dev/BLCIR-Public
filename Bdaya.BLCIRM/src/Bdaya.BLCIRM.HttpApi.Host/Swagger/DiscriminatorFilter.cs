namespace Bdaya.BLCIRM.Swagger;

using Microsoft.OpenApi.Any;
using Microsoft.OpenApi.Models;
using Swashbuckle.AspNetCore.SwaggerGen;
using System;
using System.Linq;
using System.Numerics;
using System.Text.Json;
using System.Text.Json.Serialization;
using System.Text.Json.Serialization.Metadata;

public class DiscriminatorFilter : ISchemaFilter
{
    private readonly JsonSerializerOptions _options;

    public DiscriminatorFilter(JsonSerializerOptions options)
    {
        _options = options;
    }

    public void Apply(OpenApiSchema schema, SchemaFilterContext context)
    {
        if (schema.AllOf != null && schema.AllOf.Any())
        {
            return;
        }

        if (context.Type == typeof(DateOnly))
        {
            return;
        }

        var options = _options.TypeInfoResolver?.GetTypeInfo(type: context.Type, options: _options);

        var p = options?.PolymorphismOptions;
        if (p == null)
        {
            return;
        }

        schema.Properties.Add(
            key: p.TypeDiscriminatorPropertyName,
            value: new OpenApiSchema()
            {
                Title = "Discriminator Type",
                Type = "string",
                // Enum = p.DerivedTypes
                //     .Select<JsonDerivedType, IOpenApiAny>(
                //         x =>
                //         {
                //             return x.TypeDiscriminator switch
                //             {
                //                 string s => new OpenApiString(s),
                //                 int n => new OpenApiInteger(n),
                //                 double n => new OpenApiDouble(n),
                //                 long n => new OpenApiLong(n),
                //                 null => new OpenApiNull(),
                //                 _
                //                     => throw new ArgumentException(
                //                         $"Type discriminator is not supported: {x.TypeDiscriminator?.GetType()}"
                //                     ),
                //             };
                //         }
                //     )
                //     .ToList(),
            }
        );

        schema.Discriminator = new OpenApiDiscriminator()
        {
            PropertyName = p.TypeDiscriminatorPropertyName,
            Mapping = p.DerivedTypes.ToDictionary(
                keySelector: x =>
                    x.TypeDiscriminator?.ToString()
                    ?? throw new ArgumentNullException(paramName: nameof(x.TypeDiscriminator)),
                elementSelector: x => "#/components/schemas/" + x.DerivedType.NormalizeSwaggerType()
            )
        };
    }
}