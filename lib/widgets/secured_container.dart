import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:books/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecuredContainer extends StatelessWidget {
  const SecuredContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 33,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: AppColors.greyColor,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.assetsImagesShield,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "Secured with Apple Store",
              style: AppStyles.style13Regular(
                context,
                color: AppColors.lightText,
              ),
            )
          ],
        ),
      ),
    );
  }
}
