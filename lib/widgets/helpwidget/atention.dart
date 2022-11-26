import 'package:flutter/material.dart';

class DropButtonAtention extends StatefulWidget {
  const DropButtonAtention({super.key});

  @override
  State<DropButtonAtention> createState() => _DropButtonAtentionState();
}

class _DropButtonAtentionState extends State<DropButtonAtention> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Mi cuenta';
    return Center(
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.black, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.black, width: 2),
          ),
          filled: true,

        ),
        value: dropdownValue,
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Mi cuenta', 'Problemas con en pedido', 'Garantias', 'Reembolso']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          );
        }).toList(),
      ),
    );
  }
}