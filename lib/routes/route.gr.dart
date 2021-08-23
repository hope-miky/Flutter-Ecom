// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../screens/login.dart' as _i3;
import '../screens/mobile/dashboard/maindashboard.mobile.dart' as _i5;
import '../screens/signup.dart' as _i4;
import '../screens/web/maindashboard.web.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    LoginScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<LoginScreenArgs>(
              orElse: () => const LoginScreenArgs());
          return _i3.LoginScreen(key: args.key);
        }),
    SignupRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SignupRouteArgs>(
              orElse: () => const SignupRouteArgs());
          return _i4.SignupPage(key: args.key);
        }),
    MainDashboardMobile.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainDashboardMobileArgs>(
              orElse: () => const MainDashboardMobileArgs());
          return _i5.MainDashboardMobile(key: args.key);
        }),
    MainDashboardWeb.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MainDashboardWebArgs>(
              orElse: () => const MainDashboardWebArgs());
          return _i6.MainDashboardWeb(key: args.key);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(LoginScreen.name, path: '/login-screen'),
        _i1.RouteConfig(SignupRoute.name, path: '/signup-page'),
        _i1.RouteConfig(MainDashboardMobile.name,
            path: '/main-dashboard-mobile'),
        _i1.RouteConfig(MainDashboardWeb.name, path: '/')
      ];
}

class LoginScreen extends _i1.PageRouteInfo<LoginScreenArgs> {
  LoginScreen({_i2.Key? key})
      : super(name, path: '/login-screen', args: LoginScreenArgs(key: key));

  static const String name = 'LoginScreen';
}

class LoginScreenArgs {
  const LoginScreenArgs({this.key});

  final _i2.Key? key;
}

class SignupRoute extends _i1.PageRouteInfo<SignupRouteArgs> {
  SignupRoute({_i2.Key? key})
      : super(name, path: '/signup-page', args: SignupRouteArgs(key: key));

  static const String name = 'SignupRoute';
}

class SignupRouteArgs {
  const SignupRouteArgs({this.key});

  final _i2.Key? key;
}

class MainDashboardMobile extends _i1.PageRouteInfo<MainDashboardMobileArgs> {
  MainDashboardMobile({_i2.Key? key})
      : super(name,
            path: '/main-dashboard-mobile',
            args: MainDashboardMobileArgs(key: key));

  static const String name = 'MainDashboardMobile';
}

class MainDashboardMobileArgs {
  const MainDashboardMobileArgs({this.key});

  final _i2.Key? key;
}

class MainDashboardWeb extends _i1.PageRouteInfo<MainDashboardWebArgs> {
  MainDashboardWeb({_i2.Key? key})
      : super(name, path: '/', args: MainDashboardWebArgs(key: key));

  static const String name = 'MainDashboardWeb';
}

class MainDashboardWebArgs {
  const MainDashboardWebArgs({this.key});

  final _i2.Key? key;
}
