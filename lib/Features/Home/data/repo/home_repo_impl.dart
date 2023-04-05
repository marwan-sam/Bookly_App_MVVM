import 'package:bookly_app/Features/Home/data/models/books_model/books_model.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

import 'package:bookly_app/core/errors/failure.dart';

// import 'package:bookly_app/Features/Home/data/models/books_model/books_model';
import 'package:dio/dio.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final APISrevice api;
  HomeRepoImpl(this.api);

  @override
  Future<Either<Failure, List<BooksModel>>> fetchNewsBooks() async {
    try {
      var data = await api.get(
          endPoint:
              'volumes?q=subject:computer sicence&Filtering=free-ebooks&Sorting=newest');
      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioErro(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeatureBooks() async {
    try {
      var data = await api.get(
          endPoint: 'volumes?q=subject:programming&Filtering=free-ebooks');
      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioErro(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchLikeThisBook(
      {required String category}) async {
    try {
      var data = await api.get(
          endPoint:
              'volumes?q=subject:programming&Filtering=free-ebooks&Sorting=relevance');
      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioErro(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
}
