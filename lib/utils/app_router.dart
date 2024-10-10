import 'package:books/models/book_model.dart';
import 'package:books/views/book_details_view.dart';
import 'package:books/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homeView = "/";
  static const String bookDetailsView = "/bookDetailsView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) {
          BookModel bookModel = state.extra as BookModel;
          return BookDetailsView(bookModel: bookModel);
        },
      ),
    ],
  );
}
