import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/check_in_bloc.dart';
import 'models/check_in_model.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckInBloc>(
      create:
          (context) =>
              CheckInBloc(CheckInState(checkInModelObj: CheckInModel()))
                ..add(CheckInInitialEvent()),
      child: CheckInScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckInBloc, CheckInState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  height: 946.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: SizeUtils.height,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.only(
                                    left: 14.h,
                                    right: 14.h,
                                    bottom: 100.h,
                                  ),
                                  color: appTheme.gray90001,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: appTheme.yellowA70004.withValues(
                                        alpha: 0.06,
                                      ),
                                      width: 2.h,
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Container(
                                    height: 534.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4.h,
                                      vertical: 8.h,
                                    ),
                                    decoration: AppDecoration.outlineYellowA
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        _buildStackfacebook(context),
                                        _buildColumnsignin(context),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: SizeUtils.height,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: _buildAppbar(context),
                                    ),
                                    _buildStackadd2e694b5(context),
                                    Container(
                                      width: double.maxFinite,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 184.h,
                                      ),
                                      decoration: AppDecoration.fillBlack9003,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          _buildStacktwo(context),
                                          SizedBox(height: 136.h),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildColumntelevisio(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStackfacebook(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.only(right: 2.h, bottom: 4.h),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: appTheme.yellowA70004, width: 1.h),
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Container(
        height: 344.h,
        decoration: AppDecoration.gradientYellowAToGreenA70003.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(right: 2.h),
                padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 22.h),
                decoration: AppDecoration.column248,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(left: 48.h, right: 42.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: theme.colorScheme.onPrimary,
                                width: 1.4.h,
                              ),
                              borderRadius: BorderRadiusStyle.circleBorder14,
                            ),
                            child: Container(
                              height: 70.h,
                              width: 72.h,
                              decoration: AppDecoration.outlineOnPrimary12
                                  .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder14,
                                  ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgA65bbb3b63d7cef,
                                    height: 68.h,
                                    width: 70.h,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.img1733643598,
                                    height: 38.h,
                                    width: 40.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgFacebookLightGreenA20002,
                            height: 20.h,
                            width: 22.h,
                            margin: EdgeInsets.only(bottom: 16.h),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: theme.colorScheme.onPrimary,
                                  width: 1.4.h,
                                ),
                                borderRadius: BorderRadiusStyle.circleBorder14,
                              ),
                              child: Container(
                                height: 72.h,
                                width: 72.h,
                                decoration: AppDecoration.outlineOnPrimary12
                                    .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder14,
                                    ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgA65bbb3b63d7cef,
                                      height: 68.h,
                                      width: 70.h,
                                      alignment: Alignment.bottomCenter,
                                    ),
                                    Container(
                                      height: 72.h,
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .img5dfa96056b444f5,
                                            height: 64.h,
                                            width: 66.h,
                                            alignment: Alignment.topCenter,
                                          ),
                                          Container(
                                            width: double.maxFinite,
                                            decoration: AppDecoration.linear,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "lbl_extra".tr.toUpperCase(),
                                                  style:
                                                      CustomTextStyles
                                                          .labelLargeOnPrimary_6,
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 36.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_bonus_0_20".tr,
                            style: CustomTextStyles.titleSmallYellowA40002_1,
                          ),
                          Text(
                            "lbl_extra_0_20".tr,
                            style: CustomTextStyles.titleSmallYellowA40002_1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 18.h),
                    Container(
                      margin: EdgeInsets.only(left: 6.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 6.h,
                      ),
                      decoration: AppDecoration.outlineYellowA70004.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.circleBorder24,
                            ),
                            child: Container(
                              height: 48.h,
                              width: 50.h,
                              decoration: AppDecoration
                                  .gradientYellowAToGreenA700031
                                  .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder24,
                                  ),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgAdd2e694b50907736x38,
                                    height: 36.h,
                                    width: double.maxFinite,
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(left: 4.h),
                                  ),
                                  Text(
                                    "lbl_require".tr,
                                    style:
                                        CustomTextStyles
                                            .labelLargeLightgreen5002,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 172.h,
                              margin: EdgeInsets.only(left: 2.h, bottom: 4.h),
                              child: Text(
                                "msg_times_of_deposits_2_deposit".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleSmallLightgreenA700
                                    .copyWith(height: 1.29),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h),
                  ],
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 12.h, bottom: 20.h),
              child: Column(
                spacing: 8,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVideoCameraRedA70002,
                          height: 14.h,
                          width: 14.h,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 244.h,
                            margin: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "msg_after_the_continuous".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.labelLargeRedA70002
                                  .copyWith(height: 1.17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10.h),
                    padding: EdgeInsets.all(4.h),
                    decoration: AppDecoration.fillBluegray40005.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 48.h,
                          width: 54.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.only(left: 2.h, right: 4.h),
                                color: appTheme.gray60005,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder24,
                                ),
                                child: Container(
                                  height: 48.h,
                                  padding: EdgeInsets.only(
                                    left: 2.h,
                                    top: 2.h,
                                    right: 2.h,
                                  ),
                                  decoration: AppDecoration.outlineOnPrimary13
                                      .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder24,
                                      ),
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgE20d8191b75bf24,
                                        height: 36.h,
                                        width: double.maxFinite,
                                      ),
                                      SizedBox(
                                        width: double.maxFinite,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .imgUserWhiteA700,
                                              height: 6.h,
                                              width: 8.h,
                                              margin: EdgeInsets.only(
                                                left: 14.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .imgUserWhiteA700,
                                              height: 10.h,
                                              width: 10.h,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "lbl_unlocked".tr,
                                  style: CustomTextStyles.labelLargeGray20001,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 56.h,
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                    width: 174.h,
                                    child: Text(
                                      "msg_times_of_deposits_1_deposit".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(height: 1.29),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 56.h,
                                  width: 68.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant
                                                .imgCheckmarkYellow10004,
                                        height: 44.h,
                                        width: double.maxFinite,
                                      ),
                                      Container(
                                        height: 56.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgZsofe1,
                                              height: 56.h,
                                              width: double.maxFinite,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                width: 52.h,
                                                margin: EdgeInsets.only(
                                                  bottom: 4.h,
                                                ),
                                                child: RotationTransition(
                                                  turns: AlwaysStoppedAnimation(
                                                    -(29 / 360),
                                                  ),
                                                  child: Text(
                                                    "lbl_finished".tr,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .labelLargeGray60006
                                                        .copyWith(height: 1.54),
                                                  ),
                                                ),
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

  /// Section Widget
  Widget _buildColumnsignin(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(right: 2.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      spacing: 2,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_continuous_sign_ins".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.img1733643599,
                                      height: 18.h,
                                      width: 18.h,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "lbl_bonus4".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          TextSpan(
                                            text: "lbl_0_20".tr,
                                            style:
                                                CustomTextStyles
                                                    .titleSmallAmberA400_1,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: AppDecoration.gradientOrangeAToRed
                                      .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder10,
                                      ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.img3122x22,
                                        height: 22.h,
                                        width: 24.h,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          "lbl_extra_0_20".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomOutlinedButton(
                    height: 30.h,
                    width: 84.h,
                    text: "lbl_sign_in2".tr,
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientAmberToAmberDecoration,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              width: double.maxFinite,
              child: Divider(color: appTheme.blueGray90029),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 4.h,
                      ),
                      decoration: AppDecoration.outlineAmberA400.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Column(
                        spacing: 6,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "lbl_0_202".tr,
                            style: CustomTextStyles.labelLargeBluegray20005,
                          ),
                          SizedBox(
                            height: 24.h,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img1733643599,
                                  height: 24.h,
                                  width: 26.h,
                                  alignment: Alignment.centerLeft,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSettingsLightGreenA700,
                                  height: 20.h,
                                  width: double.maxFinite,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4.h),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 4.h,
                      ),
                      decoration: AppDecoration.outlineAmberA400.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Column(
                        spacing: 6,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "lbl_0_202".tr,
                            style: CustomTextStyles.labelLargeBluegray20005,
                          ),
                          SizedBox(
                            height: 24.h,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img1733643599,
                                  height: 24.h,
                                  width: 26.h,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSettingsLightGreenA700,
                                  height: 20.h,
                                  width: double.maxFinite,
                                  alignment: Alignment.bottomCenter,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4.h),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 62.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img5dfa96056b444f540x38,
                            height: 40.h,
                            width: 40.h,
                            alignment: Alignment.bottomCenter,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(top: 6.h),
                              child: Text(
                                "lbl_0_202".tr,
                                style: CustomTextStyles.labelLargeOnPrimary_6,
                              ),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                              horizontal: 14.h,
                              vertical: 4.h,
                            ),
                            decoration: AppDecoration.outlineAmberA400.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Column(
                              spacing: 6,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_0_202".tr,
                                  style:
                                      CustomTextStyles.labelLargeBluegray20005,
                                ),
                                SizedBox(
                                  height: 24.h,
                                  width: double.maxFinite,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.img1733643599,
                                        height: 24.h,
                                        width: 26.h,
                                        alignment: Alignment.centerLeft,
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant
                                                .imgSettingsLightGreenA700,
                                        height: 20.h,
                                        width: double.maxFinite,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 4.h),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Container(
                            height: 16.h,
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 6.h),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgUnion16x46,
                                  height: 16.h,
                                  width: double.maxFinite,
                                ),
                                Text(
                                  "lbl_0_203".tr,
                                  style: CustomTextStyles.labelLargeOnPrimary_6,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            decoration: AppDecoration.fillGreenA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "lbl_0_202".tr,
                                  style: CustomTextStyles.labelLargeOnPrimary_6,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.img5dfa96056b444f540x40,
                                  height: 40.h,
                                  width: 40.h,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 4.h),
                      decoration: AppDecoration.outlineBluegray90012.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Column(
                        spacing: 6,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "lbl_0_20".tr,
                            style: CustomTextStyles.labelLargeBluegray20005,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img1733643599,
                            height: 24.h,
                            width: 26.h,
                          ),
                          SizedBox(height: 4.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_day_1".tr,
                    style: CustomTextStyles.labelLargeOnPrimary_6,
                  ),
                  Text(
                    "lbl_day_2".tr,
                    style: CustomTextStyles.labelLargeOnPrimary_6,
                  ),
                  Text(
                    "lbl_day_3".tr,
                    style: CustomTextStyles.labelLargeOnPrimary_6,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 42.h,
                      child: Column(
                        children: [
                          Text(
                            "lbl_day_4".tr,
                            style: CustomTextStyles.labelLargeOnPrimary_6,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup12661,
                            height: 20.h,
                            width: double.maxFinite,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "lbl_day_5".tr,
                    style: CustomTextStyles.labelLargeOnPrimary_6,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppbar(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: CustomAppBar(
        height: 86.h,
        leadingWidth: 23.h,
        leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
          width: 8.h,
          margin: EdgeInsets.only(left: 15.h),
        ),
        title: AppbarSubtitleTwo(
          text: "msg_continuous_sign_ins2".tr,
          margin: EdgeInsets.only(left: 9.h),
        ),
        actions: [
          AppbarTrailingImage(imagePath: ImageConstant.imgLock),
          AppbarSubtitleThree(
            text: "lbl_19800_00".tr,
            margin: EdgeInsets.only(left: 8.h),
          ),
          AppbarTrailingImage(
            imagePath: ImageConstant.img1,
            height: 14.h,
            width: 16.h,
            margin: EdgeInsets.only(left: 11.h, right: 20.h),
          ),
        ],
        styleType: Style.bgShadowBlack900,
      ),
    );
  }

  /// Section Widget
  Widget _buildStackadd2e694b5(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(left: 14.h, top: 98.h, right: 14.h),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.zero,
              color: appTheme.gray90001,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Container(
                height: 66.h,
                decoration: AppDecoration.outline1.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 46.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAdd2e694b50907726x28,
                                  height: 26.h,
                                  width: 28.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "lbl_242".tr,
                                    style: CustomTextStyles.titleMedium18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(left: 6.h),
                            child: _buildRownumberofsign(
                              context,
                              numberofsign: "msg_number_of_sign_ins".tr,
                              receivedtotal: "msg_received_total_bonus".tr,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      decoration: AppDecoration.gradientDeepOrangeToAmberA
                          .copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder10,
                          ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.h,
                              vertical: 8.h,
                            ),
                            decoration: AppDecoration.column259,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(
                                    left: 46.h,
                                    right: 32.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant
                                                .imgAdd2e694b50907736x38,
                                        height: 26.h,
                                        width: 30.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "lbl_242".tr,
                                          style: CustomTextStyles.titleMedium18,
                                        ),
                                      ),
                                      Spacer(),
                                      CustomImageView(
                                        imagePath: ImageConstant.img1733643599,
                                        height: 24.h,
                                        width: 26.h,
                                        alignment: Alignment.bottomCenter,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 24.h,
                                          width: 54.h,
                                          margin: EdgeInsets.only(left: 4.h),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Text(
                                                "lbl_0_20".tr,
                                                style:
                                                    CustomTextStyles
                                                        .titleMedium18,
                                              ),
                                              Text(
                                                "lbl_0_20".tr,
                                                style:
                                                    CustomTextStyles
                                                        .titleMedium18,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(left: 6.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "msg_number_of_sign_ins".tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                      Text(
                                        "msg_received_total_bonus".tr,
                                        style: theme.textTheme.titleSmall,
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStacktwo(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 306.h,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 14.h),
            decoration: AppDecoration.gradientTealToGreenCe,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 212.h,
                    margin: EdgeInsets.only(bottom: 12.h),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgF34da971e03d8ed,
                          height: 212.h,
                          width: double.maxFinite,
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            spacing: 14,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 50.h),
                                decoration: AppDecoration.outlineGray90012,
                                child: Text(
                                  "msg_faster_smoother".tr,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallYellow400,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 44.h),
                                decoration: AppDecoration.outlineGray90012,
                                child: Text(
                                  "msg_extra_bonus_for".tr,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallYellow400,
                                ),
                              ),
                              SizedBox(
                                height: 112.h,
                                width: 266.h,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                left: 22.h,
                                                top: 16.h,
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 10.h,
                                                vertical: 6.h,
                                              ),
                                              decoration: AppDecoration
                                                  .gradientAmberAToOrangeA
                                                  .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder5,
                                                  ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .imgCheckmarkGray90014,
                                                    height: 16.h,
                                                    width: 20.h,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        top: 4.h,
                                                      ),
                                                      child: Text(
                                                        "msg_quick_version_4_5mb"
                                                            .tr,
                                                        style:
                                                            CustomTextStyles
                                                                .titleSmallGray90014,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        height: 26.h,
                                        width: 134.h,
                                        margin: EdgeInsets.only(right: 44.h),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle669,
                                              height: 26.h,
                                              width: double.maxFinite,
                                              radius: BorderRadius.circular(
                                                12.h,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: 2.h,
                                                ),
                                                child: Text(
                                                  "msg_enjoy_more_benefits".tr,
                                                  style:
                                                      CustomTextStyles
                                                          .labelLargeOnPrimary_6,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 130.h,
                                      margin: EdgeInsets.only(bottom: 26.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "msg_continue_to_use".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          SizedBox(
                                            width: double.maxFinite,
                                            child: Divider(
                                              color:
                                                  theme.colorScheme.onPrimary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img236x42,
                                      height: 36.h,
                                      width: 44.h,
                                      alignment: Alignment.bottomLeft,
                                      margin: EdgeInsets.only(bottom: 22.h),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img288x40,
                                      height: 88.h,
                                      width: 42.h,
                                      alignment: Alignment.bottomRight,
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
                ),
                Container(
                  height: 268.h,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img170x76,
                        height: 70.h,
                        width: 78.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 20.h, top: 16.h),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 88.h,
                          width: 92.h,
                          margin: EdgeInsets.only(top: 32.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img188x90,
                                height: 88.h,
                                width: 90.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.img118x28,
                                height: 18.h,
                                width: 30.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 12.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img0ca323f5188d84e,
                        height: 214.h,
                        width: 122.h,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 30.h,
                          margin: EdgeInsets.only(left: 114.h, top: 58.h),
                          child: Column(
                            spacing: 20,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup12691,
                                height: 24.h,
                                width: double.maxFinite,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.img79,
                                height: 24.h,
                                width: double.maxFinite,
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgC5630efa0be61f6,
                        height: 50.h,
                        width: double.maxFinite,
                        alignment: Alignment.topCenter,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumntelevisio(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.h),
      decoration: AppDecoration.gradientGrayToGray90001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTelevisionOnprimary12x12,
                  height: 12.h,
                  width: 12.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_sign_in_rules".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 8.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 12.h,
                  child: Column(
                    spacing: 4,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCheckmarkBlue40002,
                        height: 10.h,
                        width: 12.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLocation,
                        height: 12.h,
                        width: double.maxFinite,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_1_log_in_to_the".tr,
                          style: CustomTextStyles.titleSmallBluegray400,
                        ),
                        TextSpan(
                          text: "lbl_12".tr,
                          style: CustomTextStyles.titleSmallBlue400,
                        ),
                        TextSpan(
                          text: "msg_chance_to_re_sign_5_your".tr,
                          style: CustomTextStyles.titleSmallBluegray400,
                        ),
                        TextSpan(
                          text: "lbl_0".tr,
                          style: CustomTextStyles.titleSmallRed40001,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          CustomImageView(
            imagePath: ImageConstant.imgUserLime20001,
            height: 10.h,
            width: 16.h,
          ),
          SizedBox(height: 40.h),
          CustomImageView(
            imagePath: ImageConstant.imgGroup12647,
            height: 12.h,
            width: 16.h,
          ),
          SizedBox(height: 24.h),
          CustomImageView(
            imagePath: ImageConstant.imgGroup12647,
            height: 12.h,
            width: 16.h,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRownumberofsign(
    BuildContext context, {
    required String numberofsign,
    required String receivedtotal,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          numberofsign,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        Text(
          receivedtotal,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }
}
