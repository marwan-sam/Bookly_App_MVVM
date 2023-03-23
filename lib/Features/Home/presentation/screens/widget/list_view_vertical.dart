import 'package:flutter/material.dart';

import 'item_in_list_best_seller.dart';

class FeatureListViewBestSeller extends StatelessWidget {
  const FeatureListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: ItemInListBestSeller(),
        );
      },
    );
  }
}
