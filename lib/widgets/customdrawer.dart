
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
          ListTile(
            leading: const Icon(Icons.person),
            minLeadingWidth : 10,
            title:const Text('Mi perfil'),
            onTap: (){
              Navigator.pushReplacementNamed(context, MyRoutes.rPerfil);
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            minLeadingWidth : 10,
            title:const Text('Compras'),
            onTap: (){
              Navigator.pushReplacementNamed(context, MyRoutes.rPerfil);
            },
          ),
          ListTile(
            leading: const Icon(Icons.search_off_rounded),
            minLeadingWidth : 10,
            title:const Text('Buscar'),
            onTap: (){
              Navigator.pushReplacementNamed(context, MyRoutes.rPerfil);
            },
          ),
          const Divider(
                      height:5,
                      thickness:3,
                      color:Color.fromARGB(255, 224, 217, 217)
                    ),
          ListTile(
            leading: const Icon(Icons.markunread_mailbox),
            minLeadingWidth : 10,
            title:const Text('All inboxes'),
            onTap: (){},
            trailing: const Text('15'),
          ),
          const Divider(
                      height:5,
                      thickness:3,
                      color:Color.fromARGB(255, 224, 217, 217)
                    ),
          ListTile(
            leading: const Icon(Icons.mail),
            minLeadingWidth : 10,
            title:const Text('Prymary'),
            onTap: (){},
            trailing: const Text('25'),
          ),
          ListTile(
            leading: const Icon(Icons.people),
            minLeadingWidth : 10,
            title:const Text('Social'),
            onTap: (){},
            trailing: Container(
              height: 26,
              width: 65,
            decoration:  BoxDecoration(
              color:const Color.fromARGB(255, 100, 175, 237),
              borderRadius: BorderRadius.circular(100),
            ),
            // ignore: prefer_const_constructors
            child:Padding(
              padding: const EdgeInsets.only(top:2),
              child: const Text('14 new', textAlign: TextAlign.center,),
            ) ,
            )
          ),
          ListTile(
            leading: const Icon(Icons.local_offer),
            minLeadingWidth : 10,
            title:const Text('Promotion'),
            onTap: (){},
            trailing: Container(
              height: 26,
              width: 75,
            decoration:  BoxDecoration(
              color:const Color.fromARGB(255, 116, 243, 200),
              borderRadius: BorderRadius.circular(100),
            ),
            // ignore: prefer_const_constructors
            child:Padding(
              padding: const EdgeInsets.only(top:2),
              child: const Text('99+ new', textAlign: TextAlign.center,),
            ) ,
            )
          ),
          const Divider(
                      height:5,
                      thickness:3,
                      color:Color.fromARGB(255, 224, 217, 217)
                    ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top:5),
            child: Text('All labels', style: TextStyle(fontSize: 17),),
          ),
          ListTile(
            leading: const Icon(Icons.star),
            minLeadingWidth : 10,
            title:const Text('Starred'),
            onTap: (){},
          ),
          ListTile(
            leading: const Icon(Icons.label),
            minLeadingWidth : 10,
            title:const Text('Important'),
            onTap: (){},
            trailing: const Text('3'),
          ),

          ],
        ),
        

      );
  }
}