import 'package:cbirm_flutter/common.dart';
import 'package:cbirm_flutter/src/pages/_shell/view.dart';
import 'package:cbirm_flutter/src/pages/library_details/pages/dashboard/book_details/view.dart';
import 'package:cbirm_flutter/src/pages/new_library/view.dart';
// import 'package:go_router/fix_data.yaml';
import 'pages/about_us/view.dart';
import 'pages/book_details/view.dart';
import 'pages/books/view.dart';
import 'pages/home/view.dart';
import 'pages/libraries/view.dart';
import 'pages/library_details/pages/auth/view.dart';
import 'pages/library_details/pages/dashboard/_shell/view.dart';
import 'pages/library_details/pages/dashboard/book_new/view.dart';
import 'pages/library_details/pages/dashboard/books/view.dart';
import 'pages/library_details/pages/dashboard/home/view.dart';
import 'pages/library_details/pages/dashboard/loans/view.dart';
import 'pages/library_details/pages/dashboard/members/view.dart';
import 'pages/library_details/pages/dashboard/people/view.dart';
import 'pages/library_details/pages/dashboard/settings/view.dart';
import 'pages/library_details/pages/dashboard/voting/view.dart';
import 'pages/library_details/view.dart';
import 'package:go_router/go_router.dart';
// import 'pages/auth/auth_view.dart';
// import 'pages/dashboard/_shell/view.dart';
// import 'pages/dashboard/home/view.dart';
// import 'pages/dashboard/order_details/view.dart';
// import 'pages/dashboard/orders/view.dart';
// import 'pages/public/home/view.dart';

final appShellNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'appShell',
);
final dashboardShellNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'dashboardShell',
);

const kReturnTo = 'returnTo';
const kLibraryId = 'libraryId';
const kBookId = 'documentId';
// const kOrderId = 'orderId';

class AppRouteNames {
  static const initialRoute = '/';

  static const kPublicHome = 'public_home';
  static const kAuth = 'auth';
  static const kLibraries = 'tenants';
  static const kLibraryDetails = 'library_details';
  static const kNewLibrary = 'new_library';

  static const kLibraryDashboard = 'library_dashboard';
  static const kBooks = 'resources';
  static const kBookDetails = 'book_details';
  static const kAboutUs = 'about_us';

  static const kDashboardVoting = '${kLibraryDashboard}_voting';
  static const kDashboardBooks = '${kLibraryDashboard}_books';
  static const kDashboardBookDetails = '${kLibraryDashboard}_book_details';
  static const kDashboardNewBook = '${kLibraryDashboard}_book_new';
  static const kDashboardLoans = '${kLibraryDashboard}_loans';
  static const kDashboardMembers = '${kLibraryDashboard}_members';
  static const kDashboardPeople = '${kLibraryDashboard}_people';
  static const kDashboardSettings = '${kLibraryDashboard}_settings';
}

