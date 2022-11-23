import 'package:flutter/material.dart';
import 'package:sesion_09/screens/index.dart';

class MyRoutes {
  static const String rHome = '/Home';
  static const String rAjuste = '/ajuste';
  static const String rPerfil = '/perfil';
  static const String rLogin = '/login';
  static const String rAtention = '/help/atention';


  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case('/Home'):
      return MaterialPageRoute(builder: (_) => const NavigationScrean());
      case('/ajuste'):
      return MaterialPageRoute(builder: (_) => const SettingWidget());
      case ('/login'):
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case ('/help/atention'):
        return MaterialPageRoute(builder: (_) => const Atention());
      default:
      return MaterialPageRoute(builder: (_) => const NavigationScrean());
    }
  }
}