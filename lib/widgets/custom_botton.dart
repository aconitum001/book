import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(99),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.play_arrow_rounded,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(
            width: 3,
          ),
          Text(
            "Listen",
            style: AppStyles.style20SemiBold(
              context,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
