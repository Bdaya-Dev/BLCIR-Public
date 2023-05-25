import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:blcirm_api/blcirm_api.dart';
import 'package:cbirm_flutter/common.dart';

import 'form.dart';

@lazySingleton
class NewLibraryController extends BdayaCombinedController {
  final ApiService apiService;
  final GoRouterService goRouterService;

  NewLibraryController(this.apiService, this.goRouterService);

  final initialModelRx = SharedValue<NewLibraryModel>(
    value: const NewLibraryModel(
      info: LibraryInfoModel(),
    ),
  );
  final formRx = SharedValue<NewLibraryModelForm?>(value: null);

  Future<void> submit(
    BuildContext context, {
    required NewLibraryModelForm form,
  }) async {
    final model = form.model;
    try {
      startLoading();

      final res = await apiService.api
          .getAppTenantApi()
          .apiAppAppTenantPost(
            bdayaBLCIRMTenantsCreateAppTenantDto:
                BdayaBLCIRMTenantsCreateAppTenantDto(
              (b) => b
                ..type = model.orgType
                //info
                ..info.address = model.info.address
                ..info.creationTime = model.info.creationTime
                ..info.email = model.info.email
                ..info.logo = model.info.logo
                ..info.phone = model.info.phone
                ..info.website = model.info.website
                //creation
                ..createDto.adminEmailAddress = model.email
                ..createDto.adminPassword = model.password
                ..createDto.name = model.name,
            ),
          )
          .wrapWithArea(defaultArea)
          .then((value) => value.data);
      if (res != null && context.mounted) {
        await showOkAlertDialog(
          context: context,
          title: 'Success',
          message:
              'Your tenant has been successfully submitted, please wait for review!',
        );
        goRouterService.goRouter.goNamed(
          AppRouteNames.kLibraryDetails,
          pathParameters: {
            kLibraryId: res.id!,
          },
        );
      }
      stopLoadingSuccess();
    } catch (e, st) {
      stopLoadingError(e, st, logger, "Error submitting new tenant");
    }
  }

  Future<void> reset(
    BuildContext context, {
    required NewLibraryModelForm form,
  }) async {
    initialModelRx.update((p0) => p0.copyWith());
  }
}
