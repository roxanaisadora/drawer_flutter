import 'package:flutter/material.dart';
import 'package:sesion_09/preferences/preference.dart';
import 'package:sesion_09/route/route.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer',
      theme: ThemeData(
        useMaterial3: true,
      ),
      onGenerateRoute: MyRoutes.generateRoute,
      initialRoute: MyRoutes.rHome,
    );
  }
}
