import 'package:flutter/material.dart';
import 'package:sesion_09/pages/slider.dart';
import 'package:sesion_09/route/route.dart';

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
                        e.id == 1 ? Colors.black : Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(e.id == 1
                        ? const Color.fromARGB(255, 240, 242, 247)
                        : const Color.fromARGB(255, 248, 248, 248)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        child: Container(
                          color: Color.fromARGB(255, 225, 48, 205),
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
        appBar: AppBar(
          backgroundColor: (Preferences.genero != 1)
              ? Color.fromARGB(95, 214, 145, 218)
              : Color.fromARGB(255, 251, 249, 250),
          title: const Text(
            'Shine Clothes',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications_none),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart_outlined),
              onPressed: () {},
            )
          ],
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        drawer: const CustomWidgetHome(),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/fondo2.webp"), fit: BoxFit.cover),
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: Stack(
                  children: [
                    ClipRRect(
                      child: Image.asset("assets/banner8.png"),

                      // borderRadius: BorderRadius.circular(10),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 5,
              ),
              // SizedBox(
              //   height: 100,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: builCategories(),
              //   ),

              // ),
              ClipRRect(
                child: Image.asset("assets/banner1.2.png"),

                // borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(height: 5),
              ClipRRect(
                child: Image.asset("assets/banner1.3.png"),

                // borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(height: 5),
              ClipRRect(
                child: Image.asset("assets/banner1.4.png"),

                // borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(height: 15),
              //  SizedBox(
              //   height: 100,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: builCategories(),
              //   ),

              // ),

              const SizedBox(
                height: 10,
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 10),
              //   child: RichText(
              //     textAlign: TextAlign.center,
              //     text: const TextSpan(
              //         text: "Galeria de ofertas",
              //         style: TextStyle(

              //             color: Color.fromARGB(255, 232, 13, 13),
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold)),
              //   ),
              // ),
              ClipRRect(
                child: Image.asset("assets/banner.6.png"),
                borderRadius: BorderRadius.circular(50),

                // borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(height: 30),

              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: builCategories(),
                ),
              ),

              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8),
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.all(0),
                  children: Data.generateProducts()
                      .map(
                        (e) => SizedBox(
                          // shape: BeveledRectangleBorder(
                          //     borderRadius: BorderRadius.circular(15),
                          //     ),
                          //     elevation: 0,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 15, right: 15, top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(e.image, height: 200, width: 250),

                                  // RichText(textAlign: TextAlign.start,
                                  // text: TextSpan(text: e.title,
                                  // style: const TextStyle(
                                  //   color: Colors.red,
                                  //   fontSize: 15,
                                  // )

                                  // ),

                                  // ),
                                  //  const SizedBox(height: 2,),
                                  // RichText(textAlign: TextAlign.start,
                                  // text: TextSpan(text: e.type,
                                  // style: const TextStyle(
                                  //   color: Color.fromARGB(215, 132, 75, 75), fontWeight: FontWeight.bold,
                                  //   fontSize: 13,
                                  // )

                                  // ),

                                  // ),

                                  Container(
                                    color: Colors.purple,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: RichText(
                                            textAlign: TextAlign.start,
                                            text: TextSpan(
                                                text: "\$ ${e.price}",
                                                style: const TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 253, 249, 249),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Navigator.pushNamed(context,
                                                  MyRoutes.rFavoritePage);
                                            },
                                            icon: const Icon(
                                              Icons.favorite_border_outlined,
                                              color: Color.fromARGB(
                                                  255, 235, 27, 31),
                                            )),
                                        InkWell(
                                            onTap: () {},
                                            child: const Icon(
                                              Icons.shopping_cart_outlined,
                                              color: Colors.black,
                                            )),
                                      ],
                                    ),
                                  )

                                  //     ElevatedButton(onPressed: (){

                                  // //     // },
                                  //     // //  style: ButtonStyle(
                                  //     // //   backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  //     // //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
                                  //     // //  ),
                                  //     //  child: const Icon(Icons.shopping_cart_outlined,color:Colors.black),

                                  //     //  )
                                  //   ],
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        ));
  }
}
