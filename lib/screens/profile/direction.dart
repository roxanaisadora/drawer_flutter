import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class DirectionProfile extends StatelessWidget {
  const DirectionProfile({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Dirección de envio'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: InkWell(
                  onTap: () => _onAlertWithCustomContentPressed(context),
                  child: SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: const[
                              Icon(Icons.place),
                              SizedBox(width: 20,),
                              Text('Agregar nueva direccón', style: TextStyle(fontSize: 16),),
                              ],),
                              const Icon(Icons.keyboard_arrow_right, size: 35,),
                            ],
                          ),
                        ),
                ),
              ),
        ],
      ),
    );
  }
}

_onAlertWithCustomContentPressed(context) {
    Alert(
        context: context,
        content: Column(
          children: const <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Pais',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Region',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Distrito',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Dirección',
              ),
            ),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              "Guardar",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }