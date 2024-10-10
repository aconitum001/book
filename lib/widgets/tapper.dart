import 'package:flutter/material.dart';

///
/// Wrapper around the InkWell.
/// Handles taps with ripple effect.
///
class Tapper extends StatelessWidget {
  final Widget child;
  final GestureTapCallback onTap;
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;
  final Color? rippleColor;
  final ShapeBorder? shape;

  const Tapper({
    required this.child,
    required this.onTap,
    this.borderRadius,
    this.backgroundColor,
    this.rippleColor,
    super.key,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(0)),
      child: Material(
        color: backgroundColor ?? Colors.transparent,
        child: InkWell(
          customBorder: shape,
          splashColor: rippleColor ?? Theme.of(context).primaryColorLight,
          onTap: onTap,
          child: child,
        ),
      ),
    );
  }
}
