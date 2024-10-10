import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:books/widgets/custom_buy_book_button.dart';
import 'package:flutter/material.dart';

class ContinueBuySection extends StatelessWidget {
  const ContinueBuySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "7 days free trial, then €5.99/month",
              style: AppStyles.style18Regular(
                context,
                color: AppColors.lightText,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 11,
        ),
        const CustomBuyBookButton(),
        const SizedBox(
          height: 8,
        ),
        Text(
          "Terms · Privacy",
          style: AppStyles.style15Medium(
            context,
            color: AppColors.lightText,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
