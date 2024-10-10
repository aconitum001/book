import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SelectPlanText extends StatelessWidget {
  const SelectPlanText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Select your Plan",
            textAlign: TextAlign.center,
            style: AppStyles.style22SemiBold(
              context,
              color: AppColors.textColor,
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "No commitment. Cancel any time.",
            textAlign: TextAlign.center,
            style: AppStyles.style16Regular(
              context,
              color: AppColors.lightText,
            ),
          ),
        ),
      ],
    );
  }
}
