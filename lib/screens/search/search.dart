import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sesion_09/widgets/index.dart';

class Building {
  String? id;
  String? name;
  String ?price;
  String ?image;

  Building({this.id, this.name, this.price, this.image});
}

class SearchList extends StatefulWidget {
  SearchList({Key? key}) : super(key: key);
  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  Widget appBarTitle = Text(
    "Search...",
    style: TextStyle(color: Colors.white),
  );
  Icon actionIcon = Icon(
    Icons.search,
    color: Colors.orange,
  );
  final key = GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = TextEditingController();
  List<Building> _list=[];
  List<Building> _searchList = [];

  late bool _IsSearching;
  String _searchText = "";

  @override
  void initState() {
    super.initState();
    _IsSearching = false;
    _searchQuery.addListener(() {
      if (_searchQuery.text.isEmpty) {
        setState(() {
          _IsSearching = false;
          _searchText = "";
          _buildSearchList();
        });
      } else {
        setState(() {
          _IsSearching = true;
          _searchText = _searchQuery.text;
          _buildSearchList();
        });
      }
    });
    init();
  }

  void init() {
    _list = [];
    _list.add(
      Building(id:"1", name: "Chompa marino hombre", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/882359721_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"2", name: "Joguer plomo hombre", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/882475587_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"3", name: "Jean mom mujer", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/19315069_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"4", name: "Chaleco Yoniste hombre", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/19113853_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"5", name: "Cardigan Basement mujer", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/18986720_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"6", name: "Polera Gap mujer", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/18855858_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"7", name: "Pantalon Mango mujer", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/882454805_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"8", name: "Pantalon Mossimo mujer", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/882546300_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"9", name: "Sweater Germanota mujer", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/882450723_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"17", name: "Sweater Volcom hombre", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/19056537_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"10", name: "Chompa De Yong mujer", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/19176245_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"11", name: "Chaleco Cardin hombre", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/19254452_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"12", name: "Casaca New York hombre", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/18854117_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"13", name: "Blazer mujer", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/882437563_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"14", name: "Polo croix hombre", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/18957256_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"15", name: "Casaca Univerty mujer", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/882455753_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"16", name: "Pantalon drill hombre", price: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/882479688_1?wid=1500&hei=1500&qlt=70"),
    );

    _searchList = _list;
    log('$_searchList');
  }

  @override
  Widget build(BuildContext context) {
    //SizeConfig().init(context);
    return Scaffold(
        key: key,
        appBar: AppBar(
        centerTitle: true,
        title: appBarTitle,
        iconTheme: const IconThemeData(color: Colors.orange),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(() {
                if (actionIcon.icon == Icons.search) {
                  actionIcon = const Icon(
                    Icons.close,
                    color: Colors.orange,
                  );
                  appBarTitle = TextField(
                    controller: _searchQuery,
                    style: const TextStyle(
                      color: Colors.orange,
                    ),
                    decoration: const InputDecoration(
                        hintText: "Search here..",
                        hintStyle: TextStyle(color: Colors.white)),
                  );
                  _handleSearchStart();
                } else {
                  _handleSearchEnd();
                }
              });
            },
          ),
        ]),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: GridView.builder(
              itemCount: _searchList.length,
              itemBuilder: (context, index) {
                return Uiitem(_searchList[index]);
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 280,
                
              )
              ),
        ));
  }

  List<Building> _buildList() {
    return _list; //_list.map((contact) =>  Uiitem(contact)).toList();
  }

  List<Building> _buildSearchList() {
    if (_searchText.isEmpty) {
      return _searchList =
          _list; //_list.map((contact) =>  Uiitem(contact)).toList();
    } else {
      /*for (int i = 0; i < _list.length; i++) {
        String name = _list.elementAt(i);
        if (name.toLowerCase().contains(_searchText.toLowerCase())) {
          _searchList.add(name);
        }
      }*/

      _searchList = _list
          .where((element) =>
              element.name!.toLowerCase().contains(_searchText.toLowerCase()))
          .toList();
      print('${_searchList.length}');
      return _searchList; //_searchList.map((contact) =>  Uiitem(contact)).toList();
    }
  }


  void _handleSearchStart() {
    setState(() {
      _IsSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      actionIcon = const Icon(
        Icons.search,
        color: Colors.orange,
      );
      appBarTitle = const Text(
        "Search...",
        style: TextStyle(color: Colors.white),
      );
      _IsSearching = false;
      _searchQuery.clear();
    });
  }
}

class Uiitem extends StatelessWidget {
  final Building building;
  const Uiitem(this.building, {super.key});

  Widget build(BuildContext context) {
    return CardSearch(
                  image: building.image!,
                  price: building.price!,
                  title: building.name!
              );
  }
}
