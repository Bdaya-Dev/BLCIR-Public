import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:dio/dio.dart';

class SelfOAuthInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final authService = getIt<AuthService>();
    final token = authService.currentUser.$?.accessToken;
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }
}

@lazySingleton
class ApiService {
  late final BlcirmApi api;
  final config =
      SharedValue<BdayaBLCIRMTenantsMeiliSearchConfigDto?>(value: null);
  final metadata =
      SharedValue(value: <BdayaBLCIRMStateDocumentMetadataDefDto>[]);

  ApiService() {
    const actualBase = appIsProduction
        ? '[REDACTED]'
        : BlcirmApi.basePath;
    api = BlcirmApi(
      basePathOverride: actualBase,
      dio: Dio(BaseOptions(
        baseUrl: actualBase,
        connectTimeout: const Duration(milliseconds: 1000 * 60),
        receiveTimeout: const Duration(milliseconds: 1000 * 60),
      )),
      interceptors: [
        SelfOAuthInterceptor(),
      ],
    );
  }

  Future<void> init() async {
    config.$ = await api
        .getMeiliSearchApi()
        .apiAppMeiliSearchMeiliSearchConfigGet()
        .then((value) => value.data);
    final metadataDefs = await api
        .getDocumentsApi()
        .apiAppDocumentsMetadataDefsGet()
        .then((value) => value.data);
    metadata.$ = metadataDefs?.toList() ?? [];
  }
}
