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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVip,
            height: 40.h,
            width: 42.h,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  listvipOneItemModelObj.vipTwo!,
                  style: CustomTextStyles.labelLargeOnPrimary,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    listvipOneItemModelObj.four!,
                    style: CustomTextStyles.titleMediumAmber600,
                  ),
                ),
                Container(
                  width: 52.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: Text(
                    listvipOneItemModelObj.upgradebonus!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeOnPrimary.copyWith(
                      height: 1.15,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    listvipOneItemModelObj.price!,
                    style: CustomTextStyles.titleMediumAmber600,
                  ),
                ),
                CustomOutlinedButton(
                  height: 30.h,
                  width: 90.h,
                  text: "lbl_receive".tr,
                  margin: EdgeInsets.only(left: 16.h),
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
