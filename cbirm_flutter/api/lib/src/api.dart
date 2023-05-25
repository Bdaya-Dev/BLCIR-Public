//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:blcirm_api/src/serializers.dart';
import 'package:blcirm_api/src/auth/api_key_auth.dart';
import 'package:blcirm_api/src/auth/basic_auth.dart';
import 'package:blcirm_api/src/auth/bearer_auth.dart';
import 'package:blcirm_api/src/auth/oauth.dart';
import 'package:blcirm_api/src/api/abp_api_definition_api.dart';
import 'package:blcirm_api/src/api/abp_application_configuration_api.dart';
import 'package:blcirm_api/src/api/abp_application_localization_api.dart';
import 'package:blcirm_api/src/api/abp_tenant_api.dart';
import 'package:blcirm_api/src/api/account_api.dart';
import 'package:blcirm_api/src/api/app_tenant_api.dart';
import 'package:blcirm_api/src/api/documents_api.dart';
import 'package:blcirm_api/src/api/email_settings_api.dart';
import 'package:blcirm_api/src/api/features_api.dart';
import 'package:blcirm_api/src/api/loans_api.dart';
import 'package:blcirm_api/src/api/login_api.dart';
import 'package:blcirm_api/src/api/meili_search_api.dart';
import 'package:blcirm_api/src/api/people_api.dart';
import 'package:blcirm_api/src/api/permissions_api.dart';
import 'package:blcirm_api/src/api/profile_api.dart';
import 'package:blcirm_api/src/api/role_api.dart';
import 'package:blcirm_api/src/api/tenant_api.dart';
import 'package:blcirm_api/src/api/user_api.dart';
import 'package:blcirm_api/src/api/user_lookup_api.dart';
import 'package:blcirm_api/src/api/voting_api.dart';

class BlcirmApi {
  static const String basePath = r'https://localhost:44391';

  final Dio dio;
  final Serializers serializers;

  BlcirmApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor)
              as OAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor)
              as BearerAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor)
              as BasicAuthInterceptor)
          .authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this
                  .dio
                  .interceptors
                  .firstWhere((element) => element is ApiKeyAuthInterceptor)
              as ApiKeyAuthInterceptor)
          .apiKeys[name] = apiKey;
    }
  }

  /// Get AbpApiDefinitionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AbpApiDefinitionApi getAbpApiDefinitionApi() {
    return AbpApiDefinitionApi(dio, serializers);
  }

  /// Get AbpApplicationConfigurationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AbpApplicationConfigurationApi getAbpApplicationConfigurationApi() {
    return AbpApplicationConfigurationApi(dio, serializers);
  }

  /// Get AbpApplicationLocalizationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AbpApplicationLocalizationApi getAbpApplicationLocalizationApi() {
    return AbpApplicationLocalizationApi(dio, serializers);
  }

  /// Get AbpTenantApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AbpTenantApi getAbpTenantApi() {
    return AbpTenantApi(dio, serializers);
  }

  /// Get AccountApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AccountApi getAccountApi() {
    return AccountApi(dio, serializers);
  }

  /// Get AppTenantApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AppTenantApi getAppTenantApi() {
    return AppTenantApi(dio, serializers);
  }

  /// Get DocumentsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DocumentsApi getDocumentsApi() {
    return DocumentsApi(dio, serializers);
  }

  /// Get EmailSettingsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EmailSettingsApi getEmailSettingsApi() {
    return EmailSettingsApi(dio, serializers);
  }

  /// Get FeaturesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FeaturesApi getFeaturesApi() {
    return FeaturesApi(dio, serializers);
  }

  /// Get LoansApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LoansApi getLoansApi() {
    return LoansApi(dio, serializers);
  }

  /// Get LoginApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LoginApi getLoginApi() {
    return LoginApi(dio, serializers);
  }

  /// Get MeiliSearchApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MeiliSearchApi getMeiliSearchApi() {
    return MeiliSearchApi(dio, serializers);
  }

  /// Get PeopleApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PeopleApi getPeopleApi() {
    return PeopleApi(dio, serializers);
  }

  /// Get PermissionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PermissionsApi getPermissionsApi() {
    return PermissionsApi(dio, serializers);
  }

  /// Get ProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProfileApi getProfileApi() {
    return ProfileApi(dio, serializers);
  }

  /// Get RoleApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RoleApi getRoleApi() {
    return RoleApi(dio, serializers);
  }

  /// Get TenantApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TenantApi getTenantApi() {
    return TenantApi(dio, serializers);
  }

  /// Get UserApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserApi getUserApi() {
    return UserApi(dio, serializers);
  }

  /// Get UserLookupApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserLookupApi getUserLookupApi() {
    return UserLookupApi(dio, serializers);
  }

  /// Get VotingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  VotingApi getVotingApi() {
    return VotingApi(dio, serializers);
  }
}
