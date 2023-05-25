using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Extensions.DependencyInjection;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Bdaya.BLCIRM.MongoDB;
using Bdaya.BLCIRM.MultiTenancy;
using Volo.Abp.AspNetCore.Mvc.UI.Theme.LeptonXLite;
using Volo.Abp.AspNetCore.Mvc.UI.Theme.LeptonXLite.Bundling;
using Microsoft.OpenApi.Models;
using OpenIddict.Validation.AspNetCore;
using Volo.Abp;
using Volo.Abp.Account;
using Volo.Abp.Account.Web;
using Volo.Abp.AspNetCore.MultiTenancy;
using Volo.Abp.AspNetCore.Mvc;
using Volo.Abp.AspNetCore.Mvc.UI.Bundling;
using Volo.Abp.AspNetCore.Mvc.UI.Theme.Shared;
using Volo.Abp.AspNetCore.Serilog;
using Volo.Abp.Autofac;
using Volo.Abp.Localization;
using Volo.Abp.Modularity;
using Volo.Abp.Swashbuckle;
using Volo.Abp.UI.Navigation.Urls;
using Volo.Abp.VirtualFileSystem;
using Microsoft.AspNetCore.Hosting;
using Volo.Abp.Json.SystemTextJson;
using System.Security.Cryptography.X509Certificates;
using System.Security.Cryptography;
using Bdaya.BLCIRM.MeiliSearch;
using System.Text.Json.Serialization;
using Volo.Abp.Json.SystemTextJson.JsonConverters;
using System.Security.AccessControl;
using OpenIddict.Server;
using System.Threading.Tasks;
using Volo.Abp.OpenIddict.Scopes;
using Microsoft.AspNetCore.Mvc;
using Volo.Abp.OpenIddict.Controllers;
using Swashbuckle.AspNetCore.SwaggerGen;
using Autofac.Core;
using Bdaya.BLCIRM.Swagger;

namespace Bdaya.BLCIRM;

public class AttachScopes
    : IOpenIddictServerHandler<OpenIddictServerEvents.HandleConfigurationRequestContext>
{
    public static OpenIddictServerHandlerDescriptor Descriptor { get; } =
        OpenIddictServerHandlerDescriptor
            .CreateBuilder<OpenIddictServerEvents.HandleConfigurationRequestContext>()
            .UseSingletonHandler<AttachScopes>()
            .SetOrder(order: OpenIddictServerHandlers.Discovery.AttachScopes.Descriptor.Order + 1)
            .SetType(type: OpenIddictServerHandlerType.Custom)
            .Build();

    private readonly IOpenIddictScopeRepository _scopeRepository;

    public AttachScopes(IOpenIddictScopeRepository scopeRepository)
    {
        _scopeRepository = scopeRepository;
    }

    public async ValueTask HandleAsync(
        OpenIddictServerEvents.HandleConfigurationRequestContext context
    )
    {
        if (context is null)
        {
            throw new ArgumentNullException(paramName: nameof(context));
        }

        var scopes = await _scopeRepository.GetListAsync();
        context.Scopes.UnionWith(other: scopes.Select(selector: x => x.Name));
    }
}

[DependsOn(
    dependedTypes: new[]
    {
        typeof(BLCIRMHttpApiModule),
        typeof(AbpAutofacModule),
        typeof(AbpAspNetCoreMultiTenancyModule),
        typeof(BLCIRMApplicationModule),
        typeof(BLCIRMMongoDbModule),
        typeof(AbpAspNetCoreMvcUiLeptonXLiteThemeModule),
        typeof(AbpAccountWebOpenIddictModule),
        typeof(AbpAspNetCoreSerilogModule),
        typeof(AbpSwashbuckleModule)
    }
)]
public class BLCIRMHttpApiHostModule : AbpModule
{
    private static void GenerateEncryptionCertificate()
    {
        using var algorithm = RSA.Create(keySizeInBits: 2048);

        var subject = new X500DistinguishedName(distinguishedName: "CN=Fabrikam Encryption Certificate");
        var request = new CertificateRequest(
            subjectName: subject,
            key: algorithm,
            hashAlgorithm: HashAlgorithmName.SHA256,
            padding: RSASignaturePadding.Pkcs1
        );
        request.CertificateExtensions.Add(
            item: new X509KeyUsageExtension(keyUsages: X509KeyUsageFlags.KeyEncipherment, critical: true)
        );

        var certificate = request.CreateSelfSigned(
            notBefore: DateTimeOffset.UtcNow,
            notAfter: DateTimeOffset.UtcNow.AddYears(years: 20)
        );

        File.WriteAllBytes(
            path: "encryption-certificate.pfx",
            bytes: certificate.Export(contentType: X509ContentType.Pfx, password: string.Empty)
        );
        var fullpath = Path.GetFullPath(path: "encryption-certificate.pfx");
        Console.WriteLine(format: "Created temp encryption certificate at: {0}", arg0: fullpath);
    }

