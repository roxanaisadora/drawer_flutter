import 'package:flutter/material.dart';

class CustomCesta extends StatelessWidget {
  final String img;
  final String name_producto;
  final String cant_producto;
  final String precio;

  const CustomCesta(
      {super.key,
      required this.img,
      required this.name_producto,
      required this.cant_producto,
      required this.precio});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: SizedBox(
        width: double.infinity,
        height: 150,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(Icons.check_circle),
            ),
            Card(
              child: Image.network(
                img,
                width: 130,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(name_producto),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Unid: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        cant_producto,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                  Text(
                    'S./ $precio',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
