import 'package:flutter/material.dart';
import 'package:sesion_09/preferences/preference.dart';

import '../screens/index.dart';

class CustomWidgetHome extends StatelessWidget {
  const CustomWidgetHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: (Preferences.genero != 1) ? Colors.redAccent : Colors.blue,
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft + const Alignment(-0.2, 0),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.white,
                        ),
                        child: (Preferences.img == '')
                            ? const CircleAvatar(
                                radius: 50,
                                child: Icon(Icons.photo, size: 50),
                              )
                            : CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(Preferences.img),
                              ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: SizedBox(
                    height: 160,
                    width: 230,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          (Preferences.nombre == '')
                              ? const Text(
                                  'Ingrese su nombre',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              : Text(
                                  Preferences.nombre,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                        ]),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('home'),
            minLeadingWidth: 10,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Homescreen(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            minLeadingWidth: 10,
            title: const Text('Configuracion'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingWidget(),
                  ));
            },
          ),
          const Divider(
              height: 5,
              thickness: 3,
              color: Color.fromARGB(255, 224, 217, 217)),
          ListTile(
            leading: const Icon(Icons.face),
            minLeadingWidth: 10,
            title: const Text('Atención al cliente'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Atention(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            minLeadingWidth: 10,
            title: const Text('Preguntas frecuentes'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Questions(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.call),
            minLeadingWidth: 10,
            title: const Text('Contacto'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Contacto(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.security),
            minLeadingWidth: 10,
            title: const Text('Compra segura'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BuySecurity(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xFF5624d0),
            ),
            minLeadingWidth: 10,
            title: const Text('Cesta'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CestaScreen(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.error),
            minLeadingWidth: 10,
            title: const Text('Acerca de Shine Clothes'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Info(),
                  ));
            },
          ),
          const Divider(
              height: 5,
              thickness: 3,
              color: Color.fromARGB(255, 224, 217, 217)),
          ListTile(
            leading: const Icon(Icons.highlight_off),
            minLeadingWidth: 10,
            title: const Text('Cerrar sesion'),
            onTap: () {
              Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const LoginScreen();
                  },
                ),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
