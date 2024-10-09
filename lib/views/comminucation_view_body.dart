import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ComminucationViewBody extends StatelessWidget {
  const ComminucationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Community",
        style: AppStyles.style16Regular(
          context,
          color: AppColors.textColor,
        ),
      ),
    );
  }
}
