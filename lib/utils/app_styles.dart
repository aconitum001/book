import 'package:flutter/material.dart';

abstract class AppStyles {}

double getResponsiveFontSize(
    {required double fontsize, required BuildContext context}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontsize * scaleFactor;

  double lowerLimit = fontsize * 0.8;
  double upperLimit = fontsize * 1.2;

  responsiveFontSize = responsiveFontSize.clamp(lowerLimit, upperLimit);

  return responsiveFontSize;
}

double getScaleFactor(BuildContext context) {
  var width = MediaQuery.of(context).size.width;

  return width / 380;
}
