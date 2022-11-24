import 'package:flutter/material.dart';
import 'package:sesion_09/widgets/index.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const CustomWidgetHome(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                      height: 280,
                      child: Image.asset('images/logo.png', fit: BoxFit.fill,),
              ),
              CardButton(
                  onTap: () {
                    Navigator.of(context).push(FullScreenModal(
                    title: 'Vigente a partir del 7 de Octubre de 2016',
                    description: 'Los términos de uso y condiciones de entrega vigentes hasta el 6 de Octubre de 2016 se encuentran aquí.\nEsto es importante para ti:\nEn ShineClothes.com.pe queremos siempre ofrecerle una experiencia de compra que sea relevante y personalizada. Por favor revisa los Términos y Condiciones Generales y las Políticas de privacidad de ShineClothes PERÚ S.A.C., ya que son las condiciones de venta que rigen en sus compras en nuestro portal ShineClothes.com.pe. Ellos establecen sus derechos y obligaciones con respecto a sus compras, incluyendo importantes limitaciones y exclusiones. La utilización del sitio y/o sus servicios constituye la aceptación de que estas condiciones se aplican a sus compras, así que asegúrese que las entiende antes de realizar sus pedidos.\n\nI. TÉRMINOS Y CONDICIONES\nEste documento describe los términos y condiciones generales (los "Términos y Condiciones Generales") y las políticas de privacidad (las "Políticas de Privacidad") aplicables al acceso y uso de los servicios ofrecidos por ShineClothes PERÚ S.A.C. ("los Servicios") dentro del sitio www.ShineClothes.com.pe, sus subdominios y/u otros dominios (urls) relacionados (en adelante "ShineClothes.com" o el "Sitio"), en donde éstos Términos y Condiciones se encuentren. Cualquier persona que desee acceder y/o suscribirse y/o usar el Sitio o los Servicios podrá hacerlo sujetándose a los Términos y Condiciones Generales y las Políticas de Privacidad, junto con todas las demás políticas y principios que rigen ShineClothes.com.pe y que son incorporados al presente directamente o por referencia o que son explicados y/o detallados en otras secciones del Sitio. En consecuencia, todas las visitas y todos los contratos y transacciones que se realicen en este Sitio, así como sus efectos jurídicos, quedarán regidos por estas reglas y sometidos a la legislación aplicable en Perú.\nLos Términos y Condiciones y las Políticas de Privacidad contenidos en este instrumento se aplicarán y se entenderán como parte integral de todos los actos y contratos que se ejecuten o celebren mediante los sistemas de oferta y comercialización comprendidos en este sitio entre los usuarios de este sitio y ShineClothes PERÚ S.A.C. (en adelante "ShineClothes PERÚ S.A.C.", "ShineClothes" o "la Empresa", indistintamente), y por cualquiera de las otras sociedades o empresas que sean filiales o vinculadas a ella, y que hagan uso de este sitio, a las cuales se las denominará en adelante también en forma indistinta como las "Empresas", o bien la "Empresa Oferente", el "Proveedor" o la "Empresa Proveedora", según convenga al sentido del texto.\nCuando usted visita ShineClothes.com.pe se está comunicando con ShineClothes de manera electrónica. En ese sentido, usted brinda su consentimiento para recibir comunicaciones de ShineClothes por correo electrónico o mediante la publicación de avisos en su portal.'));
                  },
                  text: 'Terminos y Condiciones',
                ),
                CardButton(
                  onTap: () {
                    Navigator.of(context).push(FullScreenModal(
                    title: 'POLÍTICA DE PRIVACIDAD',
                    description: 'Gracias por acceder a la página web www.ShineClothes.com.pe (el "Sitio") operada por ShineClothes PERÚ S.A.C. (en adelante “ShineClothes”), sociedad Responsable del Tratamiento de sus Datos Personales, identificada con RUC 20547836473, con domicilio en Calle Rio de la Plata N°167, piso 7, San Isidro, Lima.\nEn ShineClothes, todos los días trabajamos para servirle cada vez mejor cuando adquiere nuestros productos o utiliza nuestros servicios. Cuidar los Datos Personales que Usted nos proporciona es una parte fundamental de esto. Por ello, queremos que esté seguro que su información está resguardada y protegida con nosotros y conozca cómo la usamos para ofrecerle una mejor y más personalizada experiencia de cliente cuando usa nuestros servicios.\nEsta Política de Privacidad explica el Tratamiento que hacemos de sus Datos Personales, a quien, bajo ciertas condiciones, transferimos y/o transmitimos sus Datos Personales, como también las medidas de seguridad que hemos tomado para protegerlos. Asimismo, explica los derechos que usted tiene como Titular de sus Datos Personales y cómo puede ejercerlos.'));
                  },
                  text: 'Politicas de privacidad',
                ),
                CardButton(
                  onTap: () {
                    Navigator.of(context).push(FullScreenModal(
                    title: 'ESTAMOS COMPROMETIDOS CON LA PROTECCIÓN DE LOS DERECHOS DE PROPIEDAD INTELECTUAL',
                    description: 'En nuestro compromiso por el respeto y protección de los derechos de propiedad intelectual tanto de nuestros proveedores como de terceros, hemos implementado este nuevo espacio para que se puedan reportar productos que se venden a través de nuestra página y que usted considera están infringiendo derechos Propiedad Intelectual legalmente protegidos.\n\n¿CUÁL ES EL OBJETIVO?\nEsta iniciativa tiene por objeto permitir a los titulares de derechos de propiedad intelectual (derechos de autor, marcas, patentes, entre otros) que notifiquen a ShineClothes si creen que sus derechos están siendo vulnerados por la venta de algún o algunos de los productos que se ofrecen en el portal.\nDe este modo, ShineClothes procederá a estudiar cada caso para determinar si los productos deben ser bajados del portal por no contar con las autorizaciones que se requieren, o si por el contrario no se están infringiendo derechos de terceros.'));
                  },
                  text: 'Proteccion',
                ),
                CardButton(
                  onTap: () {
                    Navigator.of(context).push(FullScreenModal(
                    title: 'Software',
                    description: 'Este software fue desarrollado por el grupo 03 del programa del bicentenario dirigido por el Ministerio de trabajo y cultura con el apoyo de Certus'));
                  },
                  text: 'Software',
                ),
            ],
          ),
        ),
      ),
    );
  }
}