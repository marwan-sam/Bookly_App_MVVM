import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.amberAccent,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsImg.book1),
            )),
      ),
    );
  }
}