
import 'package:flutter/material.dart';
import 'package:web_app/fetures/home/views/home_view.dart';

abstract class AppRoutes {
  //     BottomNavigator
  static String? initialRoute = HomeView.id;
  static Map<String, Widget Function(BuildContext)> routes = {
    HomeView.id: (context) => const HomeView(),

  };
}
