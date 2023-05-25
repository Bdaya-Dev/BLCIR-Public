import 'package:cbirm_flutter/common.dart';
import 'package:go_router/go_router.dart';

@lazySingleton
class GoRouterService {
  static const eq = DeepCollectionEquality.unordered();
  final cachedNamedLocation = <int, Uri>{};
  GoRouter get goRouter => getIt<GoRouter>();
  Uri namedLocation(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
  }) {
    final key = Object.hash(name, eq.hash(pathParameters), eq.hash(queryParameters));
    return cachedNamedLocation[key] ??= Uri.parse(
      getIt<GoRouter>()
          .namedLocation(name, pathParameters: pathParameters, queryParameters: queryParameters),
    );
  }
}
