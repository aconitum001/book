import 'package:books/models/book_model.dart';
import 'package:books/utils/app_colors.dart';
import 'package:books/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ContinueReadingMainContainer extends StatelessWidget {
  const ContinueReadingMainContainer({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 358 / 148,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: AppColors.lightBlue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const Expanded(
              flex: 5,
              child: SizedBox(),
            ),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bookModel.title,
                    style: AppStyles.style18Medium(
                      context,
                      color: Colors.white,
                      height: 1.15,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 18,
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "by ${bookModel.author}",
                        style: AppStyles.style13Regular(
                          context,
                          color: Colors.white.withOpacity(.7),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 31,
                        height: 31,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.play_arrow_rounded,
                          color: AppColors.lightBlue,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Resume",
                        style: AppStyles.style16Medium(
                          context,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
