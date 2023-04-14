import 'package:bookly_app/Features/Home/data/models/books_model/books_model.dart';
import 'package:bookly_app/core/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonActions extends StatelessWidget {
  const ButtonActions({super.key, required this.book});
  final BooksModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: ButtonApp(
              colorTxt: Colors.black,
              backgroundColorBtn: Colors.white,
              txt: '19.99€',
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: ButtonApp(
              onClick: () async {
                Uri uri = Uri.parse(book.volumeInfo.previewLink!);
                if (!await launchUrl(uri)) {
                  throw Exception('Could not launch $uri');
                } else {
                  await launchUrl(uri);
                }
              },
              colorTxt: Colors.white,
              backgroundColorBtn: const Color(0xffEF8262),
              txt: 'Free preview',
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
