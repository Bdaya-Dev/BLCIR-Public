using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using JetBrains.Annotations;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Localization;
using OpenIddict.Abstractions;
using Volo.Abp;
using Volo.Abp.Authorization.Permissions;
using Volo.Abp.Data;
using Volo.Abp.DependencyInjection;
using Volo.Abp.OpenIddict.Applications;
using Volo.Abp.PermissionManagement;
using Volo.Abp.Uow;

namespace Bdaya.BLCIRM.OpenIddict;

/* Creates initial data that is needed to property run the application
 * and make client-to-server communication possible.
 */
public class OpenIddictDataSeedContributor : IDataSeedContributor, ITransientDependency
{
    private readonly IConfiguration _configuration;
    private readonly IAbpApplicationManager _applicationManager;
    private readonly IOpenIddictScopeManager _scopeManager;
    private readonly IPermissionDataSeeder _permissionDataSeeder;
    private IStringLocalizer<OpenIddictResponse> L { get; }

    public OpenIddictDataSeedContributor(
        IConfiguration configuration,
        IAbpApplicationManager applicationManager,
        IOpenIddictScopeManager scopeManager,
        IPermissionDataSeeder permissionDataSeeder,
        IStringLocalizer<OpenIddictResponse> l
    )
    {
        _configuration = configuration;
        _applicationManager = applicationManager;
        _scopeManager = scopeManager;
        _permissionDataSeeder = permissionDataSeeder;
        L = l;
    }

    [UnitOfWork]
    public virtual async Task SeedAsync(DataSeedContext context)
    {
        await CreateScopesAsync();
        await CreateApplicationsAsync();
    }

    private async Task CreateScopesAsync()
    {
        if (await _scopeManager.FindByNameAsync(name: "BLCIRM") == null)
        {
            await _scopeManager.CreateAsync(
                descriptor: new OpenIddictScopeDescriptor
                {
                    Name = "BLCIRM",
                    DisplayName = "BLCIRM API",
                    Resources = { "BLCIRM" }
                }
            );
        }
    }

