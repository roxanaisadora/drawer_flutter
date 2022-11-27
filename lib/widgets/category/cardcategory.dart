

import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  final String? image;
   final String? price;
  const CardCategory({super.key, this.image, this.price});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(image!, height: 200, width: 250),
                            Container(
                              color: Colors.purple,
                              height: 30,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: RichText(
                                      textAlign: TextAlign.start,
                                      text: TextSpan(
                                          text: "\$ ${price!}",
                                          style: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 253, 249, 249),
                                              fontSize: 15,
                                              fontWeight:
                                                  FontWeight.bold)),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.favorite_border_outlined,
                                        color: Color.fromARGB(
                                            255, 235, 27, 31),
                                      )),
                                  InkWell(
                                      onTap: () {},
                                      child: const Icon(
                                        Icons.shopping_cart_outlined,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                        );
  }
}