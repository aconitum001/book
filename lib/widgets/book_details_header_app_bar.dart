import 'package:books/utils/app_colors.dart';
import 'package:books/utils/assets.dart';
import 'package:books/widgets/tapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class BookDetailsHederAppBar extends StatelessWidget {
  const BookDetailsHederAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Tapper(
          onTap: () {
            GoRouter.of(context).pop();
          },
          shape: const CircleBorder(),
          rippleColor: AppColors.primaryColor.withOpacity(.2),
          child: const Icon(Icons.arrow_back_ios_outlined),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Tapper(
          onTap: () {},
          shape: const CircleBorder(),
          rippleColor: AppColors.primaryColor.withOpacity(.2),
          child: SvgPicture.asset(
            Assets.assetsImagesShare,
          ),
        ),
        const SizedBox(
          width: 22,
        ),
        Tapper(
          onTap: () {},
          shape: const CircleBorder(),
          rippleColor: AppColors.primaryColor.withOpacity(.2),
          child: SvgPicture.asset(
            Assets.assetsImagesBookMarkIcon,
          ),
        ),
      ],
    );
  }
}
