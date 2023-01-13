import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // TODO: Borrar home
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        icon: Icons.home,
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        name: 'Listview tipo 1',
        icon: Icons.menu,
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        name: 'Listview tipo 2',
        icon: Icons.menu_open,
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        name: 'Alertas - Alerts',
        icon: Icons.add_alert_outlined,
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        name: 'Tarjetas - Cards',
        icon: Icons.credit_card,
        screen: const CardScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const Listview1Screen());
  }
}
