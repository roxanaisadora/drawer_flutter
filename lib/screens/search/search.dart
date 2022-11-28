// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:sesion_09/widgets/index.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<dynamic> _data = [];
  TextEditingController editingController = TextEditingController();

  Future<void> readJson() async {
  final String response = await rootBundle.loadString('assets/search.json');
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
        title: const TextField(
                    style: TextStyle(
                      color: Colors.orange,
                    ),
        )
      ),
      body: Container(
        decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/fondocategory.jpg'),
                        fit: BoxFit.cover
                        )
                      ),
        child: Padding(
          padding: const EdgeInsets.only(top:10, bottom: 10),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 256,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height/1.5),
            ),
            itemCount: _data.length,
            itemBuilder: (BuildContext context, int index) {
              final dato = _data[index];
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