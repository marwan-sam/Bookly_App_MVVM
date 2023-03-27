import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/models/books_model/books_model.dart';
import 'package:bookly_app/Features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.repo) : super(FeaturedBooksInitial());

  // fetching data :=
  final HomeRepo repo;

  Future<void> fetchBooks() async {
    emit(FeaturedBooksLoading());
    var res = await repo.fetchFeatureBooks();
    res.fold(
      (failure) => emit(FeaturedBooksError(failure.messageError)),
      (getData) => emit(FeaturedBooksSucc(getData)),
    );
  }
}
