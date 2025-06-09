import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/gridslot_one_item_model.dart';

// ignore_for_file: must_be_immutable
class GridslotOneItemWidget extends StatelessWidget {
  GridslotOneItemWidget(this.gridslotOneItemModelObj, {Key? key})
    : super(key: key);

  GridslotOneItemModel gridslotOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 4.h),
      decoration: AppDecoration.gradientGrayToGray900012.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: gridslotOneItemModelObj.slotOne!,
            height: 36.h,
            width: 36.h,
          ),
          Text(
            gridslotOneItemModelObj.slotTwo!,
            style: CustomTextStyles.labelLargeAmber30002_2,
          ),
        ],
      ),
    );
  }
}
