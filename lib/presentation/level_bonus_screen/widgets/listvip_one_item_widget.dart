import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../models/listvip_one_item_model.dart';

// ignore_for_file: must_be_immutable
class ListvipOneItemWidget extends StatelessWidget {
  ListvipOneItemWidget(this.listvipOneItemModelObj, {Key? key})
    : super(key: key);

  ListvipOneItemModel listvipOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 2,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            decoration: AppDecoration.fillBluegray90013,
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: listvipOneItemModelObj.vipOne!,
                  height: 42.h,
                  width: 44.h,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.h, top: 12.h),
                    child: Text(
                      listvipOneItemModelObj.vipTwo!,
                      style: CustomTextStyles.labelLargeOnPrimary_6,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    listvipOneItemModelObj.three!,
                    style: CustomTextStyles.titleMediumYellow50002,
                  ),
                ),
                Container(
                  width: 50.h,
                  margin: EdgeInsets.only(left: 16.h),
                  child: Text(
                    listvipOneItemModelObj.upgradebonus!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeOnPrimary_6.copyWith(
                      height: 1.25,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    listvipOneItemModelObj.price!,
                    style: CustomTextStyles.titleMediumYellow50002,
                  ),
                ),
                Spacer(),
                CustomOutlinedButton(
                  height: 30.h,
                  width: 90.h,
                  text: "lbl_receive".tr,
                  margin: EdgeInsets.only(right: 2.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration: CustomButtonStyles.gradientAmberToAmberDecoration,
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 6.h, right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: listvipOneItemModelObj.vipFour!,
                  height: 42.h,
                  width: 42.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    listvipOneItemModelObj.vipFive!,
                    style: CustomTextStyles.labelLargeOnPrimary_6,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    listvipOneItemModelObj.four!,
                    style: CustomTextStyles.titleMediumAmber600,
                  ),
                ),
                Container(
                  width: 48.h,
                  margin: EdgeInsets.only(left: 16.h),
                  child: Text(
                    listvipOneItemModelObj.upgradebonus1!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeOnPrimary_6.copyWith(
                      height: 1.25,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    listvipOneItemModelObj.priceOne!,
                    style: CustomTextStyles.titleMediumAmber600,
                  ),
                ),
                CustomOutlinedButton(
                  height: 30.h,
                  width: 90.h,
                  text: "lbl_receive".tr,
                  margin: EdgeInsets.only(left: 24.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration: CustomButtonStyles.gradientAmberToAmberDecoration,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
