import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/models/books_model/books_model.dart';
import 'package:bookly_app/Features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(this.repo) : super(BestSellerInitial());

// fetching news data :=
  final HomeRepo repo;

  Future<void> fetchNews() async {
    emit(BestSellerLoading());
    var res = await repo.fetchNewsBooks();
    res.fold(
      (failure) => emit(BestSellerError(failure.messageError)),
      (getData) => emit(BestSellerSucc(getData)),
    );
  }
}
