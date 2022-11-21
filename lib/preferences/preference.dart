import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _img = '';
  static String _nombre = '';
  static String _apellido = '';
  static String _profesion = '';
  static String _email = '';
  static String _mobile = '';
  static String _twitter = '';
  static String _facebook = '';
  static String _linkedin = '';
  static int _genero = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //GET & SET

  //IMG
  static String get img {
    return _prefs.getString('img') ?? _img;
  }

  static set img(String img) {
    _img = img;
    _prefs.setString('img', img);
  }

  //Nombre
  static String get nombre {
    return _prefs.getString('nombre') ?? _nombre;
  }

  static set nombre(String nombre) {
    _nombre = nombre;
    _prefs.setString('nombre', nombre);
  }

  //Apellido
  static String get apellido {
    return _prefs.getString('apellido') ?? _apellido;
  }

  static set apellido(String apellido) {
    _apellido = apellido;
    _prefs.setString('apellido', apellido);
  }
  //profesion
  static String get profesion {
    return _prefs.getString('profesion') ?? _profesion;
  }

  static set profesion(String profesion) {
    _profesion = profesion;
    _prefs.setString('profesion', profesion);
  }

  //email
  static String get email {
    return _prefs.getString('email') ?? _email;
  }

  static set email(String email) {
    _email = email;
    _prefs.setString('email', email);
  }

  //mobile
  static String get mobile {
    return _prefs.getString('mobile') ?? _mobile;
  }

  static set mobile(String mobile) {
    _mobile = mobile;
    _prefs.setString('mobile', mobile);
  }

  //twitter
  static String get twitter {
    return _prefs.getString('twitter') ?? _twitter;
  }

  static set twitter(String twitter) {
    _twitter = twitter;
    _prefs.setString('twitter', twitter);
  }

 //facebook
  static String get facebook {
    return _prefs.getString('facebook') ?? _facebook;
  }
  static set facebook(String facebook) {
    _facebook = facebook;
    _prefs.setString('facebook', facebook);
  }

  //linkedin
  static String get linkedin {
    return _prefs.getString('linkedin') ?? _linkedin;
  }

  static set linkedin(String linkedin) {
    _linkedin = linkedin;
    _prefs.setString('linkedin', linkedin);
  }

  //Genero
  static int get genero {
    return _prefs.getInt('genero') ?? _genero;
  }

  static set genero(int genero) {
    _genero = genero;
    _prefs.setInt('genero', genero);
  }
}