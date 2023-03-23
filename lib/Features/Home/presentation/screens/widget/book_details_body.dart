import 'package:flutter/material.dart';

import 'app_bar_book_details.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: const [
          AppBarDetailsBook(),
        ],
      ),
    );
  }
}
