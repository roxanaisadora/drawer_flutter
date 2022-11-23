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
                        ? const Color.fromRGBO(207, 41, 88, 1)
                        : const  Color.fromARGB(255, 236, 58, 165),
        title: const Text('Shine Clothes'),
        centerTitle: true,
        actions: const [Icon(Icons.shopping_cart)],
        
        
      ),
      drawer: const CustomWidgetHome(),
      body: const Center(
        child: Text('Bienvenido', style: TextStyle(fontSize: 40),),
      )
    );
  }
}
