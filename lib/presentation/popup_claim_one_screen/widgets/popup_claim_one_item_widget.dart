import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/popup_claim_one_item_model.dart';

// ignore_for_file: must_be_immutable
class PopupClaimOneItemWidget extends StatelessWidget {
  PopupClaimOneItemWidget(this.popupClaimOneItemModelObj, {Key? key})
    : super(key: key);

  PopupClaimOneItemModel popupClaimOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.zero,
      color: appTheme.green90017,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: appTheme.green40002, width: 1.h),
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Container(
        height: 78.h,
        padding: EdgeInsets.all(4.h),
        decoration: AppDecoration.outlineGreen40002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 56.h,
                width: 56.h,
                margin: EdgeInsets.only(left: 8.h),
                decoration: BoxDecoration(
                  color: appTheme.gray90002,
                  borderRadius: BorderRadius.circular(28.h),
                  border: Border.all(color: appTheme.orange70001, width: 1.h),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 56.h,
                          width: 68.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img28x18,
                                height: 8.h,
                                width: 20.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(left: 8.h, bottom: 8.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.img132x66,
                                height: 32.h,
                                width: double.maxFinite,
                                alignment: Alignment.bottomCenter,
                                margin: EdgeInsets.only(bottom: 6.h),
                              ),
                              Container(
                                height: 56.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.img1756x66,
                                      height: 56.h,
                                      width: double.maxFinite,
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        height: 48.h,
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage381,
                                              height: 10.h,
                                              width: 12.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                right: 22.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage383,
                                              height: 8.h,
                                              width: 10.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                top: 6.h,
                                                right: 26.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage382,
                                              height: 8.h,
                                              width: 10.h,
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(
                                                left: 24.h,
                                              ),
                                            ),
                                            Container(
                                              height: 34.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .img1434x68,
                                                    height: 34.h,
                                                    width: double.maxFinite,
                                                  ),
                                                  Container(
                                                    decoration:
                                                        AppDecoration
                                                            .outlineBlack90012,
                                                    child: Text(
                                                      popupClaimOneItemModelObj
                                                          .experience!,
                                                      textAlign: TextAlign.left,
                                                      style:
                                                          CustomTextStyles
                                                              .bodySmallAaHouDiHeiYellow30006,
                                                    ),
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
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(horizontal: 2.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text(
                                  popupClaimOneItemModelObj.experience1!,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          width: double.maxFinite,
                                          padding: EdgeInsets.only(right: 28.h),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                popupClaimOneItemModelObj
                                                    .yourbonus!,
                                                style:
                                                    CustomTextStyles
                                                        .bodyMediumOnPrimary,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  right: 6.h,
                                                ),
                                                child: Text(
                                                  popupClaimOneItemModelObj.tf!,
                                                  style:
                                                      CustomTextStyles
                                                          .titleLargeYellow50002,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomElevatedButton(
                                      height: 30.h,
                                      width: 80.h,
                                      text: "lbl_detail".tr,
                                      margin: EdgeInsets.only(top: 4.h),
                                      buttonStyle: CustomButtonStyles.none,
                                      decoration:
                                          CustomButtonStyles
                                              .gradientAmberToOrangeDecoration,
                                      buttonTextStyle:
                                          CustomTextStyles.titleMedium18,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
