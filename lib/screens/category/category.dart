import 'package:flutter/material.dart';
import 'package:sesion_09/widgets/index.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CategoryWidge(
              title:'aaaaaaa',
              image1: 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
              image2: 'https://cdn.shopify.com/s/files/1/0393/7701/0733/products/1475-OI_3_1024x1024.png?v=1621483449',
            ),
            CategoryWidge(
              title:'aaaaaaa',
              image1: 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
              image2: 'https://cdn.shopify.com/s/files/1/0393/7701/0733/products/1475-OI_3_1024x1024.png?v=1621483449',
            ),
          ],
        ),
      )
    );
  }
}