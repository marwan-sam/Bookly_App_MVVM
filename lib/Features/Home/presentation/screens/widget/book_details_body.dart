import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'app_bar_book_details.dart';
import 'book_img_Item_ui.dart';
import 'button_actions.dart';
import 'list_view_like_this_book.dart';
import 'section_of_books_like_this.dart';
import 'section_of_image_book_details.dart';
import 'star_ratting_item_ui.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: const [
                AppBarDetailsBook(),
                SectionOfImageBookDetails(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SectionOfBooksLikeThis(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