    private async Task CreateApplicationsAsync()
    {
        var commonScopes = new List<string>
        {
            OpenIddictConstants.Permissions.Scopes.Address,
            OpenIddictConstants.Permissions.Scopes.Email,
            OpenIddictConstants.Permissions.Scopes.Phone,
            OpenIddictConstants.Permissions.Scopes.Profile,
            OpenIddictConstants.Permissions.Scopes.Roles,
            "BLCIRM"
        };

        var configurationSection = _configuration.GetSection(key: "OpenIddict:Applications");

        //Web Client
        var webClientId = configurationSection[key: "BLCIRM_Web:ClientId"];
        if (!webClientId.IsNullOrWhiteSpace())
        {
            var webClientRootUrl = configurationSection[key: "BLCIRM_Web:RootUrl"].EnsureEndsWith(c: '/');

            /* BLCIRM_Web client is only needed if you created a tiered
             * solution. Otherwise, you can delete this client. */
            await CreateApplicationAsync(
                name: webClientId!,
                type: OpenIddictConstants.ClientTypes.Confidential,
                consentType: OpenIddictConstants.ConsentTypes.Implicit,
                displayName: "Web Application",
                secret: configurationSection[key: "BLCIRM_Web:ClientSecret"] ?? "1q2w3e*",
                grantTypes: new List<string> //Hybrid flow
                {
                    OpenIddictConstants.GrantTypes.AuthorizationCode,
                    OpenIddictConstants.GrantTypes.Implicit
                },
                scopes: commonScopes,
                redirectUri: $"{webClientRootUrl}signin-oidc",
                clientUri: webClientRootUrl,
                postLogoutRedirectUri: $"{webClientRootUrl}signout-callback-oidc"
            );
        }

        //Console Test / Angular Client
        var consoleAndAngularClientId = configurationSection[key: "BLCIRM_App:ClientId"];
        if (!consoleAndAngularClientId.IsNullOrWhiteSpace())
        {
            var consoleAndAngularClientRootUrl = configurationSection[
                key: "BLCIRM_App:RootUrl"
            ]?.TrimEnd(trimChar: '/');
            await CreateApplicationAsync(
                name: consoleAndAngularClientId!,
                type: OpenIddictConstants.ClientTypes.Public,
                consentType: OpenIddictConstants.ConsentTypes.Implicit,
                displayName: "Console Test / Angular Application",
                secret: null,
                grantTypes: new List<string>
                {
                    OpenIddictConstants.GrantTypes.AuthorizationCode,
                    OpenIddictConstants.GrantTypes.Password,
                    OpenIddictConstants.GrantTypes.ClientCredentials,
                    OpenIddictConstants.GrantTypes.RefreshToken
                },
                scopes: commonScopes,
                redirectUri: consoleAndAngularClientRootUrl.EnsureEndsWith(c: '/') + "auth.html",
                clientUri: consoleAndAngularClientRootUrl,
                postLogoutRedirectUri: consoleAndAngularClientRootUrl.EnsureEndsWith(c: '/') + "signout-callback.html"
            );
        }

        // Blazor Client
        var blazorClientId = configurationSection[key: "BLCIRM_Blazor:ClientId"];
        if (!blazorClientId.IsNullOrWhiteSpace())
        {
            var blazorRootUrl = configurationSection[key: "BLCIRM_Blazor:RootUrl"]!.TrimEnd(trimChar: '/');

            await CreateApplicationAsync(
                name: blazorClientId!,
                type: OpenIddictConstants.ClientTypes.Public,
                consentType: OpenIddictConstants.ConsentTypes.Implicit,
                displayName: "Blazor Application",
                secret: null,
                grantTypes: new List<string> { OpenIddictConstants.GrantTypes.AuthorizationCode, },
                scopes: commonScopes,
                redirectUri: $"{blazorRootUrl}/authentication/login-callback",
                clientUri: blazorRootUrl,
                postLogoutRedirectUri: $"{blazorRootUrl}/authentication/logout-callback"
            );
        }

        // Blazor Server Tiered Client
        var blazorServerTieredClientId = configurationSection[key: "BLCIRM_BlazorServerTiered:ClientId"];
        if (!blazorServerTieredClientId.IsNullOrWhiteSpace())
        {
            var blazorServerTieredRootUrl = configurationSection[
                key: "BLCIRM_BlazorServerTiered:RootUrl"
            ].EnsureEndsWith(c: '/');

            await CreateApplicationAsync(
                name: blazorServerTieredClientId!,
                type: OpenIddictConstants.ClientTypes.Confidential,
                consentType: OpenIddictConstants.ConsentTypes.Implicit,
                displayName: "Blazor Server Application",
                secret: configurationSection[key: "BLCIRM_BlazorServerTiered:ClientSecret"] ?? "1q2w3e*",
                grantTypes: new List<string> //Hybrid flow
                {
                    OpenIddictConstants.GrantTypes.AuthorizationCode,
                    OpenIddictConstants.GrantTypes.Implicit
                },
                scopes: commonScopes,
                redirectUri: $"{blazorServerTieredRootUrl}signin-oidc",
                clientUri: blazorServerTieredRootUrl,
                postLogoutRedirectUri: $"{blazorServerTieredRootUrl}signout-callback-oidc"
            );
        }

        // Swagger Client
        var swaggerClientId = configurationSection[key: "BLCIRM_Swagger:ClientId"];
        if (!swaggerClientId.IsNullOrWhiteSpace())
        {
            var swaggerRootUrl = configurationSection[key: "BLCIRM_Swagger:RootUrl"]!.TrimEnd(trimChar: '/');

            await CreateApplicationAsync(
                name: swaggerClientId!,
                type: OpenIddictConstants.ClientTypes.Public,
                consentType: OpenIddictConstants.ConsentTypes.Implicit,
                displayName: "Swagger Application",
                secret: null,
                grantTypes: new List<string> { OpenIddictConstants.GrantTypes.AuthorizationCode, },
                scopes: commonScopes,
                redirectUri: $"{swaggerRootUrl}/swagger/oauth2-redirect.html",
                clientUri: swaggerRootUrl
            );
        }
    }

