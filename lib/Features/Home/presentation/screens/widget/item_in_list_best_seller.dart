import 'package:bookly_app/Features/Home/presentation/screens/widget/star_ratting_item_ui.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookItemInListBestSeller extends StatelessWidget {
  const BookItemInListBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.amberAccent,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsImg.book1),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 3),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "Harry Potter and the Goblet of Fire",
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
                  const Text(
                    "J.K. Rowling",
                    style: Styles.text14normal,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: const [
                      Text(
                        "19.99 €",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.text20w800,
                      ),
                      Spacer(),
                      StarAndRattingUI(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
