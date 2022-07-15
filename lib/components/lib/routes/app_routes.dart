import 'package:flutter_samples/components/lib/models/models.dart';
import 'package:flutter_samples/components/lib/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const inicialRoutes = 'home';

  static final menuOptions = <MenuOptions>[
    //TODO: borrar home
    // MenuOptions(
    //     route: 'home',
    //     icon: Icons.home,
    //     name: 'HomeScreens',
    //     screens: const HomeScreen()),

    MenuOptions(
        route: 'listview1',
        icon: Icons.list_alt_outlined,
        name: 'Tipo listas 1',
        screens: const Listview1Screen()),

    MenuOptions(
        route: 'listview2',
        icon: Icons.line_style_sharp,
        name: 'Tipo listas 2',
        screens: const Listview2Screen()),

    MenuOptions(
        route: 'alert',
        icon: Icons.sentiment_very_dissatisfied_outlined,
        name: 'Alertas ',
        screens: const AlertScreen()),

    MenuOptions(
        route: 'card',
        icon: Icons.credit_card,
        name: 'Cartas',
        screens: const CardScreen()),
    MenuOptions(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        name: 'Avatar',
        screens: const AvatarScreen()),
    MenuOptions(
        route: 'animated',
        icon: Icons.play_circle_outline_rounded,
        name: 'Animated Container',
        screens: const AnimatedScreen()),

    MenuOptions(
        route: 'inputs',
        icon: Icons.input_outlined,
        name: 'Inputs',
        screens: const InputsScreen()),

    MenuOptions(
        route: 'slider',
        icon: Icons.photo_size_select_large_rounded,
        name: 'Slider',
        screens: const SliderScreen()),
    MenuOptions(
        route: 'listView',
        icon: Icons.build_circle_outlined,
        name: 'InfinityScroll and push refresh',
        screens: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getApRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
//El Home se agrego a la map de Routes de forma manual
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

//Aqui se agrega un adgoritmo para agragar a la map de Routes de forma automatica segun la lista menuOption

    for (final option in menuOptions) {
      appRoutes.addAll(
        {option.route: (BuildContext context) => option.screens},
      );
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

  static Route<dynamic> onGenereRoute(RouteSettings settings) {
    print(settings);
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
