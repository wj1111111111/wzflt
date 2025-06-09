import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/staggerediconvi_item_model.dart';

// ignore_for_file: must_be_immutable
class StaggerediconviItemWidget extends StatelessWidget {
  StaggerediconviItemWidget(this.staggerediconviItemModelObj, {Key? key})
    : super(key: key);

  StaggerediconviItemModel staggerediconviItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164.h,
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 140.h,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.9,
                  child: CustomImageView(
                    imagePath: staggerediconviItemModelObj.image245One!,
                    height: 140.h,
                    width: double.maxFinite,
                  ),
                ),
                SizedBox(
                  height: 120.h,
                  width: 110.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: staggerediconviItemModelObj.iconviponeOne!,
                        height: 56.h,
                        width: 58.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 14.h),
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              staggerediconviItemModelObj.vipZero!,
                              style: CustomTextStyles.titleSmallBlack900,
                            ),
                            SizedBox(height: 42.h),
                            Text(
                              staggerediconviItemModelObj.price!,
                              style: theme.textTheme.headlineLarge,
                            ),
                            Text(
                              staggerediconviItemModelObj.max!,
                              style: CustomTextStyles.titleSmallBlack900,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                staggerediconviItemModelObj.cumulative!,
                style: theme.textTheme.bodySmall,
              ),
              Text(
                staggerediconviItemModelObj.getVar!,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          SizedBox(
            width: double.maxFinite,
            child: Divider(color: appTheme.blueGray90012),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  staggerediconviItemModelObj.priceOne!,
                  style: theme.textTheme.bodySmall,
                ),
                Text(
                  staggerediconviItemModelObj.priceTwo!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  staggerediconviItemModelObj.priceThree!,
                  style: theme.textTheme.bodySmall,
                ),
                Text(
                  staggerediconviItemModelObj.priceFour!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  staggerediconviItemModelObj.priceFive!,
                  style: theme.textTheme.bodySmall,
                ),
                Text(
                  staggerediconviItemModelObj.priceSix!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 6.h),
        ],
      ),
    );
  }
}
