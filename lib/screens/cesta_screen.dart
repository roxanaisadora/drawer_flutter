import 'package:flutter/material.dart';
import 'package:sesion_09/route/route.dart';

import '../widgets/index.dart';

class CestaScreen extends StatelessWidget {
  const CestaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      drawer: const CustomWidgetHome(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              CustomCesta(
                img:
                    'https://cdn.pixabay.com/photo/2017/05/13/12/40/fashion-2309519_960_720.jpg',
                cant_producto: '1',
                name_producto: 'Sombrero',
                precio: '155',
              ),
              CustomCesta(
                img:
                    'https://cdn.pixabay.com/photo/2016/04/16/19/51/girl-1333640_960_720.jpg',
                cant_producto: '1',
                name_producto: 'Falda',
                precio: '155',
              ),
              CustomCesta(
                img:
                    'https://cdn.pixabay.com/photo/2016/01/21/20/24/girl-1154734_960_720.jpg',
                cant_producto: '1',
                name_producto: 'Bikini',
                precio: '155',
              ),
              CustomCesta(
                img:
                    'https://cdn.pixabay.com/photo/2014/11/19/19/31/feet-538245_960_720.jpg',
                cant_producto: '1',
                name_producto: 'Sandalias',
                precio: '155',
              ),
              CustomCesta(
                img:
                    'https://cdn.pixabay.com/photo/2016/11/23/18/12/bag-1854148_960_720.jpg',
                cant_producto: '1',
                name_producto: 'Bolso',
                precio: '155',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: const Text(
            'COMPRAR',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, MyRoutes.rPay);
          },
        ),
      ),
    );
  }
}
