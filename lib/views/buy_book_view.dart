import 'package:books/utils/app_colors.dart';
import 'package:books/utils/assets.dart';
import 'package:books/views/buy_book_view_body.dart';
import 'package:flutter/material.dart';

class BuyBookView extends StatelessWidget {
  const BuyBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.assetsImagesBugPageBackgroundImage,
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          const BuyBookViewBody(),
        ],
      ),
    );
  }
}
