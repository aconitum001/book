import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:flutter/material.dart';

class LibraryViewBody extends StatelessWidget {
  const LibraryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "My Library",
        style: AppStyles.style16Regular(
          context,
          color: AppColors.textColor,
        ),
      ),
    );
  }
}
