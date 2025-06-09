import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/listcumulative_item_model.dart';

// ignore_for_file: must_be_immutable
class ListcumulativeItemWidget extends StatelessWidget {
  ListcumulativeItemWidget(this.listcumulativeItemModelObj, {Key? key})
    : super(key: key);

  ListcumulativeItemModel listcumulativeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
      decoration: AppDecoration.outlineGreen40002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        children: [
          Container(
            height: 56.h,
            width: 56.h,
            margin: EdgeInsets.only(left: 4.h),
            decoration: AppDecoration.outlineOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder30,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGold,
                  height: 48.h,
                  width: double.maxFinite,
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 6.h),
                child: Column(
                  children: [
                    Text(
                      listcumulativeItemModelObj.cumulative!,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  listcumulativeItemModelObj.yourbonus!,
                                  style: CustomTextStyles.bodyMediumOnPrimary,
                                ),
                                Text(
                                  listcumulativeItemModelObj.price!,
                                  style: CustomTextStyles.titleLargeYellow50002,
                                ),
                              ],
                            ),
                          ),
                          CustomElevatedButton(
                            height: 30.h,
                            width: 80.h,
                            text: "lbl_claim2".tr,
                            margin: EdgeInsets.only(left: 22.h, top: 4.h),
                            buttonStyle: CustomButtonStyles.none,
                            decoration:
                                CustomButtonStyles
                                    .gradientAmberToOrangeDecoration,
                            buttonTextStyle: CustomTextStyles.titleMedium18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
