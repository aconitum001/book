import 'package:books/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homeView = "/";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
