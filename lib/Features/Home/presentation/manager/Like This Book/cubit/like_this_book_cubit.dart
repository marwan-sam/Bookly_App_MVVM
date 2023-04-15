import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/models/books_model/books_model.dart';
import 'package:bookly_app/Features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'like_this_book_state.dart';

class LikeThisBookCubit extends Cubit<LikeThisBookState> {
  LikeThisBookCubit(this.repo) : super(LikeThisBookInitial());

  // fetching data :=
  final HomeRepo repo;

  Future<void> fetchLikeThisBook({String? category}) async {
    emit(LikeThisBookLoading());
    var res = await repo.fetchLikeThisBook(category: category);
    res.fold(
      (failure) => emit(LikeThisBookError(failure.messageError)),
      (getData) => emit(LikeThisBookSucc(getData)),
    );
  }
}
