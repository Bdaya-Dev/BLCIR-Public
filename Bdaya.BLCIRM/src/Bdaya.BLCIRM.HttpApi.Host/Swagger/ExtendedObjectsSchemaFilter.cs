using Microsoft.OpenApi.Models;
using Swashbuckle.AspNetCore.SwaggerGen;
using Volo.Abp.ObjectExtending;

namespace Bdaya.BLCIRM;

public class ExtendedObjectsSchemaFilter : ISchemaFilter
{
    public void Apply(OpenApiSchema schema, SchemaFilterContext context)
    {
        var type = context.Type;
        var ext = ObjectExtensionManager.Instance.GetProperties(objectType: type);
        if (ext != null && ext.Count > 0)
        {
            const string schemaExtraProps = "extraProperties";
            if (
                schema.Properties.TryGetValue(key: schemaExtraProps, value: out var schemaExtraPropsValue)
                && schemaExtraPropsValue.AdditionalPropertiesAllowed
            )
            {
                foreach (var item in ext)
                {
                    var matchingType = context.SchemaGenerator.GenerateSchema(
                        modelType: item.Type,
                        schemaRepository: context.SchemaRepository
                    );
                    schemaExtraPropsValue.Properties.Add(key: item.Name, value: matchingType);
                }
                schemaExtraPropsValue.AdditionalProperties = null;
                schemaExtraPropsValue.AdditionalPropertiesAllowed = false;
            }
        }
    }
}
