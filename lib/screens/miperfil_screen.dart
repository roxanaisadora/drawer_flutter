
import 'package:flutter/material.dart';
import 'package:sesion_09/preferences/preference.dart';
import 'package:sesion_09/widgets/index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyPerfilScreen extends StatelessWidget {
  const MyPerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: (Preferences.genero != 1)
                        ? Colors.redAccent
                        : Colors.blue,
        title: const Text('Profile'),
        centerTitle: true,
      ),
      drawer: const CustomWidgetHome(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                
                 decoration: BoxDecoration(
                  color: (Preferences.genero != 1)
                        ? Colors.redAccent
                        : Colors.blue,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(17),
                      bottomLeft: Radius.circular(17),
                    ),
                    
                  ),
                child: Padding(padding:const EdgeInsets.symmetric( horizontal: 10) ,
                child: Column(
                  children: [
                    Padding(padding:const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    child: Container(
                      height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Colors.white),
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.white,
                                ),
                      child:(Preferences.img == '')
                  ? const CircleAvatar(
                      radius: 60,
                      child: Icon(Icons.photo, size: 50),
                    )
                  : CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(Preferences.img),
                    ),
                    )
                    ),
                    Padding(padding: const EdgeInsets.only(top:3),
                    child: (Preferences.nombre == '')?const Text('Ingrese su nombre', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),):Text(Preferences.nombre, style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),)
                    ),
                    
                    Padding(padding: const EdgeInsets.only(top:3), 
                    child: (Preferences.profesion == '')?const Text('Ingrese su profesion', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),):Text(Preferences.profesion, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)
                    ),
                    const SizedBox(height: 8,),
                    IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('1000 ',style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                            Text('Followers   ',style: TextStyle(color: Colors.white, fontSize: 15),),
                            VerticalDivider(
                              color: Color.fromARGB(255, 210, 206, 206),
                              thickness: 2,
                            ),
                            Text('   12000 ',style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                            Text('Following',style: TextStyle(color: Colors.white, fontSize: 15),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                  ],
                )
                )
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row( children: [
                            const SizedBox(height: 30, width: 60,
                            child: Icon(Icons.mail),),
      
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Container(height: 30, width: 200,child: const Text('E-mail',style: TextStyle(fontSize: 16), ),),
                            ),
                          ],),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: SizedBox(height: 35, width: 260,child:(Preferences.email == '')?const Padding(
                              padding: EdgeInsets.only(left:10),
                              child: Text('-----',style: TextStyle(fontSize: 17),),
                            ):Text(Preferences.email,style: const TextStyle(fontSize: 15))
                             ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height:5,
                      thickness:3,
                      color:Color.fromARGB(255, 224, 217, 217)
                    ),

                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row( children: [
                            const SizedBox(height: 30, width: 60,
                            child: Icon(Icons.phone_android),),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Container(height: 30, width: 200,child: const Text('Phone',style: TextStyle(fontSize: 16), ),),
                            ),
                          ],),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: SizedBox(height: 35, width: 260,child:(Preferences.mobile== '')?const Padding(
                              padding: EdgeInsets.only(left:10),
                              child: Text('-----',style: TextStyle(fontSize: 17),),
                            ):Text(Preferences.mobile,style: const TextStyle(fontSize: 15))
                             ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height:5,
                      thickness:3,
                      color:Color.fromARGB(255, 224, 217, 217)
                    ),
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row( children: [
                            const SizedBox(height: 30, width: 60,
                            child: Padding(
                              padding: EdgeInsets.only(top:5, left: 20),
                              child: FaIcon(FontAwesomeIcons.twitter),
                            ),),
      
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Container(height: 30, width: 200,child: const Text('Twitter',style: TextStyle(fontSize: 16), ),),
                            ),
                          ],),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: SizedBox(height: 35, width: 260,child:(Preferences.twitter == '')?const Padding(
                              padding: EdgeInsets.only(left:10),
                              child: Text('-----',style: TextStyle(fontSize: 17),),
                            ):Text(Preferences.twitter,style: const TextStyle(fontSize: 15))
                             ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height:5,
                      thickness:3,
                      color:Color.fromARGB(255, 224, 217, 217)
                    ),
      
      
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row( children: [
                            const SizedBox(height: 30, width: 60,
                            child: Padding(
                              padding: EdgeInsets.only(top:5, left: 20),
                              child: FaIcon(FontAwesomeIcons.facebook),
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Container(height: 30, width: 200,child: const Text('Facebook',style: TextStyle(fontSize: 16), ),),
                            ),
                          ],),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: SizedBox(height: 35, width: 260,child:(Preferences.facebook == '')?const Padding(
                              padding: EdgeInsets.only(left:10),
                              child: Text('-----',style: TextStyle(fontSize: 17),),
                            ):Text(Preferences.facebook,style: const TextStyle(fontSize: 15))
                             ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height:5,
                      thickness:3,
                      color:Color.fromARGB(255, 224, 217, 217)
                    ),
      
                    SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row( children: [
                            const SizedBox(height: 30, width: 60,
                            child: Icon(Icons.mail),),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Container(height: 30, width: 200,child: const Text('LinkeInd',style: TextStyle(fontSize: 16), ),),
                            ),
                          ],),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: SizedBox(height: 35, width: 260,child:(Preferences.linkedin == '')?const Padding(
                              padding: EdgeInsets.only(left:10),
                              child: Text('-----',style: TextStyle(fontSize: 17),),
                            ):Text(Preferences.linkedin,style: const TextStyle(fontSize: 15))
                             ),
                          ),
                        ],
                      ),
                    ),
      
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
   