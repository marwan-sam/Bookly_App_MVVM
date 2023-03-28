import 'package:bookly_app/Features/Home/presentation/manager/Featured%20Books/cubit/featured_books_cubit.dart';
import 'package:bookly_app/core/widgets/error_ui.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_img_Item_ui.dart';

class FeatureListViewBooks extends StatelessWidget {
  const FeatureListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucc) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: BookItem(),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksError) {
          return ErrorUI(messageError: state.message);
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
