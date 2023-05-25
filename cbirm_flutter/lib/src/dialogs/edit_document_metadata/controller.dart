import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:blcirm_api/blcirm_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:cbirm_flutter/common.dart';

class EditDocumentMetadataFormParameters {
  final String originalDocumentId;
  final String libraryId;

  EditDocumentMetadataFormParameters({
    required this.originalDocumentId,
    required this.libraryId,
  });
}

@injectable
class EditDocumentMetadataController extends BdayaCombinedController
    with MeiliBooksSearch, DocumentFormControllerMixin {
  final EditDocumentMetadataFormParameters parameters;
  @override
  final ApiService apiService;

  @override
  final MeiliSearchService meiliSearchService;

  final originalBookDetailsRx =
      SharedValue<BdayaBLCIRMStateDocumentDto?>(value: null);

  EditDocumentMetadataController(
    @factoryParam this.parameters,
    this.apiService,
    this.meiliSearchService,
  ) {
    defaultArea.startLoading();
  }

  Future<void> submit(
    BuildContext context, {
    required DocumentModelForm form,
  }) async {
    //
    final model = form.model;
    final metadataBuilder = MapBuilder<String, JsonObject?>();
    for (var entry in model.metadataValues) {
      metadataBuilder[entry.key] =
          entry.value == null ? null : JsonObject(entry.value);
    }

    try {
      final response = await apiService.api
          .getDocumentsApi()
          .apiAppDocumentsIdPut(
            id: parameters.originalDocumentId,
            bdayaBLCIRMStateUpdateDocumentDto:
                BdayaBLCIRMStateUpdateDocumentDto(
              (b) => b
                ..authors = model.authors
                    .map((e) => e.id)
                    .whereNotNull()
                    .toBuiltSet()
                    .toBuilder()
                ..contentHashes = model.contentHashes.toBuiltSet().toBuilder()
                ..coverImageContentHashes =
                    model.coverImageContentHashes.toBuiltSet().toBuilder()
                ..language6391Code = model.language
                ..title = model.title
                ..metadata = metadataBuilder,
            ),
          )
          .wrapWithArea(defaultArea, logger)
          .then((value) => value.data);
      final info = response?.info;
      if (info is! BdayaBLCIRMUpdateDocumentTransactionInfoDto) {
        logger.warning(
            "Update document transaction info is not of proper type: $info");
        return;
      }
      if (context.mounted) {
        Navigator.pop(context, true);
      }
    } catch (e) {
      await showOkAlertDialog(
        context: context,
        message: "An error occured trying to create the resource",
      );
    }
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    registerStream(
      Stream.value(parameters.originalDocumentId)
          .switchMap((value) {
            return apiService.api
                .getDocumentsApi()
                .apiAppDocumentsIdGet(id: value)
                .asStream()
                .map((event) => event.data);
          })
          .wrapWithArea(defaultArea)
          .listen((event) {
            originalBookDetailsRx.$ = event;
          }),
    );
    registerStream(
      originalBookDetailsRx.streamWithInitial.map(
        (event) {
          return DocumentModel(
            title: event?.info?.title ?? '',
            authors: event?.info?.authors?.toList() ?? [],
            contentHashes: event?.info?.contentHashes?.toList() ?? [],
            coverImageContentHashes:
                event?.info?.coverImageContentHashes?.toList() ?? [],
            language: event?.info?.language6391Code,
            metadataValues: event?.info?.metadata?.entries
                    .map(
                        (e) => MetadataValue(key: e.key, value: e.value?.value))
                    .toList() ??
                [],
          );
        },
      ).listen(
        (event) {
          initialModelRx.$ = event;
        },
      ),
    );
  }
}