    private static void GenerateSigningCertificate()
    {
        using var algorithm = RSA.Create(keySizeInBits: 2048);

        var subject = new X500DistinguishedName(distinguishedName: "CN=Fabrikam Signing Certificate");
        var request = new CertificateRequest(
            subjectName: subject,
            key: algorithm,
            hashAlgorithm: HashAlgorithmName.SHA256,
            padding: RSASignaturePadding.Pkcs1
        );
        request.CertificateExtensions.Add(
            item: new X509KeyUsageExtension(keyUsages: X509KeyUsageFlags.DigitalSignature, critical: true)
        );

        var certificate = request.CreateSelfSigned(
            notBefore: DateTimeOffset.UtcNow,
            notAfter: DateTimeOffset.UtcNow.AddYears(years: 20)
        );

        File.WriteAllBytes(
            path: "signing-certificate.pfx",
            bytes: certificate.Export(contentType: X509ContentType.Pfx, password: string.Empty)
        );
        var fullpath = Path.GetFullPath(path: "signing-certificate.pfx");
        Console.WriteLine(format: "Created temp signing certificate at: {0}", arg0: fullpath);
    }

    public override void PreConfigureServices(ServiceConfigurationContext context)
    {
        PreConfigure<OpenIddictBuilder>(configureOptions: builder =>
        {
            builder.AddValidation(configuration: options =>
            {
                options.AddAudiences(audiences: "BLCIRM");
                options.UseLocalServer();
                options.UseAspNetCore();
            });
        });
        //GenerateEncryptionCertificate();
        //GenerateSigningCertificate();
        PreConfigure<OpenIddictServerBuilder>(configureOptions: builder =>
        {
            builder.AddEncryptionCertificate(
                certificate: new X509Certificate2(rawData: File.ReadAllBytes(path: "encryption-certificate.pfx"))
            );
            builder.AddSigningCertificate(
                certificate: new X509Certificate2(rawData: File.ReadAllBytes(path: "signing-certificate.pfx"))
            );
            builder.AddEventHandler(descriptor: AttachScopes.Descriptor);
        });
    }

    public override void ConfigureServices(ServiceConfigurationContext context)
    {
        var configuration = context.Services.GetConfiguration();
        var hostingEnvironment = context.Services.GetHostingEnvironment();
        Configure<AbpSystemTextJsonSerializerOptions>(configureOptions: options =>
        {
            options.JsonSerializerOptions.PropertyNamingPolicy = null;
        });
        Configure<JsonOptions>(configureOptions: options =>
        {
            options.JsonSerializerOptions.PropertyNamingPolicy = null;
        });
        ConfigureAuthentication(context: context);
        ConfigureBundles();
        ConfigureUrls(configuration: configuration);
        ConfigureConventionalControllers();
        ConfigureVirtualFileSystem(context: context);
        ConfigureCors(context: context, configuration: configuration, env: hostingEnvironment);
        ConfigureSwaggerServices(context: context, configuration: configuration);
        ConfigureMeiliSearch(configuration: configuration, environment: hostingEnvironment);
    }

    private static void ConfigureAuthentication(ServiceConfigurationContext context)
    {
        context.Services.ForwardIdentityAuthenticationForBearer(
            jwtBearerScheme: OpenIddictValidationAspNetCoreDefaults.AuthenticationScheme
        );
    }

