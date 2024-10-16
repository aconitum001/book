import 'package:books/models/book_model.dart';
import 'package:books/utils/app_router.dart';
import 'package:books/utils/assets.dart';
import 'package:books/widgets/book_details_header_app_bar.dart';
import 'package:books/widgets/custom_botton.dart';
import 'package:defer_pointer/defer_pointer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDeatilsHeader extends StatelessWidget {
  const BookDeatilsHeader({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return DeferredPointerHandler(
      child: Container(
        clipBehavior: Clip.none,
        width: width,
        height: 337,
        decoration: BoxDecoration(
          color: bookModel.title == "13 Things Mentally Strong People Don't Do"
              ? null
              : bookModel.backgroundColor,
          image: bookModel.title == "13 Things Mentally Strong People Don't Do"
              ? const DecorationImage(
                  image: AssetImage(
                    Assets.assetsImagesBackgroundDetails,
                  ),
                  fit: BoxFit.fill,
                )
              : null,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: BookDetailsHederAppBar(),
            ),
            Hero(
              tag: "books-tag-${bookModel.id}",
              child: Material(
                child: Transform.translate(
                  offset: const Offset(0, 30), // Move the image up by 20 pixels
                  child: Transform.scale(
                    scale: 1.5, // Scale the image by 1.2 times
                    child: Image.asset(
                      bookModel.image,
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, 95),
              child: SizedBox(
                height: 56,
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: DeferPointer(
                  child: CustomButton(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.buyBookView);
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
