part of 'best_seller_cubit.dart';

abstract class BestSellerState extends Equatable {
  const BestSellerState();

  @override
  List<Object> get props => [];
}

class BestSellerInitial extends BestSellerState {}

class BestSellerLoading extends BestSellerState {}

class BestSellerSucc extends BestSellerState {
  final List<BooksModel> books;

  const BestSellerSucc(this.books);
}

class BestSellerError extends BestSellerState {
  final String message;

  const BestSellerError(this.message);
}
