import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class PayProfile extends StatelessWidget {
  const PayProfile({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Mi dirección fiscal'),
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
                                Icon(Icons.location_city),
                                SizedBox(width: 20,),
                                Text('Agregar nueva dirección fiscal', style: TextStyle(fontSize: 16),),
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
          children: <Widget>[
            SizedBox(
                    width: 200,
                    height: 150,
                    child: Image.asset('assets/credit.png', fit: BoxFit.fill,),
                  ),
            const TextField(
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Numero de tarjeta',
              ),
            ),
            const TextField(
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Vigencia',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nombre del titular',
              ),
            ),
            const TextField(
              obscureText: true,
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