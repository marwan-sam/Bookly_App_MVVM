import 'package:bookly_app/Features/Home/presentation/screens/widget/item_in_list_best_seller.dart';
import 'package:flutter/material.dart';

class ListViewResult extends StatelessWidget {
  const ListViewResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: ItemInListView(),
        );
      },
    );
  }
}
