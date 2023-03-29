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
            child: ImageBookItem(
              urlImg:
                  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.castupload.com%2Factors%2Fimge-unlu&psig=AOvVaw0Uu5xhmI-yWrq3O95mj6cQ&ust=1680063852734000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCNiMqvPj_f0CFQAAAAAdAAAAABAH",
            ),
          );
        },
      ),
    );
  }
}
