import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:books/widgets/tapper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBuyBookAppBar extends StatelessWidget {
  const CustomBuyBookAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Tapper(
          rippleColor: AppColors.primaryColor.withOpacity(.2),
          onTap: () {
            GoRouter.of(context).pop();
          },
          child: Icon(
            Icons.close,
            color: AppColors.lightText,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: AppColors.lightText,
              ),
            ),
          ),
          child: Text(
            "Already Purchased?",
            style: AppStyles.style16Medium(
              context,
              color: AppColors.lightText,
              height: 1,
            ),
          ),
        ),
      ],
    );
  }
}
