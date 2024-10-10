import 'package:books/models/book_model.dart';
import 'package:books/utils/assets.dart';
import 'package:books/widgets/tags_widget.dart';
import 'package:flutter/material.dart';

class BookDetailsTags extends StatelessWidget {
  const BookDetailsTags({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