    private void ConfigureBundles()
    {
        Configure<AbpBundlingOptions>(configureOptions: options =>
        {
            options.StyleBundles.Configure(
                bundleName: LeptonXLiteThemeBundles.Styles.Global,
                configureAction: bundle =>
                {
                    bundle.AddFiles(files: "/global-styles.css");
                }
            );
        });
    }

    private void ConfigureUrls(IConfiguration configuration)
    {
        Configure<AppUrlOptions>(configureOptions: options =>
        {
            options.Applications[appName: "MVC"].RootUrl = configuration[key: "App:SelfUrl"];
            options.RedirectAllowedUrls.AddRange(
                collection: configuration[key: "App:RedirectAllowedUrls"]!.Split(separator: ',')
            );

            options.Applications[appName: "Angular"].RootUrl = configuration[key: "App:ClientUrl"];
            options.Applications[appName: "Angular"].Urls[key: AccountUrlNames.PasswordReset] =
                "account/reset-password";
        });
    }

    private void ConfigureVirtualFileSystem(ServiceConfigurationContext context)
    {
        var hostingEnvironment = context.Services.GetHostingEnvironment();

        if (hostingEnvironment.IsDevelopment())
        {
            Configure<AbpVirtualFileSystemOptions>(configureOptions: options =>
            {
                options.FileSets.ReplaceEmbeddedByPhysical<BLCIRMDomainSharedModule>(
                    physicalPath: Path.Combine(
                        path1: hostingEnvironment.ContentRootPath,
                        path2: $"..{Path.DirectorySeparatorChar}Bdaya.BLCIRM.Domain.Shared"
                    )
                );
                options.FileSets.ReplaceEmbeddedByPhysical<BLCIRMDomainModule>(
                    physicalPath: Path.Combine(
                        path1: hostingEnvironment.ContentRootPath,
                        path2: $"..{Path.DirectorySeparatorChar}Bdaya.BLCIRM.Domain"
                    )
                );
                options.FileSets.ReplaceEmbeddedByPhysical<BLCIRMApplicationContractsModule>(
                    physicalPath: Path.Combine(
                        path1: hostingEnvironment.ContentRootPath,
                        path2: $"..{Path.DirectorySeparatorChar}Bdaya.BLCIRM.Application.Contracts"
                    )
                );
                options.FileSets.ReplaceEmbeddedByPhysical<BLCIRMApplicationModule>(
                    physicalPath: Path.Combine(
                        path1: hostingEnvironment.ContentRootPath,
                        path2: $"..{Path.DirectorySeparatorChar}Bdaya.BLCIRM.Application"
                    )
                );
            });
        }
    }

    private void ConfigureConventionalControllers()
    {
        Configure<AbpAspNetCoreMvcOptions>(configureOptions: options =>
        {
            options.ConventionalControllers.Create(assembly: typeof(BLCIRMApplicationModule).Assembly);
        });
    }

    private static void ConfigureSwaggerServices(
        ServiceConfigurationContext context,
        IConfiguration configuration
    )
    {
        var jsonOptions =
            context.Services.ExecutePreConfiguredActions<AbpSystemTextJsonSerializerOptions>();

        var resolver = jsonOptions.JsonSerializerOptions.TypeInfoResolver;
        context.Services
            .AddAbpSwaggerGen()
            .AddSwaggerGen(setupAction: options =>
            {
                /*
            configuration["AuthServer:Authority"],
            new Dictionary<string, string> { { "BLCIRM", "BLCIRM API" } },
                 */
                options.AddSecurityDefinition(
                    name: "openid",
                    securityScheme: new OpenApiSecurityScheme()
                    {
                        Type = SecuritySchemeType.OpenIdConnect,
                        OpenIdConnectUrl = new Uri(
                            uriString: $"/.well-known/openid-configuration",
                            uriKind: UriKind.Relative
                        )
                    }
                );
                options.AddSecurityRequirement(
                    securityRequirement: new OpenApiSecurityRequirement()
                    {
                        {
                            new OpenApiSecurityScheme
                            {
                                Reference = new OpenApiReference
                                {
                                    Type = ReferenceType.SecurityScheme,
                                    Id = "openid"
                                }
                            },
                            Array.Empty<string>()
                        }
                    }
                );
                options.SwaggerDoc(name: "v1", info: new OpenApiInfo { Title = "BLCIRM API", Version = "v1" });

                options.DocInclusionPredicate(predicate: (docName, description) => true);
                options.CustomSchemaIds(schemaIdSelector: type => type.NormalizeSwaggerType());

                options.SupportNonNullableReferenceTypes();
                options.UseAllOfForInheritance();
                options.SchemaFilter<DiscriminatorFilter>(arguments: jsonOptions?.JsonSerializerOptions);

                options.SchemaFilter<ExtendedObjectsSchemaFilter>();
                //options.SchemaFilter<TypeDiscriminatorSchemaFilter>(Array.Empty<object>());
                //options.OperationFilter<SecurityRequirementsOperationFilter>();
                //options.SwaggerGeneratorOptions.SecurityRequirements.Clear();
            });
    }

