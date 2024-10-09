import 'package:books/utils/app_colors.dart';
import 'package:books/utils/assets.dart';
import 'package:books/widgets/tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Tapper(
          onTap: () {},
          rippleColor: AppColors.primaryColor.withOpacity(.2),
          borderRadius: BorderRadius.circular(8),
          child: SvgPicture.asset(
            Assets.assetsImagesBell,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Tapper(
          onTap: () {},
          rippleColor: AppColors.primaryColor.withOpacity(.2),
          borderRadius: BorderRadius.circular(8),
          child: SvgPicture.asset(
            Assets.assetsImagesSearch,
          ),
        ),
      ],
    );
  }
}