List<RouteBase> appRoutesList(GoRouterRefreshService goRouterRefreshService) =>
    [
      ShellRoute(
        navigatorKey: appShellNavigatorKey,
        builder: (context, state, child) => HookBuilder(
          builder: (context) => AppShellView(
            controller: useBdayaViewController(),
            child: child,
          ),
        ),
        routes: [
          GoRoute(
            path: '/',
            name: AppRouteNames.kPublicHome,
            builder: (context, state) => HookBuilder(
              builder: (context) => PublicHomeView(
                controller: useBdayaViewController(),
              ),
            ),
          ),
          GoRoute(
            path: '/tenants',
            name: AppRouteNames.kLibraries,
            builder: (context, state) => HookBuilder(
              builder: (context) => LibrariesView(
                controller: useBdayaViewController(),
              ),
            ),
            routes: [
              GoRoute(
                path: 'new',
                name: AppRouteNames.kNewLibrary,
                builder: (context, state) => HookBuilder(
                  builder: (context) => NewLibraryView(
                    controller: useBdayaViewController(),
                  ),
                ),
              ),
              GoRoute(
                path: ':$kLibraryId',
                name: AppRouteNames.kLibraryDetails,
                builder: (context, state) => HookBuilder(
                  builder: (context) => LibraryDetailsView(
                    controller: useBdayaViewController(),
                  ),
                ),
                routes: [
                  GoRoute(
                    path: 'auth',
                    name: AppRouteNames.kAuth,
                    redirect: (context, state) {
                      final authService = getIt<AuthService>();
                      final goRouter = getIt<GoRouter>();
                      final currentTenantId =
                          authService.currentTenantId.of(context);
                      final currentUser = authService.currentUser.of(context);
                      final libraryId = state.pathParameters[kLibraryId]!;
                      if (currentUser == null) {
                        //should auth
                        return null;
                      } else {
                        if (currentTenantId == libraryId) {
                          //redirect to kReturnTo
                          final targetUri = state.queryParameters[kReturnTo] ??
                              goRouter.namedLocation(
                                AppRouteNames.kLibraryDashboard,
                                pathParameters: {
                                  kLibraryId: libraryId,
                                },
                              );
                          return targetUri;
                        } else {
                          //don't redirect, but show a must logout message
                          return null;
                        }
                      }
                    },
                    builder: (context, state) => HookBuilder(
                      builder: (context) => AuthView(
                        controller: useBdayaViewController(),
                      ),
                    ),
                  ),
                  ShellRoute(
                    navigatorKey: dashboardShellNavigatorKey,
                    builder: (context, state, child) {
                      return HookBuilder(
                        builder: (context) => DashboardShellView(
                          controller: useBdayaViewController(),
                          child: child,
                        ),
                      );
                    },
                    routes: [
                      GoRoute(
                        path: 'dashboard',
                        name: AppRouteNames.kLibraryDashboard,
                        builder: (context, state) => HookBuilder(
                          builder: (context) => DashboardHomeView(
                            controller: useBdayaViewController(),
                          ),
                        ),
                        redirect: (context, state) {
                          final router = getIt<GoRouter>();
                          final authService = getIt<AuthService>();
                          final libraryId = state.pathParameters[kLibraryId]!;
                          final currentTenantId =
                              authService.currentTenantId.of(context);
                          final currentUser =
                              authService.currentUser.of(context);

                          if (currentUser == null) {
                            //no user
                            final newUrl = router.namedLocation(
                              AppRouteNames.kAuth,
                              pathParameters: {
                                kLibraryId: libraryId,
                              },
                              queryParameters: {
                                kReturnTo: state.location,
                              },
                            );
                            return newUrl.toString();
                          } else {
                            if (currentTenantId == libraryId) {
                              return null;
                            } else {
                              //has a user, but not with the current library
                              final newUrl = router.namedLocation(
                                AppRouteNames.kAuth,
                                pathParameters: {
                                  kLibraryId: libraryId,
                                },
                                queryParameters: {
                                  kReturnTo: state.location,
                                },
                              );
                              return newUrl.toString();
                            }
                          }
                        },
                        routes: [
                          GoRoute(
                            path: 'voting',
                            name: AppRouteNames.kDashboardVoting,
                            builder: (context, state) => HookBuilder(
                              builder: (context) => DashboardVotingView(
                                controller: useBdayaViewController(),
                              ),
                            ),
                          ),
                          GoRoute(
                            path: 'resources',
                            name: AppRouteNames.kDashboardBooks,
                            builder: (context, state) => HookBuilder(
                              builder: (context) => DashboardBooksView(
                                controller: useBdayaViewController(),
                              ),
                            ),
                            routes: [
                              GoRoute(
                                path: 'new',
                                name: AppRouteNames.kDashboardNewBook,
                                builder: (context, state) => HookBuilder(
                                  builder: (context) => RegisterDocumentView(
                                    controller: useBdayaViewController(),
                                  ),
                                ),
                              ),
                              GoRoute(
                                path: ':$kBookId',
                                name: AppRouteNames.kDashboardBookDetails,
                                builder: (context, state) => HookBuilder(
                                  builder: (context) =>
                                      DashboardBookDetailsView(
                                    controller: useBdayaViewController(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GoRoute(
                            path: 'people',
                            name: AppRouteNames.kDashboardPeople,
                            builder: (context, state) =>
                                DashboardPeopleView.hooked(),
                          ),
                          GoRoute(
                            path: 'members',
                            name: AppRouteNames.kDashboardMembers,
                            builder: (context, state) => HookBuilder(
                              builder: (context) => DashboardMembersView(
                                controller: useBdayaViewController(),
                              ),
                            ),
                          ),
                          GoRoute(
                            path: 'loans',
                            name: AppRouteNames.kDashboardLoans,
                            builder: (context, state) => HookBuilder(
                              builder: (context) => DashboardLoansView(
                                controller: useBdayaViewController(),
                              ),
                            ),
                          ),
                          GoRoute(
                            path: 'settings',
                            name: AppRouteNames.kDashboardSettings,
                            builder: (context, state) => HookBuilder(
                              builder: (context) => DashboardSettingsView(
                                controller: useBdayaViewController(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: '/resources',
            name: AppRouteNames.kBooks,
            builder: (context, state) => HookBuilder(
              builder: (context) => BooksView(
                controller: useBdayaViewController(),
              ),
            ),
            routes: [
              GoRoute(
                path: ':$kBookId',
                name: AppRouteNames.kBookDetails,
                builder: (context, state) => HookBuilder(
                  builder: (context) => BookDetailsView(
                    controller: useBdayaViewController(),
                  ),
                ),
              ),
            ],
          ),
          GoRoute(
            path: '/about-us',
            name: AppRouteNames.kAboutUs,
            builder: (context, state) => HookBuilder(
              builder: (context) => AboutUsView(
                controller: useBdayaViewController(),
              ),
            ),
          ),
        ],
      ),
    ];
