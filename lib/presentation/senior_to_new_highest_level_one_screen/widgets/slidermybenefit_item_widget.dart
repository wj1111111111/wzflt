import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/slidermybenefit_item_model.dart';

// ignore_for_file: must_be_immutable
class SlidermybenefitItemWidget extends StatelessWidget {
  SlidermybenefitItemWidget(this.slidermybenefitItemModelObj, {Key? key})
    : super(key: key);

  SlidermybenefitItemModel slidermybenefitItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 280.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 6.h),
                      decoration: AppDecoration.outline3.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Column(
                        spacing: 2,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 2.h),
                          SizedBox(
                            height: 116.h,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 14.h),
                                    child: Text(
                                      slidermybenefitItemModelObj.mybenefits!,
                                      style: CustomTextStyles.titleSmall15,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: SizedBox(
                                    height: 98.h,
                                    width: 120.h,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            height: 80.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgFrame2131329752,
                                                  height: 80.h,
                                                  width: double.maxFinite,
                                                  radius: BorderRadius.vertical(
                                                    bottom: Radius.circular(
                                                      5.h,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: 54.h,
                                                    width: 62.h,
                                                    margin: EdgeInsets.only(
                                                      top: 8.h,
                                                      right: 26.h,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgTdr23,
                                                          height: 36.h,
                                                          width: 40.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                bottom: 2.h,
                                                              ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment
                                                                  .centerRight,
                                                          child: Container(
                                                            height: 54.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                  left: 4.h,
                                                                ),
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage1100,
                                                                  height: 54.h,
                                                                  width: 54.h,
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage1104,
                                                                  height: 16.h,
                                                                  width: 20.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  margin:
                                                                      EdgeInsets.only(
                                                                        right:
                                                                            4.h,
                                                                        bottom:
                                                                            8.h,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 64.h,
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "msg_bet_rebate_up_to".tr,
                                                  style:
                                                      CustomTextStyles
                                                          .labelLargeYellow20001_1,
                                                ),
                                                TextSpan(
                                                  text: "lbl_1_02".tr,
                                                  style:
                                                      CustomTextStyles
                                                          .labelLargeAmberA400,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 96.h,
                                  width: 120.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          height: 80.h,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgFrame2131329752,
                                                height: 80.h,
                                                width: double.maxFinite,
                                                radius: BorderRadius.vertical(
                                                  bottom: Radius.circular(5.h),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgClose48x56,
                                                height: 48.h,
                                                width: 58.h,
                                                alignment: Alignment.topRight,
                                                margin: EdgeInsets.only(
                                                  top: 14.h,
                                                  right: 28.h,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 76.h,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_deposit_rebate3".tr,
                                                style:
                                                    CustomTextStyles
                                                        .labelLargeYellow20001_1,
                                              ),
                                              TextSpan(
                                                text: "lbl_1_12".tr,
                                                style:
                                                    CustomTextStyles
                                                        .labelLargeAmberA400,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: SizedBox(
                                    height: 96.h,
                                    width: 120.h,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFrame2131329752,
                                          height: 80.h,
                                          width: double.maxFinite,
                                          radius: BorderRadius.vertical(
                                            bottom: Radius.circular(5.h),
                                          ),
                                          alignment: Alignment.topCenter,
                                        ),
                                        SizedBox(
                                          width: 66.h,
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "lbl_qualified_bonus2".tr,
                                                  style:
                                                      CustomTextStyles
                                                          .labelLargeYellow20001_1,
                                                ),
                                                TextSpan(
                                                  text: "lbl_88".tr,
                                                  style:
                                                      CustomTextStyles
                                                          .labelLargeAmberA400,
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 84.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgUserYellow20002,
                                  height: 14.h,
                                  width: 16.h,
                                  radius: BorderRadius.circular(2.h),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgCloseYellow20002,
                                  height: 14.h,
                                  width: 16.h,
                                  radius: BorderRadius.circular(2.h),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(left: 68.h, top: 44.h, bottom: 44.h),
              decoration: AppDecoration.gradientBlueGrayToBlueGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    slidermybenefitItemModelObj.agenttier!,
                    style: CustomTextStyles.bodyMediumTeal500.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(height: 58.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
