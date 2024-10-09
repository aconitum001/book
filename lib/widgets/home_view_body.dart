import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:books/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
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
              )
            ],
          ),
        ),
        
      ],
    );
  }
}
