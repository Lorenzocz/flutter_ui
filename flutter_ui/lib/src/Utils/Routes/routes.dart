import 'package:flutter/material.dart';
import 'package:flutter_ui/src/Categories/Ui/categories_home.dart';
import 'package:flutter_ui/src/Categories/Ui/catergories_info.dart';
import 'package:flutter_ui/src/Navigation/Ui/navigation_page.dart';
import 'package:flutter_ui/src/location/UI/location_page.dart';


class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/NavigationPage':
        return MaterialPageRoute(builder: (_) => NavigationPage());
      case '/CategoriesHome':
        return MaterialPageRoute(builder: (_) => CategoriesHome());
      case '/CategoriesInfo':
        return MaterialPageRoute(builder: (_) => CategoriesInfo());
      case '/LocationPage':
        return MaterialPageRoute(builder: (_) => LocationPage());
    }
  }
}