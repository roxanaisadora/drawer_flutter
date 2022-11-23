import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesion_09/preferences/preference.dart';
import 'package:sesion_09/providers/theme_provider.dart';
import 'package:sesion_09/route/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => ProviderTheme(isDarkMode: Preferences.theme),
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer',
      theme: Provider.of<ProviderTheme>(context).currentTheme,
      onGenerateRoute: MyRoutes.generateRoute,
      initialRoute: MyRoutes.rLogin,
    );
  }
}
