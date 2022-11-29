
import 'package:flutter/material.dart';
import 'package:sesion_09/widgets/index.dart';
import 'package:quickalert/quickalert.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class FavouritePage extends StatefulWidget {

  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  List<dynamic> _data = [];

  Future<void> readJson() async {
  final String response = await rootBundle.loadString('assets/favorito.json');
  final data = await json.decode(response);
    setState(() {
      _data = data["items"];
    });
  }

  @override
  void initState() {
    readJson();
    // loadData().then((value) => catalogdata=value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoritos'),
        centerTitle: true,
      ),
      drawer: const CustomWidgetHome(),
      body:Container(
        decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/fondofavorite.webp'),
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
            itemCount: _data.length,
            itemBuilder: (BuildContext context, int index) {
              final dato = _data[index];
              return CardCategory(
                  image: dato['image'],
                  price: dato['price'],
                  favorite:(){
                    QuickAlert.show(
                      context: context,
                      type: QuickAlertType.success,
                      text: 'Se ha agregado a lista de deseo',
                      );
                  },
                  buy:(){
                      QuickAlert.show(
                        context: context,
                        type: QuickAlertType.success,
                        text: 'Se ha agregado al carrito de compra',
                        );
                  }
              );
            }
          ),
        ),
      )
    );
  }
}