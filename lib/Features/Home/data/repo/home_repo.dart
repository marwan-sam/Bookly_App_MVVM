import 'package:bookly_app/Features/Home/data/models/books_model/books_model.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BooksModel>>> fetchNewsBooks();
  Future<Either<Failure, List<BooksModel>>> fetchFeatureBooks();
  Future<Either<Failure, List<BooksModel>>> fetchLikeThisBook({
    String? category,
  });
}
