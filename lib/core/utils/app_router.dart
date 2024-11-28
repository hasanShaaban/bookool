import 'package:bookool/featuer/home/presentation/views/book_details_view.dart';
import 'package:bookool/featuer/home/presentation/views/home_view.dart';
import 'package:bookool/featuer/search/presentation/views/search_view.dart';
import 'package:bookool/featuer/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeViewRouter = '/HomeView';
  static const kBookDetailsRouter = '/BookDetailsView';
  static const kSearchViewRouter = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewRouter,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsRouter,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchViewRouter,
        builder: (context, state) => const SearchView(),
      )
    ],
  );
}
