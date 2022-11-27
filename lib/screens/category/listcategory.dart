
import 'package:flutter/material.dart';
import 'package:sesion_09/widgets/index.dart';

class ListCategory extends StatelessWidget {
  final List data;
  const ListCategory({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
                padding: const EdgeInsets.all(8),
                child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
         childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height/1.5),
      ),
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        final dato = data[index];
        return CardCategory(
                          image: dato['image'],
                          price: dato['price']
                      );
      }
    
                ),
              )
    );
  }
}