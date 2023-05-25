import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:blcirm_api/blcirm_api.dart';

import 'package:cbirm_flutter/common.dart';

import 'form.dart';

class CreateLoanParams {
  final String libraryId;
  final BdayaBLCIRMStatePersonDto? person;
  final BdayaBLCIRMStateMeiliDocumentDto? document;

  const CreateLoanParams({
    this.person,
    this.document,
    required this.libraryId,
  });
}

@injectable
class CreateLoanController extends BdayaCombinedController
    with MeiliBooksSearch {
  @override
  final ApiService apiService;
  @override
  final MeiliSearchService meiliSearchService;

  final CreateLoanParams? initialParams;

  final initialModelRx = SharedValue<CreateLoanModel>(
    value: const CreateLoanModel(),
  );
  final formRx = SharedValue<CreateLoanModelForm?>(value: null);
  Future<List<ResultContainer<BdayaBLCIRMStatePersonDto>>> fetchPeoplePage(
    String pattern,
  ) async {
    try {
      final index = meiliSearchService.people;
      if (index == null) {
        return [];
      }
      final res = await index.search(
        pattern,
        attributesToHighlight: ['Info.Name'],
        limit: 50,
      );
      final results = res.asSearchResult().map(
            (src) => ResultContainer(
              object: standardSerializers.deserializeWith(
                BdayaBLCIRMStatePersonDto.serializer,
                src,
              )!,
              original: src,
            ),
          );
      return results.hits;
    } catch (e, st) {
      logger.severe("Error while fetching people Page", e, st);
      rethrow;
    }
  }

  CreateLoanController(
    @factoryParam this.initialParams,
    this.apiService,
    this.meiliSearchService,
  ) {
    if (initialParams != null) {
      initialModelRx.update((p0) => p0.copyWith(
            user: initialParams?.person == null
                ? null
                : ResultContainer(
                    original: const {},
                    object: initialParams!.person!,
                  ),
            document: initialParams?.document == null
                ? null
                : ResultContainer(
                    original: const {},
                    object: initialParams!.document!,
                  ),
          ));
    }
  }

  Future<void> startAddPersonFlow(
    BuildContext context, {
    required CreateLoanModelForm form,
  }) async {
    final res = await PersonView.showModal(
      context,
      isAuthor: false,
      initialId: null,
    );
    if (res != null) {
      form.userValueUpdate(ResultContainer(original: {}, object: res));
    }
  }

  Future<void> submit(
    BuildContext context, {
    required CreateLoanModelForm form,
  }) async {
    final model = form.model;
    final b = BdayaBLCIRMStateCreateLoanDtoBuilder()
      ..documentId = model.document?.object.id
      ..personId = model.user?.object.id
      ..physicalCopies = model.amount
      ..returnDate = model.returnDate?.toDateTime(utc: true);

    try {
      startLoading();
      final response = await apiService.api
          .getLoansApi()
          .apiAppLoansPost(
            bdayaBLCIRMStateCreateLoanDto: b.build(),
          )
          .then((value) => value.data);
      final info = response?.info;
      if (info is! BdayaBLCIRMLoanPhysicalDocumentsTransactionInfoDto) {
        logger.warning(
            "Create loan transaction info is not of proper type: $info");
        return;
      }
      final latestId = info.loanId;
      if (
          // ignore: use_build_context_synchronously
          !context.mounted || latestId == null) {
        stopLoadingSuccess();
        // ignore: use_build_context_synchronously
        Navigator.pop(context, null);
        return;
      }

      final res = await meiliSearchService.loans?.getDocument(latestId).then(
            (value) => apiService.api.serializers.deserializeWith(
              BdayaBLCIRMStateFullLoanDetailsDto.serializer,
              value,
            ),
          );
      stopLoadingSuccess();
      if (context.mounted) {
        // ignore: use_build_context_synchronously
        Navigator.pop(context, res);
      }
    } catch (e, st) {
      stopLoadingError(
        e,
        st,
        logger,
        "An error occured trying to create the author",
      );
      await showOkAlertDialog(
        context: context,
        message: "An error occured trying to create the author",
      );
    }
  }

  void reset(
    BuildContext context, {
    required CreateLoanModelForm form,
  }) {
    initialModelRx.update((p0) => p0.copyWith());
  }
}
