import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TagsWidget extends StatelessWidget {
  const TagsWidget({super.key, required this.title, required this.image});

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: const Color(0xffF7ECDE),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(image),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: AppStyles.style16Medium(
              context,
              color: AppColors.textColor,
            ),
          )
        ],
      ),
    );
  }
}
