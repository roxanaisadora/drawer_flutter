import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class FiscalProfile extends StatelessWidget {
  const FiscalProfile({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Mis datos fiscales'),
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
                                Icon(Icons.card_membership),
                                SizedBox(width: 20,),
                                Text('Mi direccion fiscal', style: TextStyle(fontSize: 16),),
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
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Pais',
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Region',
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Distrito',
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Dirección',
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'RUC',
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