import 'package:cbirm_flutter/common.dart';

@lazySingleton
class BooksController extends BdayaCombinedController with MeiliBooksSearch {
  @override
  final ApiService apiService;
  @override
  final MeiliSearchService meiliSearchService;
  final GoRouterService goRouterService;

  BooksController(
    this.apiService,
    this.meiliSearchService,
    this.goRouterService,
  );
}
