import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../core/app_export.dart';
import '../models/sliderlogowj93t_item_model.dart';

// ignore_for_file: must_be_immutable
class Sliderlogowj93tItemWidget extends StatelessWidget {
  Sliderlogowj93tItemWidget(this.sliderlogowj93tItemModelObj, {Key? key})
    : super(key: key);

  Sliderlogowj93tItemModel sliderlogowj93tItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.zero,
      color: appTheme.black900,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder14,
      ),
      child: Container(
        height: 420.h,
        decoration: AppDecoration.fillBlack90011.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder14,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage420x344,
              height: 420.h,
              width: double.maxFinite,
              radius: BorderRadius.circular(12.h),
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 10.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLogoWj932,
                    height: 22.h,
                    width: 60.h,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 12.h,
                    ),
                    decoration: AppDecoration.gradientGrayToBlack,
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 138.h,
                          margin: EdgeInsets.only(top: 16.h),
                          child: Column(
                            spacing: 2,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse7,
                                    height: 28.h,
                                    width: 28.h,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      sliderlogowj93tItemModelObj.tf!,
                                      style: CustomTextStyles.titleSmallBlack,
                                    ),
                                  ),
                                ],
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_invite_code".tr,
                                      style:
                                          CustomTextStyles
                                              .labelLargeOnPrimary_4,
                                    ),
                                    TextSpan(
                                      text: "lbl_83938dje3".tr,
                                      style:
                                          CustomTextStyles.labelLargeAmberA400,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "msg_invitation_link".tr,
                                      style:
                                          CustomTextStyles.bodySmallOnPrimary_1,
                                    ),
                                    TextSpan(
                                      text: "msg_https_www_jbe".tr,
                                      style:
                                          CustomTextStyles
                                              .bodySmallLightgreenA700_1,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 6.h),
                          child: QrImageView(
                            data: 'https://www.google.com',
                            size: 74.h,
                          ),
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
    );
  }
}
