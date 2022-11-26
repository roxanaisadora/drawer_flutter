import 'package:flutter/material.dart';
import 'package:sesion_09/screens/index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationScrean extends StatefulWidget {
  const NavigationScrean({super.key});

  @override
  State<NavigationScrean> createState() => _NavigationScreanState();
}

class _NavigationScreanState extends State<NavigationScrean> {
  int _selectedIndex = 0;

  static const List<Widget> _widegtOptions = [
    Homescreen(),
    Text('1'),
    Text('2'),
    Text('4'),
    MyPerfilScreen()
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widegtOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 252, 251, 252),
        unselectedItemColor: Color.fromARGB(255, 15, 15, 15),
        selectedItemColor: Color.fromARGB(255, 8, 1, 1),
        // ignore: prefer_const_literals_to_create_immutables
        items:[
          const BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.house, color: Color.fromARGB(255, 9, 1, 1)), label: 'Inicio'),
          const BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.carSide, color: Color.fromARGB(255, 8, 0, 0)), label: 'Categoria'),
          const BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.bagShopping, color: Color.fromARGB(255, 10, 0, 0)), label: 'Pedidos'),
          const BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.heart, color: Color.fromARGB(255, 11, 1, 1)), label: 'favoritos'),
          const BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.user, color: Color.fromARGB(255, 10, 0, 0)), label: 'Mi cuenta'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}