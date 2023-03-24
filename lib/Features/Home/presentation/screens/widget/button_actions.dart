import 'package:bookly_app/core/widgets/button.dart';
import 'package:flutter/material.dart';

class ButtonActions extends StatelessWidget {
  const ButtonActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ButtonApp(
            colorTxt: Colors.black,
            backgroundColorBtn: Colors.white,
            txt: '19.99€',
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        Expanded(
          child: ButtonApp(
            colorTxt: Colors.white,
            backgroundColorBtn: const Color(0xffEF8262),
            txt: 'Free preview',
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
