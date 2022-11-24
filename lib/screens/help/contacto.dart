import 'package:flutter/material.dart';
import 'package:sesion_09/widgets/index.dart';
class Contacto extends StatelessWidget {
  const Contacto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const CustomWidgetHome(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          
          children: [
            const SizedBox(height: 10,),
            const Text('Contáctanos al teléfono', style: TextStyle(fontSize: 25),textAlign: TextAlign.start),
            const SizedBox(height: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const[
                Text('Para todo el Perú: (01) 640-0240',),
                SizedBox(height: 10,),
                Text('Horario para Compras por teléfono: \nLunes: 6:00 am en adelante \nMartes a Viernes: 24 horas. \nSábados y Domingos: 7:00 am a 7:00 pm. \nFeriados: horario según el día de la semana. \n\nHorario para Atención al Cliente Post-venta:\n Lunes a Viernes 7:00 am a 7:00 pm.\nSábado 9:00 am a 5:00 pm. \n\nDías festivos: \n1 de Febrero, 21 de Marzo, 13, 14, 15 y 16 de Abril, 1 de Mayo, 16 de Septiembre, 21 de Noviembre, 24, 25, 31 de Diciembre y 01 de Enero no habrá servicio'),
              ],
            )
          ],
        ),
      ),
    );
  }
}