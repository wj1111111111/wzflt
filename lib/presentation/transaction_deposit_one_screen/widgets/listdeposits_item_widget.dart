import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listdeposits_item_model.dart';

// ignore_for_file: must_be_immutable
class ListdepositsItemWidget extends StatelessWidget {
  ListdepositsItemWidget(this.listdepositsItemModelObj, {Key? key})
    : super(key: key);

  ListdepositsItemModel listdepositsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLightBulb,
            height: 18.h,
            width: 14.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                spacing: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listdepositsItemModelObj.depositsTwo!,
                    style: CustomTextStyles.titleSmallBluegray400_1,
                  ),
                  Text(
                    listdepositsItemModelObj.six!,
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
                  listdepositsItemModelObj.zero!,
                  style: CustomTextStyles.titleSmallLightgreen800,
                ),
                Text(
                  listdepositsItemModelObj.zeroOne!,
                  style: theme.textTheme.labelLarge,
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
                      listdepositsItemModelObj.tf!,
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
