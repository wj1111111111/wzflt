import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/slidermyagentti_item_model.dart';

// ignore_for_file: must_be_immutable
class SlidermyagenttiItemWidget extends StatelessWidget {
  SlidermyagenttiItemWidget(this.slidermyagenttiItemModelObj, {Key? key})
    : super(key: key);

  SlidermyagenttiItemModel slidermyagenttiItemModelObj;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 21, sigmaY: 21),
        child: Container(
          width: double.maxFinite,
          decoration: AppDecoration.gradientPurpleACToBlueA.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                child: Row(
                  children: [
                    Text(
                      slidermyagenttiItemModelObj.myagenttier!,
                      style: CustomTextStyles.titleSmall15,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 18.h),
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      decoration: AppDecoration.fillAmber70001.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Text(
                        slidermyagenttiItemModelObj.juniorAgentI!,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallOnPrimary_3,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgInbox,
                      height: 16.h,
                      width: 16.h,
                      margin: EdgeInsets.only(left: 8.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLockBlueGray300,
                      height: 10.h,
                      width: 16.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 2.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        slidermyagenttiItemModelObj.teamcount!,
                        style: CustomTextStyles.bodySmallBluegray300,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 24.h),
                        decoration: AppDecoration.fillBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 102.h,
                              decoration: AppDecoration.gradientBlueToLightBlueA
                                  .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    slidermyagenttiItemModelObj.ten!,
                                    style:
                                        CustomTextStyles.bodySmallOnPrimary10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSearch,
                      height: 12.h,
                      width: 18.h,
                      alignment: Alignment.topCenter,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        slidermyagenttiItemModelObj.teambetting!,
                        style: CustomTextStyles.bodySmallBluegray300,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 18.h),
                        decoration: AppDecoration.fillBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 122.h,
                              decoration: AppDecoration
                                  .gradientDeepPurpleAToDeepPurpleA
                                  .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    slidermyagenttiItemModelObj.tf!,
                                    style:
                                        CustomTextStyles.bodySmallOnPrimary10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              SizedBox(
                width: double.maxFinite,
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
                        spacing: 4,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 2.h),
                          SizedBox(
                            height: 114.h,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 14.h),
                                    child: Text(
                                      slidermyagenttiItemModelObj.mybenefits!,
                                      style: CustomTextStyles.titleSmall15,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgFrame2131329752,
                                  height: 80.h,
                                  width: 120.h,
                                  radius: BorderRadius.vertical(
                                    bottom: Radius.circular(5.h),
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    width: double.maxFinite,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 20.h,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: SizedBox(
                                                      width: 78.h,
                                                      child: Column(
                                                        spacing: 6,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Container(
                                                            height: 54.h,
                                                            width:
                                                                double
                                                                    .maxFinite,
                                                            margin:
                                                                EdgeInsets.only(
                                                                  left: 10.h,
                                                                  right: 6.h,
                                                                ),
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomLeft,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgTdr23,
                                                                  height: 36.h,
                                                                  width: 40.h,
                                                                  margin:
                                                                      EdgeInsets.only(
                                                                        bottom:
                                                                            2.h,
                                                                      ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: Container(
                                                                    height:
                                                                        54.h,
                                                                    margin:
                                                                        EdgeInsets.only(
                                                                          left:
                                                                              4.h,
                                                                        ),
                                                                    child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      children: [
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgImage1100,
                                                                          height:
                                                                              54.h,
                                                                          width:
                                                                              54.h,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgImage1104,
                                                                          height:
                                                                              16.h,
                                                                          width:
                                                                              20.h,
                                                                          alignment:
                                                                              Alignment.bottomRight,
                                                                          margin: EdgeInsets.only(
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
                                                          RichText(
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      "msg_bet_rebate_up_to"
                                                                          .tr,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .bodySmallBluegray30001,
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      "lbl_0_8"
                                                                          .tr,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .bodySmallAmberA400_1,
                                                                ),
                                                              ],
                                                            ),
                                                            textAlign:
                                                                TextAlign
                                                                    .center,
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 74.h,
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                "lbl_deposit_rebate3"
                                                                    .tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .bodySmallBluegray30001,
                                                          ),
                                                          TextSpan(
                                                            text: "lbl_1_02".tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .bodySmallAmberA400_1,
                                                          ),
                                                        ],
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 64.h,
                                                    margin: EdgeInsets.only(
                                                      right: 6.h,
                                                    ),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                "lbl_qualified_bonus2"
                                                                    .tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .bodySmallBluegray30001,
                                                          ),
                                                          TextSpan(
                                                            text: "lbl_88".tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .bodySmallAmberA400_1,
                                                          ),
                                                        ],
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 80.h,
                                  width: 120.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgFrame2131329752,
                                        height: 80.h,
                                        width: double.maxFinite,
                                        radius: BorderRadius.vertical(
                                          bottom: Radius.circular(5.h),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgClose48x56,
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
                                CustomImageView(
                                  imagePath: ImageConstant.imgFrame2131329752,
                                  height: 80.h,
                                  width: 120.h,
                                  radius: BorderRadius.vertical(
                                    bottom: Radius.circular(5.h),
                                  ),
                                  alignment: Alignment.centerRight,
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
                                  imagePath: ImageConstant.imgUserBlueGray400,
                                  height: 14.h,
                                  width: 16.h,
                                  radius: BorderRadius.circular(2.h),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgUserBlueGray40014x14,
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
            ],
          ),
        ),
      ),
    );
  }
}
