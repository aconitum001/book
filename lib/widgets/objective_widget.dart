import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ObjectiveWidget extends StatelessWidget {
  const ObjectiveWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.check,
          color: AppColors.primaryColor,
          size: 28,
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Text(
            text,
            style: AppStyles.style14Regular(
              context,
              color: AppColors.textColor,
            ),
          ),
        ),
      ],
    );
  }
}
