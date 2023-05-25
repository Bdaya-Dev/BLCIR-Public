import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:openidconnect/openidconnect.dart';
import 'package:url_launcher/url_launcher.dart';

@lazySingleton
class AuthService with BdayaLoggableMixin, BdayaIsLoadingMixin {
  final ApiService apiService;

  late OpenIdConnectClient client;

  final currentConfig =
      SharedValue<ApplicationConfigurationsApplicationConfigurationDto?>(
    value: null,
  );
  final currentUser = SharedValue<OpenIdIdentity?>(value: null);
  final currentProfile = SharedValue<AccountProfileDto?>(value: null);
  final currentTenantId = SharedValue<String?>(value: null);
  final currentTenant =
      SharedValue<BdayaBLCIRMTenantsAppTenantDto?>(value: null);

  AuthService(this.apiService);

  Future<void> init() async {
    client = await OpenIdConnectClient.create(
      discoveryDocumentUrl:
          '${apiService.api.dio.options.baseUrl}/.well-known/openid-configuration',
      redirectUrl: appIsDebug
          ? 'http://localhost:4200/auth.html'
          : '[REDACTED]',
      clientId: 'BLCIRM_App',
      audiences: ['BLCIRM'],
      scopes: ['openid', 'BLCIRM'],
      autoRefresh: true,
    );
    //based on client changes get the identity
    client.changes
        .map((event) {
          if (event.type == AuthEventTypes.Success ||
              event.type == AuthEventTypes.Refresh) {
            return client.identity;
          } else {
            return null;
          }
        })
        .startWith(client.identity)
        .listen((event) {
          currentUser.$ = event;
          currentTenantId.$ = event?.tenantId;
          logger.info('Identity changed: ${event?.claims}');
        });

    //based on the identity, get the current config
    currentUser.streamWithInitial.switchMap(
      (value) {
        return apiService.api
            .getAbpApplicationConfigurationApi()
            .apiAbpApplicationConfigurationGet(
              includeLocalizationResources: true,
            )
            .asStream()
            .map((event) => event.data)
            .wrapWithArea(defaultArea);
      },
    ).listen((event) {
      currentConfig.$ = event;
      // currentTenantId.$ = event?.currentTenant?.id;
    });
    currentUser.streamWithInitial.switchMap(
      (value) {
        if (value == null) {
          return Stream.value(null);
        }
        return apiService.api
            .getProfileApi()
            .apiAccountMyProfileGet()
            .asStream()
            .map((event) => event.data);
      },
    ).listen((event) {
      currentProfile.$ = event;
      
    });

    //From the currentTenantId, get the current app tenant
    currentTenantId.streamWithInitial.switchMap((tenantId) {
      return tenantId == null
          ? Stream.value(null)
          : apiService.api
              .getAppTenantApi()
              .apiAppAppTenantIdGet(id: tenantId)
              .asStream()
              .map((event) => event.data)
              .wrapWithArea(defaultArea);
    }).listen((event) {
      currentTenant.$ = event;
    });
  }

  Future<OpenIdIdentity?> login({
    required BuildContext context,
    String? tenantId,
  }) async {
    try {
      final authedTenantId = currentTenantId.$;
      if (authedTenantId != null && authedTenantId != tenantId) {
        await logout();
      }
      // ignore: use_build_context_synchronously
      final identity = await client.loginInteractive(
        context: context,
        title: "Login",
        additionalParameters: {
          if (tenantId != null) "__tenant": tenantId,
        },
        prompts: ["login"],
        useWebPopup: true,
      );
      logger.info('Logged in identity: ${identity.claims}');
      return identity;
    } catch (e) {
      return null;
    }
  }

  Future<void> logout() async {
    //

    // final req = LogoutRequest(
    //     idToken: client.identity!.idToken,
    //     configuration: client.configuration!,
    //     state: client.identity!.state,
    //     postLogoutRedirectUrl: Uri.base.toString());
    final url = Uri.parse(client.configuration!.endSessionEndpoint!).replace(
      queryParameters: {
        "id_token_hint": client.identity!.idToken,
        "post_logout_redirect_uri": appIsDebug
            ? 'http://localhost:4200/signout-callback.html'
            : '[REDACTED]',
        "state": client.identity!.state,
      },
    );
    await launchUrl(url);
    await client.logout();
    await OpenIdIdentity.clear();
  }
}

extension BCIRMClaims on OpenIdIdentity {
  String get tenantId => claims['tenantid'];
}
