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
    Category(),
    Text('2'),
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
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        // ignore: prefer_const_literals_to_create_immutables
        items:[
          const BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.house, color: Colors.white), label: 'Inicio'),
          const BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.carSide, color: Colors.white), label: 'Categoria'),
          const BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.heart, color: Colors.white), label: 'favoritos'),
          const BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.user, color: Colors.white), label: 'Mi cuenta'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}