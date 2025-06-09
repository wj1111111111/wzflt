import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/slidervector_item_model.dart';

// ignore_for_file: must_be_immutable
class SlidervectorItemWidget extends StatelessWidget {
  SlidervectorItemWidget(this.slidervectorItemModelObj, {Key? key})
    : super(key: key);

  SlidervectorItemModel slidervectorItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.h),
      decoration: AppDecoration.gradientTealToIndigo.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 148.h,
            margin: EdgeInsets.only(left: 2.h, top: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorAmberA400,
                        height: 16.h,
                        width: 18.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            slidervectorItemModelObj.pixmobile!,
                            style:
                                CustomTextStyles
                                    .titleMediumMicrosoftYaHeiAmberA400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                SizedBox(width: double.maxFinite, child: Divider()),
                SizedBox(height: 26.h),
                Container(
                  decoration: AppDecoration.outlineBlack9001,
                  child: Text(
                    slidervectorItemModelObj.eightthousandni!,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.headlineSmallBlack,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  slidervectorItemModelObj.three!,
                  style: CustomTextStyles.labelLargeOnPrimary_6,
                ),
              ],
            ),
          ),
          Container(
            width: 90.h,
            margin: EdgeInsets.only(bottom: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.6,
                  child: CustomImageView(
                    imagePath: ImageConstant.img5fd78a7083dbb13,
                    height: 80.h,
                    width: 76.h,
                  ),
                ),
                Container(
                  height: 8.h,
                  width: 88.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.06, 0.56),
                      end: Alignment(1.18, 0.56),
                      colors: [appTheme.gray8007f, appTheme.gray8007f],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
