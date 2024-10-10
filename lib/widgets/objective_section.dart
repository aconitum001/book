import 'package:books/models/book_model.dart';
import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:books/widgets/objective_widget.dart';
import 'package:flutter/material.dart';

class ObjectiveSection extends StatelessWidget {
  const ObjectiveSection({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "What you'll learn?",
          style: AppStyles.style18SemiBold(
            context,
            color: AppColors.textColor,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Column(
          children: bookModel.objectives
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: ObjectiveWidget(
                    text: e,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
