
import 'package:flutter/material.dart';
import 'package:sesion_09/route/route.dart';
import 'package:sesion_09/preferences/preference.dart';

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
                color:(Preferences.genero != 1)
                        ? Colors.redAccent
                        : Colors.blue,
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft+ const Alignment(-0.2, 0),
                    child: Padding(padding:const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  ),)
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: SizedBox(
                      height: 160,
                      width: 230,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        (Preferences.nombre == '')?const Text('Ingrese su nombre', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),):Text(Preferences.nombre, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        
                        (Preferences.profesion == '')?const Text('Ingrese su profesion', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),):Text(Preferences.profesion, style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),)
                      ]),
                    ),
                  )
                  
                ],
              ),
            ),
            ListTile(
            leading: const Icon(Icons.home),
            title:const Text('home'),
            minLeadingWidth : 10,
            onTap: (){
              Navigator.pushReplacementNamed(context, MyRoutes.rHome);
            },
            ),
            ListTile(
            leading: const Icon(Icons.settings),
            minLeadingWidth : 10,
            title:const Text('Configuracion'),
            onTap: (){
              Navigator.pushReplacementNamed(context, MyRoutes.rAjuste);
            },
          ),
          ],
        ),
      );
  }
}