import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get fillBlack =>
      OutlineInputBorder(borderSide: BorderSide.none);
  static OutlineInputBorder get outlineOnPrimary => OutlineInputBorder(
    borderSide: BorderSide(
      color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
      width: 1,
    ),
  );
  static OutlineInputBorder get outlineBlueGray => OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.h),
    borderSide: BorderSide.none,
  );
  static OutlineInputBorder get outlineBlack => OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.h),
    borderSide: BorderSide(
      color: appTheme.black900.withValues(alpha: 0.1),
      width: 1,
    ),
  );
  static OutlineInputBorder get outlineBlackTL6 => OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.h),
    borderSide: BorderSide(
      color: appTheme.black900.withValues(alpha: 0.1),
      width: 1,
    ),
  );
  static OutlineInputBorder get outlineOnPrimaryLR8 => OutlineInputBorder(
    borderRadius: BorderRadius.only(topRight: Radius.circular(8.h)),
    borderSide: BorderSide(
      color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
    ),
  );
  static OutlineInputBorder get outlineOnPrimary1 => OutlineInputBorder(
    borderSide: BorderSide(
      color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
    ),
  );
  static OutlineInputBorder get outlineOnPrimary2 => OutlineInputBorder(
    borderSide: BorderSide(
      color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
    ),
  );
  static OutlineInputBorder get outlineOnPrimaryBR8 => OutlineInputBorder(
    borderRadius: BorderRadius.only(bottomRight: Radius.circular(8.h)),
    borderSide: BorderSide(
      color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
    ),
  );
  static OutlineInputBorder get outlineLightGreen => OutlineInputBorder(
    borderSide: BorderSide(color: appTheme.lightGreen800, width: 1),
  );
  static OutlineInputBorder get fillGray => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.h),
    borderSide: BorderSide.none,
  );
  static OutlineInputBorder get outlineBlueGrayTL6 => OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.h),
    borderSide: BorderSide(color: appTheme.blueGray70006, width: 1),
  );
  static OutlineInputBorder get fillBlueGray => OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.h),
    borderSide: BorderSide.none,
  );
  static OutlineInputBorder get outlineBlueGrayTL61 => OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.h),
    borderSide: BorderSide(color: appTheme.blueGray70001, width: 1),
  );
  static OutlineInputBorder get outlineLightGreenTL6 => OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.h),
    borderSide: BorderSide(color: appTheme.lightGreen800, width: 1),
  );
}

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.boxDecoration,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.obscureText = false,
    this.readOnly = false,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  }) : super(key: key);

  final Alignment? alignment;

  final double? width;

  final BoxDecoration? boxDecoration;

  final TextEditingController? scrollPadding;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final bool? readOnly;

  final VoidCallback? onTap;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
          alignment: alignment ?? Alignment.center,
          child: textFormFieldWidget(context),
        )
        : textFormFieldWidget(context);
  }

  Widget textFormFieldWidget(BuildContext context) => Container(
    width: width ?? double.maxFinite,
    decoration: boxDecoration,
    child: TextFormField(
      scrollPadding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      controller: controller,
      focusNode: focusNode,
      onTapOutside: (event) {
        if (focusNode != null) {
          focusNode?.unfocus();
        } else {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      autofocus: autofocus!,
      style: textStyle ?? CustomTextStyles.bodyMediumBluegray400,
      obscureText: obscureText!,
      readOnly: readOnly!,
      onTap: () {
        onTap?.call();
      },
      textInputAction: textInputAction,
      keyboardType: textInputType,
      maxLines: maxLines ?? 1,
      decoration: decoration,
      validator: validator,
    ),
  );
  InputDecoration get decoration => InputDecoration(
    hintText: hintText ?? "",
    hintStyle: hintStyle ?? CustomTextStyles.titleSmallBluegray400_1,
    prefixIcon: prefix,
    prefixIconConstraints: prefixConstraints,
    suffixIcon: suffix,
    suffixIconConstraints: suffixConstraints,
    isDense: true,
    contentPadding:
        contentPadding ??
        EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
    fillColor: fillColor ?? theme.colorScheme.onPrimaryContainer,
    filled: filled,
    border:
        borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.h),
          borderSide: BorderSide(color: appTheme.blueGray70001, width: 1),
        ),
    enabledBorder:
        borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.h),
          borderSide: BorderSide(color: appTheme.blueGray70001, width: 1),
        ),
    focusedBorder: (borderDecoration ??
            OutlineInputBorder(borderRadius: BorderRadius.circular(8.h)))
        .copyWith(
          borderSide: BorderSide(color: appTheme.blueGray90017, width: 1),
        ),
  );
}
