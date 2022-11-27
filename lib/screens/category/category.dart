import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:sesion_09/screens/index.dart';
import 'package:sesion_09/widgets/index.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  final List<dynamic> data = [
    {
      'title':'aaaaaaaiiiiiiii',
      'image1': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
      'image2': 'https://cdn.shopify.com/s/files/1/0393/7701/0733/products/1475-OI_3_1024x1024.png?v=1621483449',

      'dato2':[{
        'title':'aaaaaaa',
          'image1': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
          'image2': 'https://cdn.shopify.com/s/files/1/0393/7701/0733/products/1475-OI_3_1024x1024.png?v=1621483449',
            'data3':[{
            'image': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
            'price':'580'
            },
            {
            'image': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
            'price':'580'
            },
            {
            'image': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
            'price':'580'
            },
            {
            'image': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
            'price':'580'
            },
            {
            'image': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
            'price':'580'
            },
            {
            'image': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
            'price':'580'
            },
            {
            'image': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
            'price':'580'
            },
            {
            'image': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
            'price':'580'
            },
        ]
      },
      {
        'title':'aaaaaaa',
        'image1': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
        'image2': 'https://cdn.shopify.com/s/files/1/0393/7701/0733/products/1475-OI_3_1024x1024.png?v=1621483449',
      }
      ]
    },
    {
      'title':'aaaaaaa',
      'image1': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
      'image2': 'https://cdn.shopify.com/s/files/1/0393/7701/0733/products/1475-OI_3_1024x1024.png?v=1621483449',
      'dato2':[{
        'title':'aaaaaaa',
      'image1': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
      'image2': 'https://cdn.shopify.com/s/files/1/0393/7701/0733/products/1475-OI_3_1024x1024.png?v=1621483449',
      },
      {
        'title':'aaaaaaa',
      'image1': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
      'image2': 'https://cdn.shopify.com/s/files/1/0393/7701/0733/products/1475-OI_3_1024x1024.png?v=1621483449',
      },
      {
        'title':'aaaaaaa',
      'image1': 'https://www.gamarra.com.pe/wp-content/uploads/2020/04/WhatsApp-Image-2020-09-03-at-12.04.42-AM-480x633.jpeg',
      'image2': 'https://cdn.shopify.com/s/files/1/0393/7701/0733/products/1475-OI_3_1024x1024.png?v=1621483449',
      }
      
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {  
          final dato = data[index];
            return CategoryWidge(
              image1: dato['image1'],
              image2: dato['image2'],
              title: dato['title'],
              onTap: (){
                log('entro');
                Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> SubCategory(
                            data2:dato['dato2']
                          ),
                          ),);
              },
              );
        },
        )
    );
  }
}