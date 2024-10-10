import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:flutter/material.dart';

class MonthlyPlanWidget extends StatelessWidget {
  const MonthlyPlanWidget({super.key, required this.isSelected, this.onTap});

  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width,
      child: AspectRatio(
        aspectRatio: 340 / 73,
        child: Container(
          width: width,
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.greyColor,
            ),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Monthly",
              style: AppStyles.style18SemiBold(
                context,
                color: AppColors.textColor,
              ),
            ),
            subtitle: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                "14 days free, then €5.99/month",
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
                        'selected',
                      ), // Unique key for this state
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
                        'unselected',
                      ), // Unique key for this state
                      onTap: onTap,
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.greyColor,
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
