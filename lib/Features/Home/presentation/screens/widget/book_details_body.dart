import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'app_bar_book_details.dart';
import 'book_Item_ui.dart';
import 'star_ratting_item_ui.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var widthDev = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const AppBarDetailsBook(),
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
        ],
      ),
    );
  }
}
