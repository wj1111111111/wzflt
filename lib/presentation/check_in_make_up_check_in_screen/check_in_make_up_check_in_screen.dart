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
import 'bloc/check_in_make_up_check_in_bloc.dart';
import 'models/check_in_make_up_check_in_model.dart';

class CheckInMakeUpCheckInScreen extends StatelessWidget {
  const CheckInMakeUpCheckInScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckInMakeUpCheckInBloc>(
      create:
          (context) => CheckInMakeUpCheckInBloc(
            CheckInMakeUpCheckInState(
              checkInMakeUpCheckInModelObj: CheckInMakeUpCheckInModel(),
            ),
          )..add(CheckInMakeUpCheckInInitialEvent()),
      child: CheckInMakeUpCheckInScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckInMakeUpCheckInBloc, CheckInMakeUpCheckInState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  child: Column(
                    spacing: 12,
                    children: [
                      SizedBox(height: 12.h),
                      _buildStackadd2e694b5(context),
                      SizedBox(
                        width: double.maxFinite,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.zero,
                          color: appTheme.gray90001,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: appTheme.yellowA70004.withValues(
                                alpha: 0.06,
                              ),
                              width: 2.h,
                            ),
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Container(
                            height: 566.h,
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.h,
                              vertical: 8.h,
                            ),
                            decoration: AppDecoration.outlineYellowA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                _buildStackunlockmiss(context),
                                Container(
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(
                                    top: 10.h,
                                    bottom: 16.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      _buildColumnunlock(context),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgGroup12661,
                                        height: 20.h,
                                        width: 42.h,
                                        margin: EdgeInsets.only(right: 76.h),
                                      ),
                                      Spacer(),
                                      _buildRowcloseone(context),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
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
    );
  }

  /// Section Widget
  Widget _buildStackadd2e694b5(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
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
              width: double.maxFinite,
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
                          decoration: AppDecoration.column271,
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
                                          ImageConstant.imgAdd2e694b50907736x38,
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
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.img1733643599,
                                              height: 24.h,
                                              width: 24.h,
                                            ),
                                            Container(
                                              height: 24.h,
                                              width: 52.h,
                                              margin: EdgeInsets.only(
                                                left: 4.h,
                                              ),
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
    );
  }

  /// Section Widget
  Widget _buildStackunlockmiss(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 344.h,
        margin: EdgeInsets.only(bottom: 36.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.zero,
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
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 30.h,
                        ),
                        decoration: AppDecoration.column272,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.maxFinite,
                              margin: EdgeInsets.symmetric(horizontal: 44.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder14,
                                    ),
                                    child: Container(
                                      height: 66.h,
                                      width: 68.h,
                                      decoration: AppDecoration
                                          .outlineOnPrimary12
                                          .copyWith(
                                            borderRadius:
                                                BorderRadiusStyle
                                                    .circleBorder14,
                                          ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .imgA65bbb3b63d7cef,
                                            height: 64.h,
                                            width: 66.h,
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.img1008,
                                            height: 32.h,
                                            width: 36.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant
                                            .imgFacebookLightGreenA20002,
                                    height: 20.h,
                                    width: 22.h,
                                    alignment: Alignment.bottomCenter,
                                    margin: EdgeInsets.only(bottom: 16.h),
                                  ),
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: theme.colorScheme.onPrimary,
                                        width: 1.4.h,
                                      ),
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder14,
                                    ),
                                    child: Container(
                                      height: 66.h,
                                      width: 68.h,
                                      decoration: AppDecoration
                                          .outlineOnPrimary12
                                          .copyWith(
                                            borderRadius:
                                                BorderRadiusStyle
                                                    .circleBorder14,
                                          ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .imgA65bbb3b63d7cef,
                                            height: 64.h,
                                            width: 66.h,
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .img5dfa96056b444f538x44,
                                            height: 38.h,
                                            width: 46.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 6.h),
                            Container(
                              width: double.maxFinite,
                              margin: EdgeInsets.only(left: 30.h, right: 38.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_bonus_0_20".tr,
                                    style:
                                        CustomTextStyles
                                            .titleSmallYellowA40002_1,
                                  ),
                                  Text(
                                    "lbl_extra_0_20".tr,
                                    style:
                                        CustomTextStyles
                                            .titleSmallYellowA40002_1,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 18.h),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.h,
                                vertical: 6.h,
                              ),
                              decoration: AppDecoration.fillGreen90016.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder24,
                                    ),
                                    child: Container(
                                      height: 48.h,
                                      width: 48.h,
                                      decoration: AppDecoration
                                          .gradientYellowAToGreenA700031
                                          .copyWith(
                                            borderRadius:
                                                BorderRadiusStyle
                                                    .circleBorder24,
                                          ),
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .imgAdd2e694b50907736x38,
                                            height: 36.h,
                                            width: 40.h,
                                            alignment: Alignment.topCenter,
                                          ),
                                          Text(
                                            "lbl_sign_in3".tr,
                                            style:
                                                CustomTextStyles
                                                    .labelLargeLightgreen5002,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "msg_minimum_deposit".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .titleSmallLightgreenA700
                                        .copyWith(height: 1.29),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 6.h),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(left: 10.h, bottom: 20.h),
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
                                  imagePath:
                                      ImageConstant.imgVideoCameraRedA70002,
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
                                      style: CustomTextStyles
                                          .labelLargeRedA70002
                                          .copyWith(height: 1.17),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10.h),
                            padding: EdgeInsets.all(8.h),
                            decoration: AppDecoration.fillGreen90014.copyWith(
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
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder24,
                                  ),
                                  child: Container(
                                    height: 48.h,
                                    width: 48.h,
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
                                              ImageConstant
                                                  .imgE20d8191b75bf2436x38,
                                          height: 36.h,
                                          width: 40.h,
                                          alignment: Alignment.topCenter,
                                        ),
                                        Text(
                                          "lbl_unlock".tr,
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
                                    margin: EdgeInsets.only(
                                      left: 4.h,
                                      bottom: 2.h,
                                    ),
                                    child: Text(
                                      "msg_times_of_deposits_2_deposit2".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .titleSmallLightgreenA700
                                          .copyWith(height: 1.29),
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
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 32.h),
                decoration: AppDecoration.fillBlack9004,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 2.h),
                      decoration:
                          AppDecoration.gradientLightGreenAToLightGreenA,
                      width: double.maxFinite,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img51,
                            height: 48.h,
                            width: 60.h,
                            margin: EdgeInsets.only(bottom: 6.h),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 234.h,
                              margin: EdgeInsets.only(bottom: 2.h),
                              child: Text(
                                "msg_unlock_missed_rewards".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleMedium!.copyWith(
                                  height: 1.13,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 84.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnunlock(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
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
                        "msg_sign_in_today_day".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                          CustomImageView(
                            imagePath: ImageConstant.img3122x22,
                            height: 20.h,
                            width: 20.h,
                            margin: EdgeInsets.only(left: 6.h),
                          ),
                          Text(
                            "lbl_extra_0_20".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                CustomOutlinedButton(
                  height: 30.h,
                  width: 84.h,
                  text: "lbl_unlock".tr,
                  leftIcon: Container(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgE20d8191b75bf2436x38,
                      height: 20.h,
                      width: 20.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles
                          .gradientLightGreenAToLightGreenTL41Decoration,
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
                  child: Column(
                    children: [
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
                      Text(
                        "lbl_day_1".tr,
                        style: CustomTextStyles.labelLargeOnPrimary_6,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
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
                      Text(
                        "lbl_day_2".tr,
                        style: CustomTextStyles.labelLargeOnPrimary_6,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 80.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
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
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "lbl_0_202".tr,
                                style: CustomTextStyles.labelLargeOnPrimary_6,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img5dfa96056b444f540x38,
                              height: 40.h,
                              width: 38.h,
                            ),
                            Text(
                              "lbl_day_3".tr,
                              style: CustomTextStyles.labelLargeOnPrimary_6,
                            ),
                          ],
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 4.h),
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
                        Text(
                          "lbl_day_4".tr,
                          style: CustomTextStyles.labelLargeOnPrimary_6,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowcloseone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCloseYellow70003,
            height: 22.h,
            width: 22.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_activity_time".tr,
                      style: CustomTextStyles.titleSmallBluegray20005,
                    ),
                    TextSpan(
                      text: "lbl_29day_23_59_59".tr,
                      style: CustomTextStyles.titleSmallBlue400,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumntelevisio(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
      decoration: AppDecoration.gradientGrayToGray90001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 6,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.h),
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
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 8.h),
            child: Row(
              children: [
                SizedBox(
                  width: 14.h,
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCheckmarkBlue40002,
                        height: 10.h,
                        width: 12.h,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(height: 4.h),
                      SizedBox(
                        height: 12.h,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorBlueGray20006,
                              height: 8.h,
                              width: 8.h,
                              alignment: Alignment.topCenter,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorIndigo10004,
                              height: 6.h,
                              width: 5.h,
                              alignment: Alignment.topRight,
                            ),
                            Container(
                              height: 8.h,
                              width: 10.h,
                              decoration: BoxDecoration(
                                color: appTheme.orange30002,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2.h),
                                  topRight: Radius.circular(2.h),
                                  bottomLeft: Radius.circular(2.h),
                                  bottomRight: Radius.circular(1.h),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorAmber20001,
                              height: 6.h,
                              width: 6.h,
                              alignment: Alignment.bottomRight,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorDeepOrange30001,
                              height: 4.h,
                              width: 6.h,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorAmber200016x6,
                              height: 6.h,
                              width: 8.h,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorBlueGray80010,
                              height: 2.h,
                              width: 4.h,
                              margin: EdgeInsets.only(bottom: 2.h),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 22.h),
                      SizedBox(
                        height: 10.h,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorIndigo200,
                              height: 10.h,
                              width: double.maxFinite,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorLime20001,
                              height: 10.h,
                              width: double.maxFinite,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorWhiteA700,
                              height: 1.h,
                              width: 3.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 2.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorWhiteA700,
                              height: 1.h,
                              width: 3.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 2.h, top: 4.h),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup12647,
                        height: 12.h,
                        width: double.maxFinite,
                      ),
                      SizedBox(height: 24.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup12647,
                        height: 12.h,
                        width: double.maxFinite,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 296.h,
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
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
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
