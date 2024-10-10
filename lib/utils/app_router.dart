import 'package:books/models/book_model.dart';
import 'package:books/views/book_details_view.dart';
import 'package:books/views/buy_book_view.dart';
import 'package:books/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homeView = "/";
  static const String bookDetailsView = "/bookDetailsView";
  static const String buyBookView = "/buyBookView";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsView,
        pageBuilder: (context, state) {
          // Extract the bookModel from state.extra
          BookModel bookModel = state.extra as BookModel;

          return CustomTransitionPage(
            key: state.pageKey,
            child: BookDetailsView(bookModel: bookModel),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              // Fade transition with animation
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            transitionDuration:
                const Duration(milliseconds: 1000), // Control the duration here
          );
        },
      ),
       GoRoute(
        path: buyBookView,
        builder: (context, state) => const BuyBookView(),
      ),
    ],
  );
}
