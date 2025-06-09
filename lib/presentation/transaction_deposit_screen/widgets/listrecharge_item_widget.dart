import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listrecharge_item_model.dart';

// ignore_for_file: must_be_immutable
class ListrechargeItemWidget extends StatelessWidget {
  ListrechargeItemWidget(this.listrechargeItemModelObj, {Key? key})
    : super(key: key);

  ListrechargeItemModel listrechargeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowUpAmberA400,
            height: 18.h,
            width: 14.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Column(
                spacing: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listrechargeItemModelObj.recharge!,
                    style: CustomTextStyles.titleSmallBluegray400_1,
                  ),
                  Text(
                    listrechargeItemModelObj.six!,
                    style: CustomTextStyles.labelLargeBluegray70001,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  listrechargeItemModelObj.zero!,
                  style: CustomTextStyles.titleSmallLightgreen800,
                ),
                Text(
                  listrechargeItemModelObj.balance100zero!,
                  style: CustomTextStyles.labelLargeBluegray70001,
                ),
              ],
            ),
          ),
          Container(
            height: 18.h,
            width: 18.h,
            margin: EdgeInsets.only(left: 6.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse25,
                  height: 18.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(9.0.h),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 4.h),
                    child: Text(
                      listrechargeItemModelObj.tf!,
                      style: CustomTextStyles.bodyMediumOnPrimary13,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
