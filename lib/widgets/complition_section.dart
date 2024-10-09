import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:books/utils/assets.dart';
import 'package:books/widgets/continue_reading_widget.dart';
import 'package:flutter/material.dart';

class ComplitionSection extends StatelessWidget {
  const ComplitionSection({
    super.key,
  });

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
              const SizedBox(
                width: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    "It'll took only 6 minutes to finish this book!",
                    style: AppStyles.style14Medium(
                      context,
                      color: AppColors.lightText,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 19,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
