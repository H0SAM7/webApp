
import 'package:flutter/material.dart';
import 'package:web_app/fetures/admin/views/add_user.dart';
import 'package:web_app/fetures/admin/views/admin_view.dart';
import 'package:web_app/fetures/home/views/home_view.dart';

abstract class AppRoutes {
  //     BottomNavigator
  static String? initialRoute = HomeView.id;
  static Map<String, Widget Function(BuildContext)> routes = {
    HomeView.id: (context) => const HomeView(),
        AdminView.id: (context) => const AdminView(),
        AddUser.id: (context) => const AddUser(),


  };
}
