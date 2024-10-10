import 'package:books/models/book_model.dart';
import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:books/utils/assets.dart';
import 'package:books/widgets/tags_widget.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            bookModel.title,
            style: AppStyles.style25SemiBold(
              context,
              color: AppColors.textColor,
              height: 1.15,
            ),
          ),
          Text(
            bookModel.author,
            style: AppStyles.style18Medium(
              context,
              color: AppColors.lightText,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: TagsWidget(
                  title: "${bookModel.time} min",
                  image: Assets.assetsImagesTime,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                flex: 3,
                child: TagsWidget(
                  title: "${bookModel.chapters} chapters",
                  image: Assets.assetsImagesBook,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                flex: 3,
                child: TagsWidget(
                  title: "${bookModel.insights} insights",
                  image: Assets.assetsImagesInsight,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
