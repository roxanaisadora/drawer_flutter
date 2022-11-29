
import 'package:flutter/material.dart';
import 'package:sesion_09/widgets/index.dart';

class ListCategory extends StatelessWidget {
  final List data;
  final String titleappbar;
  const ListCategory({super.key, required this.data, required this.titleappbar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleappbar),
        centerTitle: true,
      ),
      body:Container(
        decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/fondocategory.jpg'),
                        fit: BoxFit.cover
                        )
                      ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 280,
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
        ),
      )
    );
  }
}