import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../data/models/selectionPopupModel/selection_popup_model.dart';

extension DropDownStyleHelper on CustomDropDown {
  static OutlineInputBorder get fillGray => OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.h),
    borderSide: BorderSide.none,
  );
  static OutlineInputBorder get fillBlueGray => OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.h),
    borderSide: BorderSide.none,
  );
}

class CustomDropDown extends StatelessWidget {
  CustomDropDown({
    Key? key,
    this.alignment,
    this.width,
    this.boxDecoration,
    this.focusNode,
    this.icon,
    this.iconSize,
    this.autofocus = false,
    this.textStyle,
    this.hintText,
    this.hintStyle,
    this.items,
    this.prefix,
    this.prefixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  final Alignment? alignment;

  final double? width;

  final BoxDecoration? boxDecoration;

  final FocusNode? focusNode;

  final Widget? icon;

  final double? iconSize;

  final bool? autofocus;

  final TextStyle? textStyle;

  final String? hintText;

  final TextStyle? hintStyle;

  final List<SelectionPopupModel>? items;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<SelectionPopupModel>? validator;

  final Function(SelectionPopupModel)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(alignment: alignment ?? Alignment.center, child: dropDownWidget)
        : dropDownWidget;
  }

  Widget get dropDownWidget => Container(
    width: width ?? double.maxFinite,
    decoration: boxDecoration,
    child: DropdownButtonFormField<SelectionPopupModel>(
      focusNode: focusNode,
      icon: icon,
      iconSize: iconSize ?? 24,
      autofocus: autofocus!,
      isExpanded: true,
      style: textStyle ?? CustomTextStyles.labelLarge13_1,
      hint: Text(
        hintText ?? "",
        style: hintStyle ?? CustomTextStyles.titleSmallMedium,
        overflow: TextOverflow.ellipsis,
      ),
      items:
          items?.map((SelectionPopupModel item) {
            return DropdownMenuItem<SelectionPopupModel>(
              value: item,
              child: Text(
                item.title,
                overflow: TextOverflow.ellipsis,
                style: hintStyle ?? CustomTextStyles.titleSmallMedium,
              ),
            );
          }).toList(),
      decoration: decoration,
      validator: validator,
      onChanged: (value) {
        onChanged!(value!);
      },
    ),
  );
  InputDecoration get decoration => InputDecoration(
    prefixIcon: prefix,
    prefixIconConstraints: prefixConstraints,
    isDense: true,
    contentPadding:
        contentPadding ??
        EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
    fillColor: fillColor ?? appTheme.gray90001,
    filled: filled,
    border:
        borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.h),
          borderSide: BorderSide(
            color: appTheme.black900.withValues(alpha: 0.1),
            width: 1,
          ),
        ),
    enabledBorder:
        borderDecoration ??
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.h),
          borderSide: BorderSide(
            color: appTheme.black900.withValues(alpha: 0.1),
            width: 1,
          ),
        ),
    focusedBorder: (borderDecoration ??
            OutlineInputBorder(borderRadius: BorderRadius.circular(6.h)))
        .copyWith(
          borderSide: BorderSide(color: theme.colorScheme.primary, width: 1),
        ),
  );
}
