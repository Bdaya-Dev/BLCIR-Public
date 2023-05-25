import 'common.dart';
import 'injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'init', // default
  preferRelativeImports: false, // default
  asExtension: true, // default
  //to avoid warnings due to https://github.com/Milad-Akarie/injectable/issues/125
  ignoreUnregisteredTypesInPackages: ['cbirm_flutter/common.dart'],
  externalPackageModulesBefore: [
    ExternalModule(BdayaFlutterCommonPackageModule),
  ],
)
void configureDependencies() => getIt.init();
