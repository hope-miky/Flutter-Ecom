import 'package:addisecom/screens/dashboard/maindashboard.dart';
import 'package:addisecom/screens/login.dart';
import 'package:addisecom/screens/signup.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: LoginScreen,
    ),
    AutoRoute(page: SignupPage),
    AutoRoute(page: MainDashboard, initial: true),
  ],
)
class $AppRouter {}
