import 'package:bookly_app/Features/Home/data/models/books_model/books_model.dart';
import 'package:bookly_app/Features/Home/presentation/screens/widget/star_ratting_item_ui.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/router_app.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_img_Item_ui.dart';

class ItemInListViewBest extends StatelessWidget {
  const ItemInListViewBest({
    super.key,
    required this.bookModel,
  });
  final BooksModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterApp.keyBookDetailsRoute);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            // AspectRatio(
            //   aspectRatio: 2.5 / 4,
            //   child: Container(
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(16),
            //         color: Colors.amberAccent,
            //         image: DecorationImage(
            //           fit: BoxFit.fill,
            //           image: NetworkImage(cover),
            //         )),
            //   ),
            // ),
            ImageBookItem(
              urlImg:
                  bookModel.volumeInfo.imageLinks?.thumbnail ?? imgNotAvalible,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.text20normal.copyWith(
                        fontFamily: familyGTSectraFineRegular,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.text14w600,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "Free€",
                        overflow: TextOverflow.ellipsis,
                        style: Styles.text20w800,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.19,
                      ),
                      StarAndRattingUI(
                        rate: bookModel.volumeInfo.averageRating ?? 0.0,
                        views: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
