import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:blcirm_api/blcirm_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:cbirm_flutter/common.dart';
import 'package:cbirm_flutter/src/pages/library_details/controller.dart';

import 'package:go_router/go_router.dart';

@lazySingleton
class RegisterDocumentController extends BdayaCombinedController
    with MeiliBooksSearch, DocumentFormControllerMixin {
  //
  @override
  final ApiService apiService;
  @override
  final MeiliSearchService meiliSearchService;
  final LibraryDetailsController libraryDetailsController;

  RegisterDocumentController(
    this.apiService,
    this.meiliSearchService,
    this.libraryDetailsController,
  );

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
    final b = BdayaBLCIRMStateCreateDocumentDtoBuilder()
      ..authors =
          model.authors.map((e) => e.id).whereNotNull().toBuiltSet().toBuilder()
      ..contentHashes = model.contentHashes.toBuiltSet().toBuilder()
      ..coverImageContentHashes =
          model.coverImageContentHashes.toBuiltSet().toBuilder()
      ..extraOwners = SetBuilder<String>()
      ..language6391Code = model.language
      ..title = model.title
      ..metadata = metadataBuilder;
    try {
      final response = await apiService.api
          .getDocumentsApi()
          .apiAppDocumentsPost(
            bdayaBLCIRMStateCreateDocumentDto: b.build(),
          )
          .wrapWithArea(defaultArea, logger)
          .then((value) => value.data);
      final info = response?.info;
      if (info is! BdayaBLCIRMCreateDocumentTransactionInfoDto) {
        logger.warning(
            "Create document transaction info is not of proper type: $info");
        return;
      }
      if (context.mounted) {
        final confirmationRes = await showConfirmationDialog<Object?>(
          context: context,
          title: "Document created successfully!",
          cancelLabel: 'Go to document details',
        );
        logger.fine("Confirmation result: $confirmationRes");
        getIt<GoRouter>().goNamed(
          AppRouteNames.kDashboardBookDetails,
          pathParameters: {
            kBookId: info.documentId!,
            kLibraryId: libraryDetailsController.libraryIdRx.$!,
          },
        );
      }
    } catch (e) {
      await showOkAlertDialog(
        context: context,
        message: "An error occured trying to create the resource",
      );
    }
  }
}
