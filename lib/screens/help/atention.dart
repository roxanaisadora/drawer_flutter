import 'package:flutter/material.dart';
import 'package:sesion_09/widgets/index.dart';

class Atention extends StatelessWidget {
  const Atention({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const CustomWidgetHome(),
      body: SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(
                    width: double.infinity,
                    height: 230,
                    child: Image.asset('assets/ayudarte.png', fit: BoxFit.fill,),
                  ),
            Padding(padding: const EdgeInsets.only(top: 10),
            child: Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Slecciona tu motivo de contacto'),
                  DropButtonAtention(),
                  Padding(
                    padding: EdgeInsets.only( top:25, bottom: 15),
                    child: FormHelp(
                      keyboardType: TextInputType.number,
                      labelText: 'Numero de pedido',
                      prefixIcon: Icon(
                          Icons.numbers,
                          color: Colors.black,
                          size: 20,
                          ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: FormHelp(
                      keyboardType: TextInputType.number,
                      labelText: 'Telefono',
                      prefixIcon: Icon(
                          Icons.phone_android,
                          color: Colors.black,
                          size: 20,
                          ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric( vertical: 10),
                    child: FormHelp(
                      keyboardType: TextInputType.multiline,
                      labelText: 'Comentario',
                      prefixIcon: Icon(
                          Icons.keyboard,
                          color: Colors.black,
                          size: 20,
                          ),
                    )
                  ),
                ],
              ),
            ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 25, left: 25, bottom: 10),
              child: Text('Una vez enviado, te daremos respuesta via e-mail o por telefono en un maximo de 4 horas. Recuerde de nuestro horario de atención es de Lunes a Viernes desde las 9:00 hasta las 18:00; Sabados, Domingos y Festivos 09:00 hasta las 17:00.'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: const Text('Enviar solicitud',style: TextStyle(color: Colors.white)),
              ),
            const SizedBox(height: 10,)
          ],
        )
      ),
    );
  }
}