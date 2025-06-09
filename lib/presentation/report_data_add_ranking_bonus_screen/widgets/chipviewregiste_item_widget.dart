import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chipviewregiste_item_model.dart';

// ignore_for_file: must_be_immutable
class ChipviewregisteItemWidget extends StatelessWidget {
  ChipviewregisteItemWidget(
    this.chipviewregisteItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(key: key);

  ChipviewregisteItemModel chipviewregisteItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 6.h),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewregisteItemModelObj.registersOne!,
        style: TextStyle(
          color:
              (chipviewregisteItemModelObj.isSelected ?? false)
                  ? appTheme.lightGreenA700
                  : appTheme.blueGray400,
          fontSize: 12.fSize,
          fontFamily: 'Arial',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: (chipviewregisteItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.blueGray90004,
      selectedColor: appTheme.lightGreenA700.withValues(alpha: 0.1),
      side: BorderSide.none,
      shape:
          (chipviewregisteItemModelObj.isSelected ?? false)
              ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(4.h),
              )
              : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(4.h),
              ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
