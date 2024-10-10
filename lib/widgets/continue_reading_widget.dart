import 'package:books/utils/assets.dart';
import 'package:books/utils/data.dart';
import 'package:books/widgets/complition_widget.dart';
import 'package:books/widgets/continue_reading_main_container.dart';
import 'package:flutter/material.dart';

class ContinueReadingWidget extends StatelessWidget {
  const ContinueReadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;

    double scaleFactor = width * 0.0002;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        ContinueReadingMainContainer(
          bookModel: books[2],
        ),
        Positioned(
          right: 8,
          top: -11,
          child: ComplitionWidget(width: width),
        ),
        Positioned(
          top: -22,
          left: width * 0.08,
          child: Transform(
            transform: Matrix4.identity()
              ..rotateZ(0.1)
              ..scale(
                1 + scaleFactor,
              ),
            child: Image.asset(
              Assets.assetsImagesComplitionImage,
            ),
          ),
        ),
      ],
    );
  }
}