    private async Task CreateApplicationAsync(
        [NotNull] string name,
        [NotNull] string type,
        [NotNull] string consentType,
        string displayName,
        string? secret,
        List<string> grantTypes,
        List<string> scopes,
        string? clientUri = null,
        string? redirectUri = null,
        string? postLogoutRedirectUri = null,
        List<string>? permissions = null
    )
    {
        if (
            !string.IsNullOrEmpty(value: secret)
            && string.Equals(
                a: type,
                b: OpenIddictConstants.ClientTypes.Public,
                comparisonType: StringComparison.OrdinalIgnoreCase
            )
        )
        {
            throw new BusinessException(code: L[name: "NoClientSecretCanBeSetForPublicApplications"]);
        }

        if (
            string.IsNullOrEmpty(value: secret)
            && string.Equals(
                a: type,
                b: OpenIddictConstants.ClientTypes.Confidential,
                comparisonType: StringComparison.OrdinalIgnoreCase
            )
        )
        {
            throw new BusinessException(code: L[name: "TheClientSecretIsRequiredForConfidentialApplications"]);
        }

        if (
            !string.IsNullOrEmpty(value: name)
            && await _applicationManager.FindByClientIdAsync(identifier: name) != null
        )
        {
            return;
            //throw new BusinessException(L["TheClientIdentifierIsAlreadyTakenByAnotherApplication"]);
        }

        var client = await _applicationManager.FindByClientIdAsync(identifier: name);
        if (client == null)
        {
            var application = new AbpApplicationDescriptor
            {
                ClientId = name,
                Type = type,
                ClientSecret = secret,
                ConsentType = consentType,
                DisplayName = displayName,
                ClientUri = clientUri,
            };

            Check.NotNullOrEmpty(value: grantTypes, parameterName: nameof(grantTypes));
            Check.NotNullOrEmpty(value: scopes, parameterName: nameof(scopes));

            if (
                new[]
                {
                    OpenIddictConstants.GrantTypes.AuthorizationCode,
                    OpenIddictConstants.GrantTypes.Implicit
                }.All(predicate: grantTypes.Contains)
            )
            {
                application.Permissions.Add(
                    item: OpenIddictConstants.Permissions.ResponseTypes.CodeIdToken
                );

                if (
                    string.Equals(
                        a: type,
                        b: OpenIddictConstants.ClientTypes.Public,
                        comparisonType: StringComparison.OrdinalIgnoreCase
                    )
                )
                {
                    application.Permissions.Add(
                        item: OpenIddictConstants.Permissions.ResponseTypes.CodeIdTokenToken
                    );
                    application.Permissions.Add(
                        item: OpenIddictConstants.Permissions.ResponseTypes.CodeToken
                    );
                }
            }

            if (!redirectUri.IsNullOrWhiteSpace() || !postLogoutRedirectUri.IsNullOrWhiteSpace())
            {
                application.Permissions.Add(item: OpenIddictConstants.Permissions.Endpoints.Logout);
            }

            foreach (var grantType in grantTypes)
            {
                if (grantType == OpenIddictConstants.GrantTypes.AuthorizationCode)
                {
                    application.Permissions.Add(
                        item: OpenIddictConstants.Permissions.GrantTypes.AuthorizationCode
                    );
                    application.Permissions.Add(item: OpenIddictConstants.Permissions.ResponseTypes.Code);
                }

                if (
                    grantType == OpenIddictConstants.GrantTypes.AuthorizationCode
                    || grantType == OpenIddictConstants.GrantTypes.Implicit
                )
                {
                    application.Permissions.Add(
                        item: OpenIddictConstants.Permissions.Endpoints.Authorization
                    );
                }

                if (
                    grantType == OpenIddictConstants.GrantTypes.AuthorizationCode
                    || grantType == OpenIddictConstants.GrantTypes.ClientCredentials
                    || grantType == OpenIddictConstants.GrantTypes.Password
                    || grantType == OpenIddictConstants.GrantTypes.RefreshToken
                    || grantType == OpenIddictConstants.GrantTypes.DeviceCode
                )
                {
                    application.Permissions.Add(item: OpenIddictConstants.Permissions.Endpoints.Token);
                    application.Permissions.Add(
                        item: OpenIddictConstants.Permissions.Endpoints.Revocation
                    );
                    application.Permissions.Add(
                        item: OpenIddictConstants.Permissions.Endpoints.Introspection
                    );
                }

                if (grantType == OpenIddictConstants.GrantTypes.ClientCredentials)
                {
                    application.Permissions.Add(
                        item: OpenIddictConstants.Permissions.GrantTypes.ClientCredentials
                    );
                }

                if (grantType == OpenIddictConstants.GrantTypes.Implicit)
                {
                    application.Permissions.Add(
                        item: OpenIddictConstants.Permissions.GrantTypes.Implicit
                    );
                }

                if (grantType == OpenIddictConstants.GrantTypes.Password)
                {
                    application.Permissions.Add(
                        item: OpenIddictConstants.Permissions.GrantTypes.Password
                    );
                }

                if (grantType == OpenIddictConstants.GrantTypes.RefreshToken)
                {
                    application.Permissions.Add(
                        item: OpenIddictConstants.Permissions.GrantTypes.RefreshToken
                    );
                }

                if (grantType == OpenIddictConstants.GrantTypes.DeviceCode)
                {
                    application.Permissions.Add(
                        item: OpenIddictConstants.Permissions.GrantTypes.DeviceCode
                    );
                    application.Permissions.Add(item: OpenIddictConstants.Permissions.Endpoints.Device);
                }

                if (grantType == OpenIddictConstants.GrantTypes.Implicit)
                {
                    application.Permissions.Add(
                        item: OpenIddictConstants.Permissions.ResponseTypes.IdToken
                    );
                    if (
                        string.Equals(
                            a: type,
                            b: OpenIddictConstants.ClientTypes.Public,
                            comparisonType: StringComparison.OrdinalIgnoreCase
                        )
                    )
                    {
                        application.Permissions.Add(
                            item: OpenIddictConstants.Permissions.ResponseTypes.IdTokenToken
                        );
                        application.Permissions.Add(
                            item: OpenIddictConstants.Permissions.ResponseTypes.Token
                        );
                    }
                }
            }

            var buildInScopes = new[]
            {
                OpenIddictConstants.Permissions.Scopes.Address,
                OpenIddictConstants.Permissions.Scopes.Email,
                OpenIddictConstants.Permissions.Scopes.Phone,
                OpenIddictConstants.Permissions.Scopes.Profile,
                OpenIddictConstants.Permissions.Scopes.Roles
            };

            foreach (var scope in scopes)
            {
                if (buildInScopes.Contains(value: scope))
                {
                    application.Permissions.Add(item: scope);
                }
                else
                {
                    application.Permissions.Add(
                        item: OpenIddictConstants.Permissions.Prefixes.Scope + scope
                    );
                }
            }

            if (redirectUri != null)
            {
                if (!redirectUri.IsNullOrEmpty())
                {
                    if (
                        !Uri.TryCreate(uriString: redirectUri, uriKind: UriKind.Absolute, result: out var uri)
                        || !uri.IsWellFormedOriginalString()
                    )
                    {
                        throw new BusinessException(code: L[name: "InvalidRedirectUri", arguments: redirectUri]);
                    }

                    if (application.RedirectUris.All(predicate: x => x != uri))
                    {
                        application.RedirectUris.Add(item: uri);
                    }
                }
            }

            if (postLogoutRedirectUri != null)
            {
                if (!postLogoutRedirectUri.IsNullOrEmpty())
                {
                    if (
                        !Uri.TryCreate(uriString: postLogoutRedirectUri, uriKind: UriKind.Absolute, result: out var uri)
                        || !uri.IsWellFormedOriginalString()
                    )
                    {
                        throw new BusinessException(
                            code: L[name: "InvalidPostLogoutRedirectUri", arguments: postLogoutRedirectUri]
                        );
                    }

                    if (application.PostLogoutRedirectUris.All(predicate: x => x != uri))
                    {
                        application.PostLogoutRedirectUris.Add(item: uri);
                    }
                }
            }

            if (permissions != null)
            {
                await _permissionDataSeeder.SeedAsync(
                    providerName: ClientPermissionValueProvider.ProviderName,
                    providerKey: name,
                    grantedPermissions: permissions,
                    tenantId: null
                );
            }

            await _applicationManager.CreateAsync(descriptor: application);
        }
    }
}