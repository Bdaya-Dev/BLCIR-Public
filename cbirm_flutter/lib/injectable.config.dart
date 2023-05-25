// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cbirm_flutter/common.dart' as _i3;
import 'package:cbirm_flutter/injectable_module.dart' as _i33;
import 'package:cbirm_flutter/src/dialogs/create_loan/controller.dart' as _i17;
import 'package:cbirm_flutter/src/dialogs/cross_tenant_transfer/controller.dart'
    as _i18;
import 'package:cbirm_flutter/src/dialogs/edit_document_metadata/controller.dart'
    as _i19;
import 'package:cbirm_flutter/src/dialogs/person/controller.dart' as _i14;
import 'package:cbirm_flutter/src/pages/_shell/controller.dart' as _i15;
import 'package:cbirm_flutter/src/pages/about_us/controller.dart' as _i4;
import 'package:cbirm_flutter/src/pages/book_details/controller.dart' as _i7;
import 'package:cbirm_flutter/src/pages/books/controller.dart' as _i16;
import 'package:cbirm_flutter/src/pages/home/controller.dart' as _i22;
import 'package:cbirm_flutter/src/pages/libraries/controller.dart' as _i20;
import 'package:cbirm_flutter/src/pages/library_details/controller.dart'
    as _i21;
import 'package:cbirm_flutter/src/pages/library_details/pages/auth/controller.dart'
    as _i24;
import 'package:cbirm_flutter/src/pages/library_details/pages/dashboard/_shell/controller.dart'
    as _i25;
import 'package:cbirm_flutter/src/pages/library_details/pages/dashboard/book_details/controller.dart'
    as _i32;
import 'package:cbirm_flutter/src/pages/library_details/pages/dashboard/book_new/controller.dart'
    as _i23;
import 'package:cbirm_flutter/src/pages/library_details/pages/dashboard/books/controller.dart'
    as _i27;
import 'package:cbirm_flutter/src/pages/library_details/pages/dashboard/home/controller.dart'
    as _i8;
import 'package:cbirm_flutter/src/pages/library_details/pages/dashboard/loans/controller.dart'
    as _i28;
import 'package:cbirm_flutter/src/pages/library_details/pages/dashboard/members/controller.dart'
    as _i29;
import 'package:cbirm_flutter/src/pages/library_details/pages/dashboard/people/controller.dart'
    as _i30;
import 'package:cbirm_flutter/src/pages/library_details/pages/dashboard/settings/controller.dart'
    as _i31;
import 'package:cbirm_flutter/src/pages/library_details/pages/dashboard/voting/controller.dart'
    as _i26;
