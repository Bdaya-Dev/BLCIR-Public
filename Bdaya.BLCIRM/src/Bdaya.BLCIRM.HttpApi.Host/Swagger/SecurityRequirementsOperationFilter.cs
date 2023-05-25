using System.Collections.Generic;
using System.Linq;
using Microsoft.OpenApi.Models;
using Microsoft.AspNetCore.Authorization;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace Bdaya.BLCIRM;

public class SecurityRequirementsOperationFilter : IOperationFilter
{
    public void Apply(OpenApiOperation operation, OperationFilterContext context)
    {
        // Policy names map to scopes
        var requiredScopes = context.MethodInfo
            .GetCustomAttributes(inherit: true)
            .OfType<AuthorizeAttribute>()
            .Select(selector: attr => attr.Policy)
            .Distinct();

        if (requiredScopes.Any())
        {
            //operation.Responses.Add("401", new OpenApiResponse { Description = "Unauthorized" });
            //operation.Responses.Add("403", new OpenApiResponse { Description = "Forbidden" });

            var oAuthScheme = new OpenApiSecurityScheme
            {
                Reference = new OpenApiReference
                {
                    Type = ReferenceType.SecurityScheme,
                    Id = "openid"
                }
            };

            operation.Security = new List<OpenApiSecurityRequirement>
            {
                new OpenApiSecurityRequirement { [key: oAuthScheme] = new List<string>() }
            };
        }
    }
}
