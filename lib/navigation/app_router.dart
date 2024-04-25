import 'package:apps_satu/pages/detail_page.dart';
import 'package:apps_satu/pages/home_page.dart';
import 'package:apps_satu/pages/unknown_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  // satu method/function untuk mengeluarkan list routing
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/homepage':
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case '/detail':
        return MaterialPageRoute(
          builder: (context) => const DetailPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const UnknownPage(),
        );
    }
  }
}
