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
          child: const BookItem(),
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
