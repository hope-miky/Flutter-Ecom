import 'package:addisecom/screens/accounts/accounts.web.dart';
import 'package:addisecom/screens/categories/categoriesList.dart';
import 'package:addisecom/screens/login.dart';
import 'package:addisecom/screens/web/dashboard/dashboard.web.dart';
import 'package:addisecom/screens/web/items/items.web.dart';
import 'package:addisecom/screens/web/maindashboard.web.dart';
import 'package:flutter/material.dart';

class Routes {
  static const root = "/";
  static const dashboard = "main";
  static const dashboardpattern = "/dashboard/";
  static const items = "items";
  static const categories = "categories";
  static const accounts = "accounts";

  get ongeneratedroute => _ongeneratedRoute;
  get onDashboardGeneratedroute => _onDashboardGeneratedRoute;

  Route _ongeneratedRoute(RouteSettings settings) {
    late Widget page;

    if (settings.name == root) {
      page = LoginScreen();
    } else if (settings.name!.contains(dashboardpattern)) {
      var subroute = settings.name!.substring(dashboardpattern.length);
      page = MainDashboardWeb(
        baseroute: subroute,
      );
    }

    return MaterialPageRoute<dynamic>(
      builder: (context) {
        return page;
      },
      settings: settings,
    );
  }

  Route _onDashboardGeneratedRoute(RouteSettings settings) {
    late Widget page;

    switch (settings.name) {
      case items:
        page = ItemsWeb();
        break;

      // case categories:
      //   page = CategoriesWeb();
      //   break;
      case dashboard:
        page = DashboardWeb();
        break;
      case accounts:
        page = AccountsWeb();
        break;
    }

    return MaterialPageRoute<dynamic>(
      builder: (context) {
        return page;
      },
      settings: settings,
    );
  }
}
