import 'package:flutter/material.dart';
import 'package:sesion_09/widgets/index.dart';
import 'package:sesion_09/preferences/preference.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: (Preferences.genero != 1)
                        ? Colors.redAccent
                        : Colors.blue,
        title: const Text('Home Screens'),
        centerTitle: true,
      ),
      drawer: const CustomWidgetHome(),
      body: const Center(
        child: Text('Bienvenido', style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
