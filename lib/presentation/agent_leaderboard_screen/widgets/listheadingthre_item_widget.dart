import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listheadingthre_item_model.dart';

// ignore_for_file: must_be_immutable
class ListheadingthreItemWidget extends StatelessWidget {
  ListheadingthreItemWidget(this.listheadingthreItemModelObj, {Key? key})
    : super(key: key);

  ListheadingthreItemModel listheadingthreItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168.h,
      padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 18.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            listheadingthreItemModelObj.headingthree!,
            style: CustomTextStyles.titleSmallBluegray400_1,
          ),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 4.h),
                    decoration: AppDecoration.fs2bg.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          listheadingthreItemModelObj.headingthree1!,
                          style: CustomTextStyles.bodyMediumOnPrimary_3,
                        ),
                        Text(
                          listheadingthreItemModelObj.headingthree2!,
                          style: CustomTextStyles.bodySmallOnPrimary8,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrame2131329993,
                  height: 10.h,
                  width: 3.h,
                ),
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 4.h),
                    decoration: AppDecoration.fs2bg.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          listheadingthreItemModelObj.headingthree3!,
                          style: CustomTextStyles.bodyMediumOnPrimary_3,
                        ),
                        Text(
                          listheadingthreItemModelObj.headingthree4!,
                          style: CustomTextStyles.bodySmallOnPrimary8,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrame2131329993,
                  height: 10.h,
                  width: 3.h,
                ),
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 4.h),
                    decoration: AppDecoration.fs2bg.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          listheadingthreItemModelObj.headingthree5!,
                          style: CustomTextStyles.bodyMediumOnPrimary_3,
                        ),
                        Text(
                          listheadingthreItemModelObj.headingthree6!,
                          style: CustomTextStyles.bodySmallOnPrimary8,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame2131329993,
                        height: 10.h,
                        width: 3.h,
                      ),
                      Expanded(
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(vertical: 4.h),
                          decoration: AppDecoration.fs2bg.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                listheadingthreItemModelObj.headingthree7!,
                                style: CustomTextStyles.bodyMediumOnPrimary_3,
                              ),
                              Text(
                                listheadingthreItemModelObj.headingthree8!,
                                style: CustomTextStyles.bodySmallOnPrimary8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
        ],
      ),
    );
  }
}
