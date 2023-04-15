import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/models/books_model/books_model.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  final APISrevice api;
  SearchRepoImpl(this.api);

  @override
  Future<Either<Failure, List<BooksModel>>> SearchBooks(
      {String? search}) async {
    try {
      var data = await api.get(
          endPoint:
              'volumes?q=subject:$search&Filtering=free-ebooks&Sorting=newest');
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
