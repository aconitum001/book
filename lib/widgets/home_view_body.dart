import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:books/widgets/complition_section.dart';
import 'package:books/widgets/custom_app_bar.dart';
import 'package:books/widgets/discover_list_view.dart';
import 'package:books/widgets/society_hacks_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 26,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: CustomAppBar(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Text(
              "Discover",
              style: AppStyles.style35SemiBold(
                context,
                color: AppColors.textColor,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const SizedBox(
            height: 117,
            child: DiscoverListView(),
          ),
          const SizedBox(
            height: 27,
          ),
          const ComplitionSection(),
          const SizedBox(
            height: 21,
          ),
          const SocietyHacksSection(),
        ],
      ),
    );
  }
}
