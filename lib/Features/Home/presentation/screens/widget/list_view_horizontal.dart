import 'package:flutter/material.dart';

import 'book_Item_horizontal_ui.dart';

class FeatureListViewBooks extends StatelessWidget {
  const FeatureListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: BookItem(),
          );
        },
      ),
    );
  }
}
