import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chipview898333_item_model.dart';

// ignore_for_file: must_be_immutable
class Chipview898333ItemWidget extends StatelessWidget {
  Chipview898333ItemWidget(
    this.chipview898333ItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(key: key);

  Chipview898333ItemModel chipview898333ItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipview898333ItemModelObj
            .eightHundredNinetyEightThousandThreeHundredThirtyThree!,
        style: TextStyle(
          color:
              (chipview898333ItemModelObj.isSelected ?? false)
                  ? appTheme.lightBlueA700
                  : appTheme.amber50003,
          fontSize: 16.fSize,
          fontFamily: 'Arial',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: (chipview898333ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.amber50033,
      selectedColor: appTheme.lightBlueA700.withValues(alpha: 0.2),
      side: BorderSide.none,
      shape:
          (chipview898333ItemModelObj.isSelected ?? false)
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
