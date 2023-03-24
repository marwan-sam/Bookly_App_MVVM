import 'package:flutter/material.dart';

import 'book_img_Item_ui.dart';

class ListViewForLikeThisBook extends StatelessWidget {
  const ListViewForLikeThisBook({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: BookItem(),
          );
        },
      ),
    );
  }
}
