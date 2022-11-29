import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
class CardFavorito extends StatelessWidget {
  final String? image;
  final String? price;
  final Function? favorite;
  final Function? buy;
  const CardFavorito({super.key, this.image, this.price, this.favorite, this.buy});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 15, right: 15, top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 220,
                            width: 250,
                            child: Stack(
                                    children: [
                                      const Center(child: CircularProgressIndicator()),
                                      FadeInImage.memoryNetwork(
                                            placeholder: kTransparentImage,
                                            image: image!,
                                            fit: BoxFit.cover,
                                            height: 220,
                                            width: 250,
                                          ),
                                    ],
                                  ),
                          ),
                          Container(
                            color: const Color.fromARGB(255, 244, 100, 148),
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                InkWell(
                                    onTap: ()=> favorite!(),
                                    child: const Icon(
                                      Icons.favorite,
                                      color: Color.fromARGB(
                                          255, 235, 27, 31),
                                    )
                                    ),
                                
                                InkWell(
                                    onTap: ()=> buy!(),
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
                        );
  }
}