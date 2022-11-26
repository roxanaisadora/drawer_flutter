

import 'package:flutter/material.dart';

class FormHelp extends StatelessWidget {
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final String? labelText;


  const FormHelp({super.key, this.keyboardType, this.prefixIcon, this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
                      maxLines: null,
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                      keyboardType: keyboardType,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 13),
                        labelText:labelText,
                        hintStyle:const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                        ),
                    labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                        ),
                        prefixIcon: prefixIcon,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: Colors.black, width: 2),
                          ),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 1.5),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                  ),
              );
  }
}