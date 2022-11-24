import 'package:flutter/material.dart';
import '../../widgets/index.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const CustomWidgetHome(),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            CardButton(
              onTap: () {
                Navigator.of(context).push(FullScreenModal(
                title: '¿Cómo sé si hay unidades y variaciones disponibles?',
                description: 'Cuando el botón "Comprar ahora" se encuentra habilitado para hacer clic, significa que aún hay piezas disponibles para ti. Si por el contrario este se encuentra deshabilitado o observas en la imagen del producto la leyenda “¡Producto Agotado!”, significa que no contamos con unidades disponibles.'));
              },
              text: 'Unidades disponibles',
            ),
            CardButton(
              onTap: () {
                Navigator.of(context).push(FullScreenModal(
                title: '¿Qué hago si mi producto llegó dañado?',
                description: 'Lamentamos que tu producto no haya llegado en buen estado. Por favor, en los 10 días hábiles posteriores a recibir el producto, realiza la devolución desde tu cuenta en Shine Clothes; selecciona "Empaque exterior dañado" como la razón de tu devolución y escribe un breve comentario sobre la avería que ocasionó el transporte a tu producto.\n\nPara nosotros es muy importante que te encuentres satisfecho con tu compra.'));
              },
              text: 'Porducto dañado o averiado',
            ),
            CardButton(
              onTap: () {
                Navigator.of(context).push(FullScreenModal(
                title: '¿Cual es el tiempo de entrega?',
                description: 'YA REALICÉ MI COMPRA \nInicia sesión, luego ingresa a "Mi cuenta". Encontrarás tu listado de pedidos, cada uno con la información de fecha de entrega estimada, también podrás revisar esta información en la confirmación de envío de pedido que enviamos a tu correo electrónico. \n\nAÚN NO HE REALIZADO MI COMPRA \nPuedes conocer el tiempo estimado de entrega al visualizar la descripción del producto debajo de la imagen del mismo, esta se calcula en base al código postal de tu dirección de envió.'));
              },
              text: 'Tiempo de entrega',
            ),
            CardButton(
              onTap: () {
                Navigator.of(context).push(FullScreenModal(
                title: '¿Cuánto tiempo tarda una devolución?',
                description: 'El proceso de devolución inicia desde el momento en el que tu producto es dejado en la paquetería asignada para su envío al vendedor o proveedor. Luego de ser recibido, tu producto pasará por un control de calidad de 2 días hábiles. Por lo que el tiempo total del proceso será:\nLima: 5 días hábiles.\nProvincia: Entre 6 a 8 días hábiles, dependiendo de la ciudad de envío.\n\nSi tu devolución es aceptada, te enviaremos un cupón de crédito de inmediato por el monto pagado por tu producto devuelto. Si tu devolución no es aceptada, nos comunicaremos contigo para informarte el motivo y coordinar el reenvío del producto devuelto.'));
              },
              text: 'Tiempo de devolución',
            ),
            CardButton(
              onTap: () {
                Navigator.of(context).push(FullScreenModal(
                title: '¿Cómo funciona una garantía en Shine Clothes?',
                description: 'Al realizar una compra en nuestro sitio, a partir del momento en que recibes tu producto, tienes 10 días naturales (productos nacionales) o 14 (Cuando se trate de productos Internacionales) para solicitarla'));
              },
              text: 'Garantía en Shine Clothes',
            ),
            CardButton(
              onTap: () {
                Navigator.of(context).push(FullScreenModal(
                title: '¿Cuánto tiempo tarda un proceso de garantía?',
                description: 'Si tu garantía puede ser aplicada, el tiempo aproximado para reparar tu producto o dar una solución alterna es de 30 días hábiles, sin embargo, este depende de la forma a proceder, ya sea por reparación, reposición o reembolso de tu dinero.'));
              },
              text: 'Tiempo de garantia',
            ),
            CardButton(
              onTap: () {
                Navigator.of(context).push(FullScreenModal(
                title: '¿Qué son los productos internacionales?',
                description: 'Los "Productos internacionales" son aquellos que ofrecen nuestros vendedores alrededor del mundo para consumo personal en Perú. Son productos a importar, ya que al momento de tu compra, aún no se encuentran en nuestro país, sino que los haremos llegar.\nEstos productos provienen de distintos países y siempre deben pasar por aduana para entrar a Perú, por lo que los tiempos de entrega son más prolongados. Sin embargo, al realizar tu pedido, puedes elegir el tipo de envío que prefieras: postal o express.\n\nLos productos internacionales cuentan con cláusulas y políticas específicas. Te invitamos a conocerlas antes de realizar tu compra.'));
              },
              text: 'Producto internacional',
            ),
            CardButton(
              onTap: () {
                Navigator.of(context).push(FullScreenModal(
                title: '¿Cuánto tiempo tengo para devolver un producto internacional?',
                description: 'Cuentas con 14 días naturales posteriores a la entrega para comenzar con el proceso de'));
              },
              text: 'Devolución producto internacional',
            ),
          ],
        ),
      ),
    );
  }
}