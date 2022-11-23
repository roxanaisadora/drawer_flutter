import 'package:flutter/material.dart';
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
                    backgroundColor: MaterialStateProperty.all<Color>(
                        e.id == 1 ? Colors.pink : Colors.white),
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
            : const Color.fromARGB(255, 133, 81, 116),
        title: const Text('Shine Clothes'),
        centerTitle: true,
        actions: const [Icon(Icons.shopping_cart_outlined)],
      ),
      
      drawer: const CustomWidgetHome(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: [
                ClipRRect(
                  // ignore: sort_child_properties_last
                  child: Image.asset("assets/banner3.jpg"),
                  borderRadius: BorderRadius.circular(14),
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
          SizedBox(
            height: 60,
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
                  text: "Moda 2022",
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
                            Image.asset(e.image,height: 90,width: 90),
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
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                )
                                
                                ),
                                
                                ),
                                const Spacer(),
                                ElevatedButton(onPressed: (){},
                                 style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
                                 ),
                                 child: const Icon(Icons.add,color:Colors.white),
                                 
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
      // floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.orange,
      //   onPressed: (){

      //   },
      //   child: Container(
      //     margin: EdgeInsets.all(15),
      //     child: Icon(Icons.home_outlined,color:Colors.white),

      //   ),
      //   elevation: 4,
      // ) ,
      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     mainAxisAlignment:MainAxisAlignment.spaceBetween,
      //     children: [
      //        const SizedBox(height: 30,),
      //       IconButton(onPressed: (){}, icon: Image.asset("assets/icono2.png"),),
      //        IconButton(onPressed: (){}, icon: Image.asset("assets/icono2.png"),),
      //         IconButton(onPressed: (){}, icon: Image.asset("assets/icono2.png"),),
      //     const SizedBox(height: 2,)
      //     ],
      //   ),
      // ),
    );
  }
}
