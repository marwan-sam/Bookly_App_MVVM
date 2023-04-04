import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_img_Item_ui.dart';
import 'button_actions.dart';
import 'star_ratting_item_ui.dart';

class SectionOfImageBookDetails extends StatelessWidget {
  const SectionOfImageBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var widthDev = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthDev * 0.2),
          child: const ImageBookItem(
            urlImg:
                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.castupload.com%2Factors%2Fimge-unlu&psig=AOvVaw0Uu5xhmI-yWrq3O95mj6cQ&ust=1680063852734000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCNiMqvPj_f0CFQAAAAAdAAAAABAH",
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          "The Jungle Book",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.text30normal,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.text18bold.copyWith(
            color: Colors.white.withOpacity(0.7),
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const StarAndRattingUI(
          //FIXME - Add Ratting and View Value
          rate: 5,
          views: 1545,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const ButtonActions(),
      ],
    );
  }
}
