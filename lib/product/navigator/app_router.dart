import 'package:auto_route/auto_route.dart';

import '../../feature/allDoctors/all_doctors_view.dart';
import '../../feature/dashboard/dashboard_view.dart';
import '../../feature/docProfile/doc_profile_view.dart';
import '../../feature/home/home_view.dart';
import '../../feature/login/login_view.dart';
import '../../feature/menu/menu_view.dart';
import '../../feature/notifications/notifications_view.dart';
import '../../feature/signIn/sign_in_view.dart';
import '../../feature/signUp/sign_up_view.dart';
import '../constants/app_routes.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "View,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            initial: true, page: LoginRoute.page, path: AppRoutes.routeLogin),
        AutoRoute(page: SignUpRoute.page, path: AppRoutes.routeSignUp),
        AutoRoute(page: SignInRoute.page, path: AppRoutes.routeSignIn),
        AutoRoute(
          page: DashboardRoute.page,
          path: AppRoutes.routeDashboard,
          children: [
            AutoRoute(
                initial: true, page: HomeRoute.page, path: AppRoutes.routeHome),
            AutoRoute(
                page: AllDoctorsRoute.page, path: AppRoutes.routeAllDoctors),
            AutoRoute(page: NotificationsRoute.page, path: AppRoutes.routeNoti),
            AutoRoute(page: MenuRoute.page, path: AppRoutes.routeMenu),
          ],
        ),
        AutoRoute(page: DocProfileRoute.page, path: AppRoutes.routeDocProfile)
      ];
}
