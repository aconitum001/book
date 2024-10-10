import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomBuyBookButton extends StatelessWidget {
  const CustomBuyBookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
        ),
        child: Text(
          "Continue",
          style: AppStyles.style20SemiBold(
            context,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
