part of 'like_this_book_cubit.dart';

abstract class LikeThisBookState extends Equatable {
  const LikeThisBookState();

  @override
  List<Object> get props => [];
}

class LikeThisBookInitial extends LikeThisBookState {}

class LikeThisBookError extends LikeThisBookState {
  final String e;

  const LikeThisBookError(this.e);
}

class LikeThisBookLoading extends LikeThisBookState {}

class LikeThisBookSucc extends LikeThisBookState {
  final List<BooksModel> books;

  const LikeThisBookSucc(this.books);
}
