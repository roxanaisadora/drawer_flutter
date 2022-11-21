

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final String? hintText;
  final Widget? prefixIcon;
  final String? initialvalue;
  final Function(String)? onChange;

  const CustomTextField({super.key, this.keyboardType, this.hintText, this.prefixIcon, this.initialvalue, this.onChange});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialvalue,
      onChanged: onChange,
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
        fillColor: Colors.white,
        hintText: hintText,
        prefixIcon: prefixIcon,
        contentPadding: const EdgeInsets.all(18),
      ),
    );
  }
}