    private void ConfigureMeiliSearch(IConfiguration configuration, IWebHostEnvironment environment)
    {
        //Configure<MeiliSearchOptions>(configuration.GetRequiredSection("MeiliSearch"));
    }

    private static void ConfigureCors(
        ServiceConfigurationContext context,
        IConfiguration configuration,
        IWebHostEnvironment env
    )
    {
        context.Services.AddCors(setupAction: options =>
        {
            options.AddDefaultPolicy(configurePolicy: builder =>
            {
                if (env.IsDevelopment())
                {
                    builder.AllowAnyOrigin();
                }
                else
                {
                    builder
                        .WithOrigins(
                            origins: configuration[key: "App:CorsOrigins"]!
                                .Split(separator: ",", options: StringSplitOptions.RemoveEmptyEntries)
                                .Select(selector: o => o.RemovePostFix(postFixes: "/"))
                                .ToArray()
                        )
                        .AllowCredentials();
                }
                builder
                    .WithAbpExposedHeaders()
                    .SetIsOriginAllowedToAllowWildcardSubdomains()
                    .AllowAnyHeader()
                    .AllowAnyMethod();
            });
        });
    }

    public override void OnApplicationInitialization(ApplicationInitializationContext context)
    {
        var app = context.GetApplicationBuilder();
        var env = context.GetEnvironment();
        if (!env.IsDevelopment())
        {
            app.Use(
                middleware: (context, next) =>
                {
                    context.Request.Scheme = "https";
                    return next(context: context);
                }
            );
        }
        if (env.IsDevelopment())
        {
            app.UseDeveloperExceptionPage();
        }
        //app.UseCookiePolicy();
        app.UseAbpRequestLocalization(optionsAction: o =>
        {
            o.ApplyCurrentCultureToResponseHeaders = true;
        });

        if (!env.IsDevelopment())
        {
            app.UseErrorPage();
        }

        app.UseCorrelationId();
        app.UseStaticFiles();
        app.UseRouting();
        app.UseCors();
        app.UseAuthentication();
        app.UseAbpOpenIddictValidation();

        if (MultiTenancyConsts.IsEnabled)
        {
            app.UseMultiTenancy();
        }

        app.UseUnitOfWork();
        app.UseAuthorization();
        var envName = env.EnvironmentName;

        app.UseSwagger(setupAction: c =>
        {
            c.PreSerializeFilters.Add(
                item: (swagger, httpReq) =>
                {
                    swagger.Servers ??= new List<OpenApiServer>();
                    var schema = "https";
                    swagger.Servers.Add(
                        item: new OpenApiServer
                        {
                            Url = $"{schema}://{httpReq.Host.Value}",
                            Description = envName
                        }
                    );
                }
            );
        });
        app.UseAbpSwaggerUI(setupAction: c =>
        {
            c.SwaggerEndpoint(url: "/swagger/v1/swagger.json", name: "BLCIRM API");

            var configuration = context.ServiceProvider.GetRequiredService<IConfiguration>();
            c.OAuthClientId(value: configuration[key: "AuthServer:SwaggerClientId"]);
            c.OAuthScopes(scopes: new[] { "openid", "BLCIRM" });
            c.OAuthAdditionalQueryStringParams(
                value: new()
                {
                    [key: "prompt"] = /*"select_account"*/
                        "login"
                }
            );
            c.OAuthUsePkce();
        });

        app.UseAuditing();
        app.UseAbpSerilogEnrichers();
        app.UseConfiguredEndpoints();
    }
}
