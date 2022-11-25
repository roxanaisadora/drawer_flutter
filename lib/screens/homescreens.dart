import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sesion_09/pages/slider.dart';

import 'package:sesion_09/widgets/index.dart';
import 'package:sesion_09/preferences/preference.dart';
import 'package:sesion_09/screens/data.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  List<Widget> builCategories() {
    return Data.generateCategories()
        .map((e) => Container(
              padding: const EdgeInsets.only(left: 15, bottom: 10),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        e.id == 1? Colors.black : Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        e.id == 1 ? const Color.fromARGB(255, 240, 242, 247) : const Color.fromARGB(255, 248, 248, 248)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          color: Colors.amber,
                          child: Image.asset(e.image),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        e.title,
                        style: const TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: (Preferences.genero != 1)
            ? const  Color.fromARGB(255, 252, 248, 249)
            : const Color.fromARGB(255, 247, 246, 244),
        title: const Text('Shine Clothes',style: TextStyle(color: Color.fromARGB(255, 12, 12, 12),fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: <Widget>[
          IconButton( icon:const Icon(Icons.notifications_none),
          onPressed: (){},),
       
          IconButton( icon:const Icon(Icons.shopping_cart_outlined),
          onPressed: (){},)
        ],
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        
      
      ),
      
      drawer: const CustomWidgetHome(),
      body: ListView(
        children: [
           Padding(
            padding: const EdgeInsets.all(3),
            child: Stack(
              children: [
                ClipRRect(
                  
                  child: Image.asset("assets/banner4.png"),
                  // borderRadius: BorderRadius.circular(10),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
              ],
            ),
          ),
         
            const SizedBox(height: 15,),
          SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: builCategories(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              textAlign: TextAlign.start,
              text: const TextSpan(
                  text: "Galeria de modelos",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(height: 10),
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.all(5),
            children: Data.generateProducts().map(
              (e) => Card(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                    ),
                    elevation: 0,
                    child: InkWell(
                      onTap: (){

                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 10,right: 10,top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(e.image,height: 100,width: 100),
                            const SizedBox(height: 5,),
                            RichText(textAlign: TextAlign.start,
                            text: TextSpan(text: e.type,
                            style: const TextStyle(
                              color: Colors.orange,
                              fontSize: 16,
                            )
                            
                            ),
                            
                            ),
                             const SizedBox(height: 5,),
                            RichText(textAlign: TextAlign.start,
                            text: TextSpan(text: e.title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            )
                            
                            ),
                            
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              children: [
                                RichText(textAlign: TextAlign.start,
                                text: TextSpan(text: "\$ ${e.price}",
                                style: const TextStyle(
                                  color: Colors.orange,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                )
                                
                                ),
                                
                                ),
                                const Spacer(),
                                IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined)),
                                const Spacer(),
                                ElevatedButton(onPressed: (){},
                                 style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
                                 ),
                                 child: const Icon(Icons.shopping_cart_outlined,color:Colors.black),
                                 
                                 )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
              ),
            ).toList(),
          )
        ],

      ),

    );
  }
}
