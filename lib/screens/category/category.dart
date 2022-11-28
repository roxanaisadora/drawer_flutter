import 'package:flutter/material.dart';
import 'package:sesion_09/screens/index.dart';
import 'package:sesion_09/widgets/index.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<dynamic> _data = [];

  Future<void> readJson() async {
  final String response = await rootBundle.loadString('assets/datacategory.json');
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
        title: const Text('Categorias'),
        centerTitle: true,
      ),
      drawer: const CustomWidgetHome(),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {  
          final dato = _data[index];
            return CategoryWidge(
              image1: dato['image1'],
              image2: dato['image2'],
              title: dato['title'],
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> SubCategory(
                    data2:dato['dato2']
                  ),
                  ),
                );
              },
            );
        },
        )
    );
  }
}