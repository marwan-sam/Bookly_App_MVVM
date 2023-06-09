import 'package:bookly_app/core/models/books_model/books_model.dart';
import 'package:bookly_app/Features/Home/presentation/manager/Like%20This%20Book/cubit/like_this_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/book_details_body.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({super.key, required this.booksModel});
  final BooksModel booksModel;
  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  void initState() {
    BlocProvider.of<LikeThisBookCubit>(context).fetchLikeThisBook(
      category: widget.booksModel.volumeInfo.categories?[0] ?? " ",
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsBody(
          bookModel: widget.booksModel,
        ),
      ),
    );
  }
}
