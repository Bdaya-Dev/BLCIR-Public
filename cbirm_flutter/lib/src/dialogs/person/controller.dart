import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:blcirm_api/blcirm_api.dart';

import 'package:cbirm_flutter/common.dart';

import 'form.dart';

class PersonControllerParameters {
  final String? initialId;
  final bool isAuthor;

  const PersonControllerParameters({
    required this.initialId,
    required this.isAuthor,
  });
}

@injectable
class PersonController extends BdayaCombinedController {
  final ApiService apiService;
  final PersonControllerParameters params;
  final MeiliSearchService meiliSearchService;

  late final initialModelRx = SharedValue<PersonModel>(
    value: PersonModel(isAuthor: params.isAuthor),
  );

  final formRx = SharedValue<PersonModelForm?>(value: null);

  PersonController(
    @factoryParam this.params,
    this.apiService,
    this.meiliSearchService,
  ) {
    defaultArea.startLoading();
  }

  final detailsRx = SharedValue<BdayaBLCIRMStatePersonDto?>(value: null);

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    registerStream(
      Stream.value(params.initialId)
          .switchMap((value) {
            if (value == null) return Stream.value(null);
            return apiService.api
                .getPeopleApi()
                .apiAppPeopleIdGet(id: value)
                .asStream()
                .map((event) => event.data);
          })
          .wrapWithArea(defaultArea)
          .listen((event) {
            detailsRx.$ = event;
          }),
    );
    registerStream(
      detailsRx.streamWithInitial.map(
        (event) {
          return PersonModel(
            name: event?.info?.name ?? '',
            birthday: event?.info?.birthday?.toDate(),
            countryCodeIso3166: event?.info?.countryCodeIso3166,
          );
        },
      ).listen(
        (event) {
          initialModelRx.$ = event;
        },
      ),
    );
  }

  Future<void> submit(
    BuildContext context, {
    required PersonModelForm form,
  }) async {
    final model = form.model;
    final isAuthor = model.isAuthor == true;
    final personInfoBuilder = BdayaBLCIRMStatePersonInfoDtoBuilder()
      ..birthday = model.birthday?.toDateTime(utc: true)
      ..countryCodeIso3166 = model.countryCodeIso3166
      ..name = model.name
      ..nationalId = model.nationalId;
    final b = isAuthor
        ? BdayaBLCIRMStatePeopleCreateAuthorDto(
            (b) => b..info = personInfoBuilder,
          )
        : $BdayaBLCIRMStatePeopleCreatePersonDto(
            (b) => b..info = personInfoBuilder,
          );
    try {
      startLoading();
      BdayaBLCIRMStateTransactionProposalDto? response;
      if (params.initialId == null) {
        //
        response = await apiService.api
            .getPeopleApi()
            .apiAppPeoplePost(
              bdayaBLCIRMStatePeopleCreatePersonDto: b,
            )
            .then((value) => value.data);
      } else {
        //
        response = await apiService.api
            .getPeopleApi()
            .apiAppPeopleIdPut(
              id: params.initialId!,
              bdayaBLCIRMStatePeopleCreatePersonDto: b,
            )
            .then((value) => value.data);
      }

      final info = response?.info;

      String? latestId;
      if (params.initialId == null) {
        if (isAuthor && info is BdayaBLCIRMCreateAuthorTransactionInfoDto) {
          latestId = info.authorId!;
        } else if (!isAuthor &&
            info is BdayaBLCIRMCreatePersonTransactionInfoDto) {
          latestId = info.personId!;
        }
      } else {
        if (isAuthor && info is BdayaBLCIRMUpdateAuthorTransactionInfoDto) {
          latestId = info.authorId!;
        } else if (!isAuthor &&
            info is BdayaBLCIRMUpdatePersonTransactionInfoDto) {
          latestId = info.personId!;
        }
      }
      if (latestId == null) {
        logger.warning(
            "transaction info is not of proper type: ${info?.dollarType}");
        return;
      }
      // {

      // }

      // ignore: use_build_context_synchronously
      if (!context.mounted) {
        stopLoadingSuccess();
        return;
      }

      final res = await meiliSearchService.people?.getDocument(latestId).then(
            (value) => apiService.api.serializers
                .deserializeWith(BdayaBLCIRMStatePersonDto.serializer, value)!,
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
    required PersonModelForm form,
  }) {
    initialModelRx.update((p0) => p0.copyWith());
  }
}
