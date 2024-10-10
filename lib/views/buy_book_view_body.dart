import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:books/widgets/continue_buy_section.dart';
import 'package:books/widgets/custom_buy_book_app_bar.dart';
import 'package:books/widgets/secured_container.dart';
import 'package:books/widgets/select_plan_section.dart';
import 'package:books/widgets/select_plan_text_widget.dart';
import 'package:flutter/material.dart';

class BuyBookViewBody extends StatelessWidget {
  const BuyBookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomBuyBookAppBar(),
          const Spacer(
            flex: 5,
          ),
          RichText(
            text: TextSpan(
              style: AppStyles.style36SemiBold(
                context,
                color: AppColors.textColor,
                height: 1.05,
              ),
              children: const [
                TextSpan(text: "Learn with no limits and get better every "),
                TextSpan(
                  text: "day.",
                  style: TextStyle(
                    color: AppColors
                        .primaryColor, // Set the color for the word "day"
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          const SelectPlanText(),
          const Spacer(),
          const SelectPlanSection(),
          const Spacer(
            flex: 2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.19,
            ),
            child: const SecuredContainer(),
          ),
          const Spacer(
            flex: 3,
          ),
          const ContinueBuySection(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