import 'package:cbirm_flutter/src/pages/new_library/controller.dart' as _i13;
import 'package:cbirm_flutter/src/services/api.dart' as _i5;
import 'package:cbirm_flutter/src/services/auth.dart' as _i6;
import 'package:cbirm_flutter/src/services/go_router.dart' as _i10;
import 'package:cbirm_flutter/src/services/init.dart' as _i11;
import 'package:cbirm_flutter/src/services/meilisearch.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i3.BdayaFlutterCommonPackageModule().init(gh);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i4.AboutUsController>(() => _i4.AboutUsController());
    gh.lazySingleton<_i5.ApiService>(() => _i5.ApiService());
    gh.lazySingleton<_i6.AuthService>(
        () => _i6.AuthService(gh<_i3.ApiService>()));
    gh.lazySingleton<_i7.BookDetailsController>(
        () => _i7.BookDetailsController(gh<_i3.ApiService>()));
    gh.lazySingleton<_i8.DashboardHomeController>(
        () => _i8.DashboardHomeController());
    gh.lazySingleton<_i9.GoRouter>(
        () => registerModule.getRouter(gh<_i3.GoRouterRefreshService>()));
    gh.lazySingleton<_i10.GoRouterService>(() => _i10.GoRouterService());
    gh.lazySingleton<_i11.InitService>(() => _i11.InitService());
    gh.lazySingleton<_i12.MeiliSearchService>(
        () => _i12.MeiliSearchService(gh<_i3.ApiService>()));
    gh.lazySingleton<_i13.NewLibraryController>(() => _i13.NewLibraryController(
          gh<_i3.ApiService>(),
          gh<_i3.GoRouterService>(),
        ));
    gh.factoryParam<_i14.PersonController, _i14.PersonControllerParameters,
        dynamic>((
      params,
      _,
    ) =>
        _i14.PersonController(
          params,
          gh<_i3.ApiService>(),
          gh<_i3.MeiliSearchService>(),
        ));
    gh.lazySingleton<_i15.AppShellController>(() => _i15.AppShellController(
          gh<_i3.GoRouterService>(),
          gh<_i3.AuthService>(),
        ));
    gh.lazySingleton<_i16.BooksController>(() => _i16.BooksController(
          gh<_i3.ApiService>(),
          gh<_i3.MeiliSearchService>(),
          gh<_i3.GoRouterService>(),
        ));
    gh.factoryParam<_i17.CreateLoanController, _i17.CreateLoanParams?, dynamic>(
        (
      initialParams,
      _,
    ) =>
            _i17.CreateLoanController(
              initialParams,
              gh<_i3.ApiService>(),
              gh<_i3.MeiliSearchService>(),
            ));
    gh.factoryParam<_i18.CrossTenantTransferController,
        _i18.CrossTenantTransferFormParameters, dynamic>((
      parameters,
      _,
    ) =>
        _i18.CrossTenantTransferController(
          parameters,
          gh<_i3.ApiService>(),
          gh<_i3.MeiliSearchService>(),
        ));
    gh.factoryParam<_i19.EditDocumentMetadataController,
        _i19.EditDocumentMetadataFormParameters, dynamic>((
      parameters,
      _,
    ) =>
        _i19.EditDocumentMetadataController(
          parameters,
          gh<_i3.ApiService>(),
          gh<_i3.MeiliSearchService>(),
        ));
    gh.lazySingleton<_i20.LibrariesController>(() => _i20.LibrariesController(
          gh<_i3.ApiService>(),
          gh<_i3.MeiliSearchService>(),
          gh<_i3.GoRouterService>(),
        ));
    gh.lazySingleton<_i21.LibraryDetailsController>(
        () => _i21.LibraryDetailsController(
              gh<_i3.ApiService>(),
              gh<_i3.AuthService>(),
              gh<_i3.MeiliSearchService>(),
            ));
    gh.lazySingleton<_i22.PublicHomeController>(() => _i22.PublicHomeController(
          gh<_i3.AppShellController>(),
          gh<_i3.GoRouterService>(),
          gh<_i3.ApiService>(),
        ));
    gh.lazySingleton<_i23.RegisterDocumentController>(
        () => _i23.RegisterDocumentController(
              gh<_i3.ApiService>(),
              gh<_i3.MeiliSearchService>(),
              gh<_i21.LibraryDetailsController>(),
            ));
    gh.lazySingleton<_i24.AuthController>(() => _i24.AuthController(
          gh<_i3.AuthService>(),
          gh<_i21.LibraryDetailsController>(),
        ));
    gh.lazySingleton<_i25.DashboardShellController>(
        () => _i25.DashboardShellController(
              gh<_i3.AuthService>(),
              gh<_i21.LibraryDetailsController>(),
              gh<_i3.GoRouterService>(),
              gh<_i3.ApiService>(),
            ));
    gh.lazySingleton<_i26.DashboardVotingController>(
        () => _i26.DashboardVotingController(
              gh<_i25.DashboardShellController>(),
              gh<_i3.ApiService>(),
              gh<_i3.MeiliSearchService>(),
            ));
    gh.lazySingleton<_i27.DashboardBooksController>(
        () => _i27.DashboardBooksController(
              gh<_i25.DashboardShellController>(),
              gh<_i3.ApiService>(),
              gh<_i3.MeiliSearchService>(),
            ));
    gh.lazySingleton<_i28.DashboardLoansController>(
        () => _i28.DashboardLoansController(
              gh<_i25.DashboardShellController>(),
              gh<_i3.ApiService>(),
              gh<_i3.MeiliSearchService>(),
            ));
    gh.lazySingleton<_i29.DashboardMembersController>(
        () => _i29.DashboardMembersController(
              gh<_i25.DashboardShellController>(),
              gh<_i3.ApiService>(),
            ));
    gh.lazySingleton<_i30.DashboardPeopleController>(
        () => _i30.DashboardPeopleController(
              gh<_i3.ApiService>(),
              gh<_i3.MeiliSearchService>(),
              gh<_i25.DashboardShellController>(),
            ));
    gh.lazySingleton<_i31.DashboardSettingsController>(
        () => _i31.DashboardSettingsController(
              gh<_i25.DashboardShellController>(),
              gh<_i3.ApiService>(),
            ));
    gh.lazySingleton<_i32.DashboardBookDetailsController>(
        () => _i32.DashboardBookDetailsController(
              gh<_i25.DashboardShellController>(),
              gh<_i3.ApiService>(),
              gh<_i3.MeiliSearchService>(),
              gh<_i27.DashboardBooksController>(),
            ));
    return this;
  }
}

class _$RegisterModule extends _i33.RegisterModule {}
