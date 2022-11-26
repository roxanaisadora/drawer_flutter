import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  final String? title;
  final Widget? icon;
  final Function? onTap;
  const CardProfile({super.key, this.title, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: InkWell(
              onTap: ()=> onTap!(),
              child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                          icon!,
                          const SizedBox(width: 20,),
                          Text(title!, style: const TextStyle(fontSize: 16),),
                          ],),
                          const Icon(Icons.keyboard_arrow_right, size: 35,),
                        ],
                      ),
                    ),
            ),
          );
  }
}