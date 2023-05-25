import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

@lazySingleton
class BookDetailsController extends BdayaCombinedRouteController {
  final bookId = SharedValue<String?>(value: null);
  final bookDetails =
      SharedValue<BdayaBLCIRMStateMeiliDocumentDto?>(value: null);

  // final relatedLibraries = SharedValue(
  //   value: <BdayaBLCIRMStateCompcatTenantEntryDto>[],
  // );

  // final relatedArea = BdayaIsLoadingMixin.createLoadableArea(name: 'related');

  final ApiService apiService;

  final textController = TextEditingController();
  late final textValue = BehaviorSubject.seeded(textController.text);
  final paginationController =
      PagingController<int, ResultContainer<BdayaBLCIRMStateMeiliDocumentDto>>(
    firstPageKey: 0,
  );

  Future<void> refresh() async {
    final f = bookDetails.stream.first;
    bookId.update((p0) => p0);
    await f;
  }

  BookDetailsController(this.apiService);

  @override
  void onRouteInformationChanged(GoRouterRouteMatch route) {
    //
    bookId.$ = route.pathParameters[kBookId];
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    //book details
    registerStream(bookId.streamWithInitial.switchMap((bookId) {
      if (bookId == null) {
        return Stream.value(null);
      }
      return apiService.api
          .getDocumentsApi()
          .apiAppDocumentsIdMeiliMappedDocumentGet(id: bookId)
          .asStream()
          .wrapWithArea(defaultArea);
    }).listen((event) {
      bookDetails.$ = event?.data;
    }));
  }
}
