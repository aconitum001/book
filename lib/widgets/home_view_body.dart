import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:books/utils/assets.dart';
import 'package:books/widgets/continue_reading_widget.dart';
import 'package:books/widgets/custom_app_bar.dart';
import 'package:books/widgets/discover_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            "Continue reading",
            style: AppStyles.style24SemiBold(
              context,
              color: AppColors.textColor,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const ContinueReadingWidget(),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            children: [
              Image.asset(
                Assets.assetsImagesBookIcon,
                height: 17,
              ),
              FittedBox(
                fit: BoxFit.fill,
                child: Text(
                  " It'll took only 6 minutes to finish this book!",
                  style: AppStyles.style14Medium(
                    context,
                    color: AppColors.lightText,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
