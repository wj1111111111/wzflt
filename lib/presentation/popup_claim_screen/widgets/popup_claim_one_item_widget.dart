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
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
        decoration: AppDecoration.outlineLightgreenA70005.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 56.h,
                width: 56.h,
                decoration: AppDecoration.outlineOrange.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder30,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBonusRakeback67a8b0b9Png,
                      height: 56.h,
                      width: 56.h,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 4.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      popupClaimOneItemModelObj.registration!,
                      style: CustomTextStyles.bodyLargeGray90031,
                    ),
                    Text(
                      popupClaimOneItemModelObj.yourbonus!,
                      style: CustomTextStyles.bodySmallGray60002,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl2".tr,
                            style: CustomTextStyles.titleLargeRed600,
                          ),
                          TextSpan(
                            text: "lbl_12_002".tr,
                            style: CustomTextStyles.titleLargeRed600,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
            CustomElevatedButton(
              height: 30.h,
              width: 80.h,
              text: "lbl_claim2".tr,
              margin: EdgeInsets.only(bottom: 4.h),
              buttonStyle: CustomButtonStyles.fillAmberA,
              buttonTextStyle: CustomTextStyles.bodyLargeBlack90018,
            ),
          ],
        ),
      ),
    );
  }
}
