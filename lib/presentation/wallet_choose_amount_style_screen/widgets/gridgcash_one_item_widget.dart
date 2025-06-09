import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/gridgcash_one_item_model.dart';

// ignore_for_file: must_be_immutable
class GridgcashOneItemWidget extends StatelessWidget {
  GridgcashOneItemWidget(this.gridgcashOneItemModelObj, {Key? key})
    : super(key: key);

  GridgcashOneItemModel gridgcashOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        spacing: 8,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: gridgcashOneItemModelObj.gcashOne!,
            height: 36.h,
            width: 38.h,
            radius: BorderRadius.circular(8.h),
          ),
          Text(
            gridgcashOneItemModelObj.gcashTwo!,
            style: CustomTextStyles.titleSmallBluegray400_1,
          ),
        ],
      ),
    );
  }
}
