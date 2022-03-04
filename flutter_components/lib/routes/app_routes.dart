import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'login', name: 'Login Form', screen: const LoginScreen(), icon: Icons.person),MenuOption(route: 'listview1', name: 'ListView1 Screen', screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2', name: 'ListView2 Screen', screen: const Listview2Screen(), icon: Icons.list_alt_outlined),
    MenuOption(route: 'cards', name: 'Card Screen', screen: const CardScreen(), icon: Icons.view_array_outlined),
    MenuOption(route: 'alert', name: 'Alert Screen', screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.person_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.slow_motion_video),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputScreen(), icon: Icons.input_outlined),
    MenuOption(route: 'slider', name: 'Slider', screen: const SliderScreen(), icon: Icons.slideshow),
    MenuOption(route: 'builder', name: 'infinite Scroll', screen: const ListViewBuilderScreen(), icon: Icons.build),
   
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : (BuildContext context) => const HomeScreen() });
  
  for (final option in menuOptions) {
    appRoutes.addAll({ option.route: (BuildContext context) => option.screen});
  }

    return appRoutes;
  }

/*   static Map<String, Widget Function(BuildContext)> routes = {
        'home'      : (BuildContext context) => const HomeScreen(),
        'listview1' : (BuildContext context) => const Listview1Screen(),
        'listview2' : (BuildContext context) => const Listview2Screen(),
        'cards'     : (BuildContext context) => const CardScreen(),
        'alert'     : (BuildContext context) => const AlertScreen()
      }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
          );
      }
}