import 'package:addisecom/screens/login.dart';
import 'package:addisecom/screens/mobile/dashboard/maindashboard.mobile.dart';
import 'package:addisecom/screens/signup.dart';
import 'package:addisecom/screens/web/maindashboard.web.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginScreen),
    AutoRoute(page: SignupPage),
    AutoRoute(page: MainDashboardMobile),
    AutoRoute(page: MainDashboardWeb, initial: true),
  ],
)
class $AppRouter {}
