import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listpixmobile_item_model.dart';

// ignore_for_file: must_be_immutable
class ListpixmobileItemWidget extends StatelessWidget {
  ListpixmobileItemWidget(this.listpixmobileItemModelObj, {Key? key})
    : super(key: key);

  ListpixmobileItemModel listpixmobileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.h),
      decoration: AppDecoration.gradientTealToIndigo.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 148.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: listpixmobileItemModelObj.pixmobileOne!,
                        height: 16.h,
                        width: 18.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            listpixmobileItemModelObj.pixmobile!,
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
                Container(
                  decoration: AppDecoration.outlineBlack9001,
                  child: Text(
                    listpixmobileItemModelObj.password!,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.headlineSmallBlack,
                  ),
                ),
                Text(
                  listpixmobileItemModelObj.date!,
                  style: CustomTextStyles.labelLargeOnPrimary_6,
                ),
              ],
            ),
          ),
          Container(
            width: 76.h,
            margin: EdgeInsets.only(right: 4.h),
            child: Column(
              children: [
                Opacity(
                  opacity: 0.6,
                  child: CustomImageView(
                    imagePath: ImageConstant.img5fd78a7083dbb13,
                    height: 80.h,
                    width: double.maxFinite,
                  ),
                ),
                Container(
                  height: 8.h,
                  width: 74.h,
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
