import 'dart:developer';

import 'package:flutter/material.dart';

class Building {
  String? id;
  String? name;
  String ?place;
  String ?image;

  Building({this.id, this.name, this.place, this.image});
}

class SearchList extends StatefulWidget {
  SearchList({Key? key}) : super(key: key);
  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  Widget appBarTitle = Text(
    "My Properties",
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
      Building(id:"1", name: "polo", place: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/18855858_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"1", name: "polo1", place: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/18634892_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"1", name: "volo2", place: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/18986720_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"1", name: "kolo1", place: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/882450723_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
    );
    _list.add(
      Building(id:"1", name: "colo1", place: "280",image:"https://falabella.scene7.com/is/image/FalabellaPE/18855858_1?wid=1004&hei=1500&crop=248,0,1004,1500&qlt=70"),
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
        body: GridView.builder(
            itemCount: _searchList.length,
            itemBuilder: (context, index) {
              return Uiitem(_searchList[index]);
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            )
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
              element.name!.toLowerCase().contains(_searchText.toLowerCase()) ||
              element.place!.toLowerCase().contains(_searchText.toLowerCase()))
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
        "My Properties",
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
    return Card(
      margin: const EdgeInsets.fromLTRB(5, 5, 5, 7),
      elevation: 10.0,
      child: InkWell(
        splashColor: Colors.orange,
        onTap: () {
          print(building.id);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(building.image!),
                fit: BoxFit.cover)
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    building.name!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0),
                    maxLines: 1,
                  ),
                  const SizedBox(height: 0.0),
                  Text(
                    building.place!,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
