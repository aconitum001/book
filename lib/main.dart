import 'package:books/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Books());
}

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
