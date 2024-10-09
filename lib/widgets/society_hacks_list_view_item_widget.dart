import 'package:books/models/book_model.dart';
import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SocietyHacksListViewItemWidget extends StatelessWidget {
  const SocietyHacksListViewItemWidget({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          bookModel.image,
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Text(
          bookModel.title,
          maxLines: 2,
          style: AppStyles.style14SemiBold(
            context,
            color: AppColors.textColor,
            height: 1.05,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          bookModel.author,
          maxLines: 1,
          style: AppStyles.style12Regular(
            context,
            color: AppColors.lightText,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
