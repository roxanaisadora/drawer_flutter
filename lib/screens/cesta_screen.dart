import 'package:flutter/material.dart';
import 'package:sesion_09/route/route.dart';
import 'package:sesion_09/screens/index.dart';

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
                    'https://falabella.scene7.com/is/image/FalabellaPE/18708842_2?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70',
                cant_producto: '1',
                name_producto: 'Polo mujer',
                precio: '60',
              ),
              CustomCesta(
                img:
                    'https://falabella.scene7.com/is/image/FalabellaPE/18986720_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70',
                cant_producto: '1',
                name_producto: 'Cargigan Mujer',
                precio: '30',
              ),
              CustomCesta(
                img:
                    'https://falabella.scene7.com/is/image/FalabellaPE/882475587_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70',
                cant_producto: '1',
                name_producto: 'Joguer Hombre',
                precio: '55',
              ),
              CustomCesta(
                img:
                    'https://falabella.scene7.com/is/image/FalabellaPE/19315069_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70',
                cant_producto: '1',
                name_producto: 'Jean Mujer',
                precio: '70',
              ),
              CustomCesta(
                img:
                    'https://falabella.scene7.com/is/image/FalabellaPE/882359721_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70',
                cant_producto: '1',
                name_producto: 'Chompa marino hombre',
                precio: '60',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
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
            Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const PayProfile(),
                  )
            );
          },
        ),
      ),
    );
  }
}
