import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listusdttrc20on_item_model.dart';

// ignore_for_file: must_be_immutable
class Listusdttrc20onItemWidget extends StatelessWidget {
  Listusdttrc20onItemWidget(this.listusdttrc20onItemModelObj, {Key? key})
    : super(key: key);

  Listusdttrc20onItemModel listusdttrc20onItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.h),
      decoration: AppDecoration.gradientTealToIndigo.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: listusdttrc20onItemModelObj.usdttrc20one!,
                          height: 18.h,
                          width: 18.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            listusdttrc20onItemModelObj.usdttrctwenty!,
                            style:
                                CustomTextStyles
                                    .titleMediumMicrosoftYaHeiAmberA400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h),
                  SizedBox(width: 148.h, child: Divider()),
                  SizedBox(height: 28.h),
                  Container(
                    decoration: AppDecoration.outlineBlack9001,
                    child: Text(
                      listusdttrc20onItemModelObj.tplfxh!,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.headlineSmallBlack,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    listusdttrc20onItemModelObj.date!,
                    style: CustomTextStyles.labelLargeOnPrimary_6,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 88.h,
              margin: EdgeInsets.only(bottom: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: CustomImageView(
                      imagePath: listusdttrc20onItemModelObj.usdttrc20three!,
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
          ),
        ],
      ),
    );
  }
}
