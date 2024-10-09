import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:books/widgets/society_hacks_list_view.dart';
import 'package:flutter/material.dart';

class SocietyHacksSection extends StatelessWidget {
  const SocietyHacksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            "Society Hacks",
            style: AppStyles.style24SemiBold(
              context,
              color: AppColors.textColor,
              height: 1,
            ),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            "Who wants to become smarter?",
            style: AppStyles.style16Regular(
              context,
              color: AppColors.lightText,
            ),
          ),
        ),
        const SizedBox(
          height: 19,
        ),
        const SizedBox(
          height: 230,
          child: SocietyHacksListView(),
        ),
      ],
    );
  }
}
