import 'package:bookly_app/Features/Home/presentation/screens/book_details_screen.dart';
import 'package:bookly_app/Features/Home/presentation/screens/home_screen.dart';
import 'package:bookly_app/Features/Splash/presentation/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class RouterApp {
  static const keyHomeRoute = '/homeScreen';
  static const keyBookDetailsRoute = '/detailsScreen';

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
        builder: (context, state) => const HomeScreen(),
      ),
      // * GoRoute For book details Screen :=
      GoRoute(
        path: keyBookDetailsRoute,
        builder: (context, state) => const BookDetailsScreen(),
      ),
    ],
  );
}
