import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/listyour_item_model.dart';

// ignore_for_file: must_be_immutable
class ListyourItemWidget extends StatelessWidget {
  ListyourItemWidget(this.listyourItemModelObj, {Key? key}) : super(key: key);

  ListyourItemModel listyourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineOnPrimary8.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBonusRakeback67a8b0b9Png,
            height: 88.h,
            width: 88.h,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_your_prize".tr,
                        style: CustomTextStyles.bodyLarge_2,
                      ),
                      TextSpan(
                        text: "lbl_5004".tr,
                        style: CustomTextStyles.bodyLargeAmber50002,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  width: 90.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_your_wagered".tr,
                          style: CustomTextStyles.bodyMediumBluegray40013,
                        ),
                        TextSpan(
                          text: "lbl_10_000_00_33".tr,
                          style: CustomTextStyles.bodyMediumBluegray20002,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  listyourItemModelObj.date202303nine!,
                  style: CustomTextStyles.bodySmall10_1,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 100.h,
              margin: EdgeInsets.only(bottom: 14.h),
              child: Column(
                spacing: 40,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                      decoration: AppDecoration.fillGray40001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder1,
                      ),
                      child: Text(
                        listyourItemModelObj.no1!,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.labelLargeOnPrimary_6,
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                    height: 34.h,
                    text: "lbl_claimed".tr,
                    margin: EdgeInsets.only(right: 10.h),
                    buttonStyle: CustomButtonStyles.fillGrayTL81,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
