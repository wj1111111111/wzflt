import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../theme/custom_button_style.dart';

extension FloatingButtonStyleHelper on CustomFloatingButton {
  static BoxDecoration get gradientGrayToBlueGray => BoxDecoration(
    borderRadius: BorderRadius.circular(20.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.gray80008, appTheme.blueGray90020],
    ),
  );
}

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton({
    Key? key,
    this.alignment,
    this.backgroundColor,
    this.onTap,
    this.shape,
    this.width,
    this.height,
    this.decoration,
    this.child,
  }) : super(key: key);

  final Alignment? alignment;

  final Color? backgroundColor;

  final VoidCallback? onTap;

  final ShapeBorder? shape;

  final double? width;

  final double? height;

  final BoxDecoration? decoration;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(alignment: alignment ?? Alignment.center, child: fabWidget)
        : fabWidget;
  }

  Widget get fabWidget => FloatingActionButton(
    backgroundColor: backgroundColor,
    onPressed: onTap,
    shape:
        shape ??
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.h)),
    child: Container(
      alignment: Alignment.center,
      width: width ?? 0,
      height: height ?? 0,
      decoration:
          decoration ??
          BoxDecoration(
            color: appTheme.blueGray90021,
            borderRadius: BorderRadius.circular(28.h),
          ),
      child: child,
    ),
  );
}
