

import 'package:flutter/material.dart';

class  CardButton extends StatelessWidget {
  final String? text;
  final Function? onTap;
  const CardButton ({super.key, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
              onTap: ()=> onTap!(),
              child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            text!, 
                            style: const TextStyle(fontSize: 16),),
                          const Icon(Icons.keyboard_arrow_right, size: 35,),
                        ],
                      ),
                    ),
            );
  }
}