import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ImageBookItem extends StatelessWidget {
  const ImageBookItem({super.key, required this.urlImg});

  final String urlImg;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            // color: Colors.amberAccent,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(urlImg),
            )),
      ),
    );
  }
}
