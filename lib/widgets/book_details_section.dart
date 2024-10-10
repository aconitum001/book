import 'package:books/models/book_model.dart';
import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:books/widgets/book_details_tags.dart';
import 'package:books/widgets/objective_section.dart';
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
          BookDetailsTags(bookModel: bookModel),
          const SizedBox(
            height: 24,
          ),
          const Divider(
            color: AppColors.greyColor,
            height: 0,
          ),
          const SizedBox(
            height: 19,
          ),
          ObjectiveSection(
            bookModel: bookModel,
          ),
          const SizedBox(
            height: 17,
          ),
          const Divider(
            color: AppColors.greyColor,
            height: 0,
          ),
          const SizedBox(
            height: 19,
          ),
          Text(
            "What's it about?",
            style: AppStyles.style18SemiBold(
              context,
              color: AppColors.textColor,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            bookModel.description,
            style: AppStyles.style13Regular(
              context,
              color: AppColors.textColor,
            ),
          )
        ],
      ),
    );
  }
}
