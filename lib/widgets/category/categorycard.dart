import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryWidge extends StatelessWidget {
  final String? title;
  final String? image1;
  final String? image2;
  final Function? onTap;

  const CategoryWidge({super.key, this.title, this.image1, this.image2, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ()=> onTap!(),
        child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Container(
                      width: double.infinity,
                      height: 145,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/fondocategory.jpg'),
                        fit: BoxFit.cover
                        )
                      ),
                        child: Row(
                          children: [
                            Expanded(child: SizedBox( height: 145,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Center(child: Text(title!, style: const TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center)),
                            ),
                            )),
                            Expanded(child: SizedBox( height: 145,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      const Center(child: CircularProgressIndicator()),
                                      Center(
                                        child: FadeInImage.memoryNetwork(
                                              placeholder: kTransparentImage,
                                              image: image1!,
                                              fit: BoxFit.cover,
                                              height: 145,
                                            ),
                                      ),
                                    ],
                                  ),
                                    ),
                                Expanded(
                                  child: Stack(
                                    children: [
                                      const Center(child: CircularProgressIndicator()),
                                      Center(
                                        child: FadeInImage.memoryNetwork(
                                              placeholder: kTransparentImage,
                                              image: image2!,
                                              fit: BoxFit.cover,
                                              height: 145,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            ))
                          ],
                        )
                    ),
            ),
      );
  }
}