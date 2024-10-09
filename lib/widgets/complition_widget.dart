import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ComplitionWidget extends StatelessWidget {
  const ComplitionWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.3,
      child: AspectRatio(
        aspectRatio: 103 / 27,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 11,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, -2),
                blurRadius: 8,
                spreadRadius: 0,
                color: Colors.black.withOpacity(.06),
              )
            ],
            borderRadius: BorderRadius.circular(30),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(
              "57% Completed",
              style: AppStyles.style12Medium(
                context,
                color: AppColors.textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
