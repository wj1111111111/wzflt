import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/gridqualifiedbo_item_model.dart';

// ignore_for_file: must_be_immutable
class GridqualifiedboItemWidget extends StatelessWidget {
  GridqualifiedboItemWidget(this.gridqualifiedboItemModelObj, {Key? key})
    : super(key: key);

  GridqualifiedboItemModel gridqualifiedboItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 6.h),
      decoration: AppDecoration.fillLightGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        spacing: 2,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            gridqualifiedboItemModelObj.qualifiedbonus!,
            style: CustomTextStyles.labelLargeSFProTextGreen900,
          ),
          Text(
            gridqualifiedboItemModelObj.price!,
            style: CustomTextStyles.titleMediumSFProTextGray900,
          ),
          SizedBox(height: 2.h),
        ],
      ),
    );
  }
}
