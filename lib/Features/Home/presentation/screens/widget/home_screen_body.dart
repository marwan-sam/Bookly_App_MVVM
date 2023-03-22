import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'list_view_horizontal.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          HomeAppBar(),
          FeatureListViewBooks(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.titleMeduim,
          )
        ],
      ),
    );
  }
}
