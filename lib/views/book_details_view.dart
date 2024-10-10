import 'package:books/models/book_model.dart';
import 'package:books/utils/app_colors.dart';
import 'package:books/views/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: BookDetailsViewBody(
        bookModel: bookModel,
      ),
    );
  }
}
