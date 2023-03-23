import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StarAndRattingUI extends StatelessWidget {
  const StarAndRattingUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: colorStar,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: Styles.text16w500,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '(245)',
          style: Styles.text14normal,
        ),
      ],
    );
  }
}
