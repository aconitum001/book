import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:flutter/material.dart';

class YearlyPlanWidget extends StatelessWidget {
  const YearlyPlanWidget({
    super.key,
    required this.isSelected,
    required this.onTap,
  });

  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        YearlyContainer(
          width: width,
          isSelected: isSelected,
          onTap: onTap,
        ),
        Positioned(
          right: 5,
          bottom: -20,
          child: SizedBox(
            width: width * 0.25,
            child: AspectRatio(
              aspectRatio: 80 / 27,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColors.primaryColor),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  child: Text(
                    "Best value!",
                    style: AppStyles.style12Medium(
                      context,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class YearlyContainer extends StatelessWidget {
  const YearlyContainer({
    super.key,
    required this.width,
    required this.isSelected,
    required this.onTap,
  });

  final double width;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: AspectRatio(
        aspectRatio: 340 / 73,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.primaryColor,
            ),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Annually",
              style: AppStyles.style18SemiBold(
                context,
                color: AppColors.textColor,
              ),
            ),
            subtitle: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                "14 days free, then €3.99/month",
                style: AppStyles.style14Regular(
                  context,
                  color: AppColors.lightText,
                ),
              ),
            ),
            trailing: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: isSelected
                  ? GestureDetector(
                      key: const ValueKey(
                          'selected'), // Unique key for this state
                      onTap: onTap,
                      child: Container(
                        width: 28,
                        height: 28,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.greyColor,
                          ),
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    )
                  : GestureDetector(
                      key: const ValueKey(
                          'unselected'), // Unique key for this state
                      onTap: onTap,
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
