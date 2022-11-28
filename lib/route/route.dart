import 'package:flutter/material.dart';
import 'package:sesion_09/screens/index.dart';

class MyRoutes {
  static const String rHome = '/Home';
  static const String rAjuste = '/ajuste';
  static const String rPerfil = '/perfil';
  static const String rLogin = '/login';
  static const String rAtention = '/help/atention';
  static const String rQuestion = '/help/question';
  static const String rCompraSegura = '/help/comprasegura';
  static const String rContacto = '/help/contacto';
  static const String rInfo = '/help/info';
  static const String rFavoritePage = '/FavoritePage';
  static const String rCesta = '/Cesta';
  static const String rPay = '/Pay';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ('/Home'):
        return MaterialPageRoute(builder: (_) => const NavigationScrean());
      case ('/ajuste'):
        return MaterialPageRoute(builder: (_) => const SettingWidget());
      case ('/login'):
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case ('/help/atention'):
        return MaterialPageRoute(builder: (_) => const Atention());
      case ('/help/question'):
        return MaterialPageRoute(builder: (_) => const Questions());
      case ('/help/comprasegura'):
        return MaterialPageRoute(builder: (_) => const BuySecurity());
      case ('/help/contacto'):
        return MaterialPageRoute(builder: (_) => const Contacto());
      case ('/help/info'):
        return MaterialPageRoute(builder: (_) => const Info());
      case ('/Cesta'):
        return MaterialPageRoute(builder: (_) => const CestaScreen());
      case ('/Pay'):
        return MaterialPageRoute(builder: (_) => const PayProfile());
      default:
        return MaterialPageRoute(builder: (_) => const NavigationScrean());
    }
  }
}
