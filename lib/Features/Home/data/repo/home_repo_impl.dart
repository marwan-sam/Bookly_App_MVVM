import 'package:dartz/dartz.dart';

import 'package:bookly_app/core/errors/failure.dart';

import 'package:bookly_app/Features/Home/data/models/books_model/books_model.dart';

import 'home_repo.dart';

class HomeRepoTmpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BooksModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}
