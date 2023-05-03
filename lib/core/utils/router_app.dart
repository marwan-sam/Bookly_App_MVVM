import 'package:bookly_app/core/models/books_model/books_model.dart';
import 'package:bookly_app/Features/Home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/Features/Home/presentation/manager/Like%20This%20Book/cubit/like_this_book_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/screens/book_details_screen.dart';
import 'package:bookly_app/Features/Home/presentation/screens/home_screen.dart';
import 'package:bookly_app/Features/Search/presintation/screen/search_screen.dart';
import 'package:bookly_app/Features/Splash/presentation/screen/splash_screen.dart';
import 'package:bookly_app/core/utils/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class RouterApp {
  static const keyHomeRoute = '/homeScreen';
  static const keyBookDetailsRoute = '/detailsScreen';
  static const keySearchRoute = '/searchScreen';

  // GoRouter configuration
  static final routers = GoRouter(
    routes: [
      // * GoRoute For Splash Screen :=
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      // * GoRoute For Home Screen :=
      GoRoute(
        path: keyHomeRoute,
        builder: (context, state) => HomeScreen(),
      ),
      // * GoRoute For Book Details Screen :=
      GoRoute(
        path: keyBookDetailsRoute,
        builder: (context, state) => BlocProvider(
          create: (context) => LikeThisBookCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsScreen(
            booksModel: state.extra as BooksModel,
          ),
        ),
      ),
      // * GoRoute For Search Screen :=
      GoRoute(
        path: keySearchRoute,
        builder: (context, state) => const SearchScreen(),
      ),
    ],
  );
}
