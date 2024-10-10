import 'package:books/models/book_model.dart';
import 'package:books/utils/app_colors.dart';
import 'package:books/utils/assets.dart';

import 'package:flutter/material.dart';

class DiscoverListViewItemWidget extends StatelessWidget {
  const DiscoverListViewItemWidget({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(26),
        border: Border.all(
          color: AppColors.primaryColor,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          image: DecorationImage(
            image: AssetImage(
              bookModel.title == "The Mind and the Brain"
                  ? Assets.assetsImagesBook3
                  : bookModel.image,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
