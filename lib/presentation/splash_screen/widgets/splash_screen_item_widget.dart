import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/splash_screen_item_model.dart';

// ignore_for_file: must_be_immutable
class SplashScreenItemWidget extends StatelessWidget {
  SplashScreenItemWidget(this.splashScreenItemModelObj, {Key? key})
    : super(key: key);

  SplashScreenItemModel splashScreenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 92.h,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
          child: Container(
            width: 92.h,
            padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 6.h),
            decoration: AppDecoration.outlineOnPrimary7.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              spacing: 2,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  splashScreenItemModelObj.depositrebate!,
                  style: CustomTextStyles.labelMediumYellowA70001,
                ),
                Container(
                  decoration: AppDecoration.outlineTeal,
                  child: Text(
                    splashScreenItemModelObj.five!,
                    textAlign: TextAlign.right,
                    style: CustomTextStyles.titleMediumLightgreenA400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
