import 'package:books/models/book_model.dart';

import 'package:books/widgets/book_deatils_header.dart';
import 'package:books/widgets/book_details_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BookDeatilsHeader(bookModel: bookModel),
        const SizedBox(
          height: 50,
        ),
        BookDetailsSection(bookModel: bookModel),
      ],
    );
  }
}
