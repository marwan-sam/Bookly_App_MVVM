import 'package:bookly_app/Features/Home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/Features/Home/presentation/manager/Feature%20Best%20Seller/cubit/best_seller_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/manager/Featured%20Books/cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'core/utils/locator.dart';
import 'core/utils/router_app.dart';

void main() {
  setupLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchBooks(),
        ),
        BlocProvider(
          create: (context) => BestSellerCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNews(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundApp,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        // home: const SplashScreen(),
        routerConfig: RouterApp.routers,
      ),
    );
  }
}
