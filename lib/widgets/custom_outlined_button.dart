import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import '../core/app_export.dart';
import 'base_button.dart';

class CustomOutlinedButton extends BaseButton {
  CustomOutlinedButton({
    Key? key,
    this.decoration,
    this.hasBlurBackground,
    this.leftIcon,
    this.rightIcon,
    this.label,
    VoidCallback? onPressed,
    ButtonStyle? buttonStyle,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    Alignment? alignment,
    double? height,
    double? width,
    EdgeInsets? margin,
    required String text,
  }) : super(
         text: text,
         onPressed: onPressed,
         buttonStyle: buttonStyle,
         isDisabled: isDisabled,
         buttonTextStyle: buttonTextStyle,
         height: height,
         alignment: alignment,
         width: width,
         margin: margin,
       );

  final BoxDecoration? decoration;

  final bool? hasBlurBackground;

  final Widget? leftIcon;

  final Widget? rightIcon;

  final Widget? label;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
          alignment: alignment ?? Alignment.center,
          child: buildOutlinedButtonWidget,
        )
        : buildOutlinedButtonWidget;
  }

  Widget get buildOutlinedButtonWidget => Container(
    height: this.height ?? 36.h,
    width: this.width ?? double.maxFinite,
    margin: margin,
    decoration: decoration,
    child: ClipRRect(
      borderRadius:
          (buttonStyle?.shape?.resolve({}) as RoundedRectangleBorder?)
              ?.borderRadius ??
          BorderRadius.circular(12.h),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: hasBlurBackground ?? false ? 8.h : 0,
          sigmaY: hasBlurBackground ?? false ? 8.h : 0,
        ),
        child: OutlinedButton(
          style: buttonStyle,
          onPressed: isDisabled ?? false ? null : onPressed ?? () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              leftIcon ?? const SizedBox.shrink(),
              Text(text, style: buttonTextStyle ?? theme.textTheme.titleSmall),
              rightIcon ?? const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    ),
  );
}
