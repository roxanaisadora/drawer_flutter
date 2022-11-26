import 'package:flutter/material.dart';
import 'package:sesion_09/widgets/index.dart';

class BuySecurity extends StatelessWidget {
  const BuySecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const CustomWidgetHome(),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              const Text('COMPRAS SEGURAS', style: TextStyle(fontSize: 25),textAlign: TextAlign.start),
              const SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  const Text('Queremos que tu experiencia en Linio sea 100% segura',),
                  const SizedBox(height: 10,),
                  const Text('Existen correos electrónicos o sitios web falsos haciéndose pasar por nosotros, a esto se le conoce como phishing. Esta práctica tiene como fin defraudar o robar tus datos personales.\n\nToma en cuenta los siguientes tips de seguridad para tus futuras compras.'),
                  const SizedBox(height: 10,),
                  CardBuy(
                    title:'Revisa que sea sitio seguro',
                    description: 'Identifica el candado de seguridad a un lado de nuestro sitio web.',
                    image: Image.asset('assets/segure.png', fit: BoxFit.fill)
                  ),
                  const SizedBox(height: 10,),
                  CardBuy(
                    title:'Verificar mail seguro',
                    description: 'Te enviaremos información de tu pedido via wathsapp y promociones desde comunicate@shineclothes.com.pe y pedidos@shineclothes.com.pe',
                    image: Image.asset('assets/mail.png', fit: BoxFit.fill)
                  ),
                  const SizedBox(height: 10,),
                  CardBuy(
                    title:'Variedad en metodos de pago',
                    description: 'Aceptamos todos los metodos de pago: Paga al recibir, tarjetas de debito y credito, PagoEfectivo, giftCard',
                    image: Image.asset('assets/pagos.png', fit: BoxFit.fill)
                  ),
                  const SizedBox(height: 10,),
                  CardBuy(
                    title:'Redes Sociales',
                    description: 'Tenemos alcance a todas las redes sociales, encuentranos como:\n@ShineClothes',
                    image: Image.asset('assets/redes.png', fit: BoxFit.fill)
                  ),
                  const SizedBox(height: 10,),
                  const Text('Indentifica un correo o sitio web falso\nLo correos comunican promociones exageradas y poco creíbles.\nTe piden contestar al correo para poder levantar tu pedido.\nEl único método de pago es por Oxxo o tranferencia bancaria y sólo aceptan pago de contado.\nLas imágenes y botones redirigen a un sitio web falso con un nombre similar al nuestro.\nLos correos incluyen nuestro logo pero números telefónicos que no nos pertenece.\n\n¿Cómo reportar estos sitios y correos electrónicos fraudulentos?\nCualquier caso que te resulte sospechoso o contenga una o varias características antes mencionadas, reportarla a: compliance@linio.com'),
                  const SizedBox(height: 30,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}