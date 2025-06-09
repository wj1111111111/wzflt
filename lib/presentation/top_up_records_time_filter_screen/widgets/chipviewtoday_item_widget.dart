import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chipviewtoday_item_model.dart';

// ignore_for_file: must_be_immutable
class ChipviewtodayItemWidget extends StatelessWidget {
  ChipviewtodayItemWidget(
    this.chipviewtodayItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(key: key);

  ChipviewtodayItemModel chipviewtodayItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.h),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewtodayItemModelObj.todayOne!,
        style: TextStyle(
          color:
              (chipviewtodayItemModelObj.isSelected ?? false)
                  ? theme.colorScheme.onPrimary
                  : appTheme.blueGray400,
          fontSize: 14.fSize,
          fontFamily: 'Arial',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: (chipviewtodayItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray90001,
      selectedColor: appTheme.lightGreenA700,
      side: BorderSide.none,
      shape:
          (chipviewtodayItemModelObj.isSelected ?? false)
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
