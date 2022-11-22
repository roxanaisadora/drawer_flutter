

import 'package:flutter/material.dart';
import 'package:sesion_09/preferences/preference.dart';

class CustomTextField2 extends StatelessWidget {
  final TextInputType? keyboardType;
  final String? hintText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  //final String? initialvalue;
  //final Function(String)? onChange;

  const CustomTextField2({super.key, this.keyboardType, this.hintText, this.prefixIcon, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //initialValue: initialvalue,
      //onChanged: onChange,
      controller:controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.green),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.green),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        // ignore: unrelated_type_equality_checks
        fillColor: (Preferences.theme == true)
                        ? Colors.grey
                        : Colors.white,
        hintText: hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(vertical:12, horizontal: 12),
          child: prefixIcon,
        ),
        contentPadding: const EdgeInsets.all(18),
      ),
    );
  }
}