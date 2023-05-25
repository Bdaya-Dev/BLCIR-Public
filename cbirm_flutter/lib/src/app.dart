import 'dart:ui';

import 'package:cbirm_flutter/common.dart';
import 'package:go_router/go_router.dart';
import 'pages/splash.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = getIt<BdayaAppThemeServiceBase>();
    final locale = themeService.locale.of(context);
    //final themeMode = themeService.themeMode.of(context);
    return MaterialApp.router(
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Blockchain Library System',
      builder: (context, child) => SplashScreen(child: child),
      routerConfig: getIt<GoRouter>(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: locale,
      themeMode: ThemeMode.light,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorName.lightC1,
          primary: ColorName.lightC1,
          secondary: ColorName.lightC4,
          onSecondary: ColorName.lightC1,
          // onPrimary: ColorName.lightC5,
        ),
        useMaterial3: true,
      ).copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
      darkTheme: ThemeData.from(
        colorScheme: const ColorScheme.dark(
          primary: ColorName.lightC4,
          onPrimary: ColorName.darkC4,
        ),
        useMaterial3: true,
      ),
      supportedLocales: const [
        Locale('en', 'GB'),
      ],
    );
  }
}
