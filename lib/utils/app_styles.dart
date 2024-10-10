import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle style12Medium(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 12, context: context),
      color: color,
      fontWeight: FontWeight.w500, // Medium
      fontFamily: 'Rubik',
    );
  }

  static TextStyle style14SemiBold(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 14, context: context),
      color: color,
      fontWeight: FontWeight.w600, // Semi-bold
      fontFamily: 'Rubik',
      height: height,
    );
  }

  static TextStyle style35SemiBold(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 35, context: context),
      color: color,
      fontWeight: FontWeight.w600, // Semi-bold
      fontFamily: 'Rubik',
    );
  }

  static TextStyle style15Medium(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 15, context: context),
      color: color,
      fontWeight: FontWeight.w500, // Medium
      fontFamily: 'Rubik',
    );
  }

  static TextStyle style14Medium(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 14, context: context),
      color: color,
      fontWeight: FontWeight.w500, // Medium
      fontFamily: 'Rubik',
    );
  }

  static TextStyle style16Medium(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 16, context: context),
      color: color,
      fontWeight: FontWeight.w500, // Medium
      fontFamily: 'Rubik',
    );
  }

  static TextStyle style17SemiBold(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 17, context: context),
      color: color,
      fontWeight: FontWeight.w600, // Semi-bold
      fontFamily: 'Rubik',
    );
  }

  static TextStyle style14Regular(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 14, context: context),
      color: color,
      fontWeight: FontWeight.w400, // Regular
      fontFamily: 'Rubik',
    );
  }

  static TextStyle style16Regular(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 16, context: context),
      color: color,
      fontWeight: FontWeight.w400, // Regular
      fontFamily: 'Rubik',
    );
  }

  static TextStyle style20SemiBold(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 20, context: context),
      color: color,
      fontWeight: FontWeight.w600, // Semi-bold
      fontFamily: 'Rubik',
    );
  }

  static TextStyle style24SemiBold(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 24, context: context),
      color: color,
      fontWeight: FontWeight.w600, // Semi-bold
      fontFamily: 'Rubik',
      height: height,
    );
  }

  static TextStyle style25SemiBold(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 25, context: context),
      color: color,
      fontWeight: FontWeight.w600, // Semi-bold
      fontFamily: 'Rubik',
      height: height,
    );
  }

  static TextStyle style18SemiBold(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 18, context: context),
      color: color,
      fontWeight: FontWeight.w600, // Semi-bold
      fontFamily: 'Rubik',
    );
  }

  static TextStyle style18Medium(BuildContext context,
      {Color? color, double? height}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 18, context: context),
      color: color,
      fontWeight: FontWeight.w500, // Semi-bold
      fontFamily: 'Rubik',
      height: height,
    );
  }

  static TextStyle style13Regular(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 13, context: context),
      color: color,
      fontWeight: FontWeight.w400, // Regular
      fontFamily: 'Rubik',
    );
  }

  static TextStyle style12Regular(BuildContext context, {Color? color}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontsize: 12, context: context),
      color: color,
      fontWeight: FontWeight.w400, // Regular
      fontFamily: 'Rubik',
    );
  }
}

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
