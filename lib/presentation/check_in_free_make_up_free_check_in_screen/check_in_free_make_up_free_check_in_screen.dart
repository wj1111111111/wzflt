import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/check_in_free_make_up_free_check_in_bloc.dart';
import 'models/check_in_free_make_up_free_check_in_model.dart';

class CheckInFreeMakeUpFreeCheckInScreen extends StatelessWidget {
  const CheckInFreeMakeUpFreeCheckInScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckInFreeMakeUpFreeCheckInBloc>(
      create:
          (context) => CheckInFreeMakeUpFreeCheckInBloc(
            CheckInFreeMakeUpFreeCheckInState(
              checkInFreeMakeUpFreeCheckInModelObj:
                  CheckInFreeMakeUpFreeCheckInModel(),
            ),
          )..add(CheckInFreeMakeUpFreeCheckInInitialEvent()),
      child: CheckInFreeMakeUpFreeCheckInScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      CheckInFreeMakeUpFreeCheckInBloc,
      CheckInFreeMakeUpFreeCheckInState
    >(
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
                  padding: EdgeInsets.only(left: 4.h, top: 12.h, right: 4.h),
                  child: Column(
                    children: [
                      _buildStackadd2e694b5(context),
                      SizedBox(height: 14.h),
                      _buildStackarrowright(context),
                      SizedBox(height: 30.h),
                      _buildRowtelevision(context),
                      SizedBox(height: 6.h),
                      _buildRowcheckmark(context),
                      SizedBox(height: 26.h),
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
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
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
                          decoration: AppDecoration.column280,
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
                                          ImageConstant.imgAdd2e694b5090771,
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
  Widget _buildStackarrowright(BuildContext context) {
    return Container(
      height: 412.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 10.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(right: 10.h),
            color: appTheme.gray90001,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.yellowA70004.withValues(alpha: 0.06),
                width: 2.h,
              ),
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Container(
              height: 412.h,
              padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 8.h),
              decoration: AppDecoration.outlineYellowA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.only(bottom: 4.h),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: appTheme.yellowA70004,
                        width: 1.h,
                      ),
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Container(
                      height: 224.h,
                      decoration: AppDecoration.gradientYellowAToGreenA70003
                          .copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder10,
                          ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgGroup12532Onprimary204x324,
                            height: 204.h,
                            width: double.maxFinite,
                            alignment: Alignment.topCenter,
                          ),
                          Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 10.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
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
                                          imagePath:
                                              ImageConstant.imgA65bbb3b63d7cef,
                                          height: 68.h,
                                          width: 70.h,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.img1733643598,
                                          height: 38.h,
                                          width: 40.h,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  "lbl_bonus_0_20".tr,
                                  style:
                                      CustomTextStyles.titleSmallYellowA40002_1,
                                ),
                                SizedBox(height: 18.h),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.h,
                                    vertical: 6.h,
                                  ),
                                  decoration: AppDecoration.fillGreen90014
                                      .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5,
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
                                          width: 50.h,
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
                                                width: double.maxFinite,
                                                alignment: Alignment.topLeft,
                                                margin: EdgeInsets.only(
                                                  left: 4.h,
                                                ),
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
                                      CustomImageView(
                                        imagePath: ImageConstant.imgFree1,
                                        height: 42.h,
                                        width: 122.h,
                                        margin: EdgeInsets.only(left: 36.h),
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
                    child: SizedBox(
                      width: double.maxFinite,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "msg_sign_in_today_day".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.img1733643599,
                                                height: 18.h,
                                                width: 18.h,
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "lbl_bonus4".tr,
                                                      style:
                                                          theme
                                                              .textTheme
                                                              .titleSmall,
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
                                  text: "lbl_re_signing".tr,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 12.h),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: double.maxFinite,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 14.h,
                                            vertical: 4.h,
                                          ),
                                          decoration: AppDecoration
                                              .outlineAmberA400
                                              .copyWith(
                                                borderRadius:
                                                    BorderRadiusStyle
                                                        .roundedBorder5,
                                              ),
                                          child: Column(
                                            spacing: 6,
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "lbl_0_202".tr,
                                                style:
                                                    CustomTextStyles
                                                        .labelLargeBluegray20005,
                                              ),
                                              SizedBox(
                                                height: 24.h,
                                                width: double.maxFinite,
                                                child: Stack(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .img1733643599,
                                                      height: 24.h,
                                                      width: 26.h,
                                                      alignment:
                                                          Alignment.centerLeft,
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
                                        Text(
                                          "lbl_day_1".tr,
                                          style:
                                              CustomTextStyles
                                                  .labelLargeOnPrimary_6,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 12.h),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: double.maxFinite,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 14.h,
                                            vertical: 4.h,
                                          ),
                                          decoration: AppDecoration
                                              .outlineAmberA400
                                              .copyWith(
                                                borderRadius:
                                                    BorderRadiusStyle
                                                        .roundedBorder5,
                                              ),
                                          child: Column(
                                            spacing: 6,
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "lbl_0_202".tr,
                                                style:
                                                    CustomTextStyles
                                                        .labelLargeBluegray20005,
                                              ),
                                              SizedBox(
                                                height: 24.h,
                                                width: double.maxFinite,
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .img1733643599,
                                                      height: 24.h,
                                                      width: 26.h,
                                                    ),
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .imgSettingsLightGreenA700,
                                                      height: 20.h,
                                                      width: double.maxFinite,
                                                      alignment:
                                                          Alignment
                                                              .bottomCenter,
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
                                          style:
                                              CustomTextStyles
                                                  .labelLargeOnPrimary_6,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 12.h),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: double.maxFinite,
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 62.h,
                                                  width: double.maxFinite,
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .img5dfa96056b444f540x38,
                                                        height: 40.h,
                                                        width: 40.h,
                                                        alignment:
                                                            Alignment
                                                                .bottomCenter,
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                top: 6.h,
                                                              ),
                                                          child: Text(
                                                            "lbl_0_202".tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .labelLargeOnPrimary_6,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.maxFinite,
                                                        padding:
                                                            EdgeInsets.symmetric(
                                                              horizontal: 14.h,
                                                              vertical: 4.h,
                                                            ),
                                                        decoration: AppDecoration
                                                            .outlineAmberA4001
                                                            .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder5,
                                                            ),
                                                        child: Column(
                                                          spacing: 6,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              "lbl_0_202".tr,
                                                              style:
                                                                  CustomTextStyles
                                                                      .labelLargeBluegray20005,
                                                            ),
                                                            SizedBox(
                                                              height: 24.h,
                                                              width:
                                                                  double
                                                                      .maxFinite,
                                                              child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .bottomCenter,
                                                                children: [
                                                                  CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .img1733643599,
                                                                    height:
                                                                        24.h,
                                                                    width: 26.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                  ),
                                                                  CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgSettingsLightGreenA700,
                                                                    height:
                                                                        20.h,
                                                                    width:
                                                                        double
                                                                            .maxFinite,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 4.h,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_day_3".tr,
                                                  style:
                                                      CustomTextStyles
                                                          .labelLargeOnPrimary_6,
                                                ),
                                              ],
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup12661,
                                            height: 20.h,
                                            width: double.maxFinite,
                                            margin: EdgeInsets.only(
                                              left: 10.h,
                                              right: 8.h,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 16.h,
                                        width: double.maxFinite,
                                        margin: EdgeInsets.symmetric(
                                          horizontal: 6.h,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgUnion16x46,
                                              height: 16.h,
                                              width: double.maxFinite,
                                            ),
                                            Text(
                                              "lbl_0_203".tr,
                                              style:
                                                  CustomTextStyles
                                                      .labelLargeOnPrimary_6,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.maxFinite,
                                        decoration: AppDecoration.fillGreenA
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .roundedBorder5,
                                            ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 4.h),
                                            Text(
                                              "lbl_0_202".tr,
                                              style:
                                                  CustomTextStyles
                                                      .labelLargeOnPrimary_6,
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .img5dfa96056b444f540x40,
                                              height: 40.h,
                                              width: 40.h,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "lbl_day_4".tr,
                                        style:
                                            CustomTextStyles
                                                .labelLargeOnPrimary_6,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 12.h),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: double.maxFinite,
                                          padding: EdgeInsets.symmetric(
                                            vertical: 4.h,
                                          ),
                                          decoration: AppDecoration
                                              .outlineBluegray90012
                                              .copyWith(
                                                borderRadius:
                                                    BorderRadiusStyle
                                                        .roundedBorder5,
                                              ),
                                          child: Column(
                                            spacing: 6,
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "lbl_0_20".tr,
                                                style:
                                                    CustomTextStyles
                                                        .labelLargeBluegray20005,
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.img1733643599,
                                                height: 24.h,
                                                width: 26.h,
                                              ),
                                              SizedBox(height: 4.h),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "lbl_day_5".tr,
                                          style:
                                              CustomTextStyles
                                                  .labelLargeOnPrimary_6,
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100.h),
            child: CustomIconButton(
              height: 22.h,
              width: 22.h,
              decoration: IconButtonStyleHelper.fillOnPrimaryTL8,
              alignment: Alignment.topRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowRightGray80004,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowtelevision(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 22.h),
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
    );
  }

  /// Section Widget
  Widget _buildRowcheckmark(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 22.h, right: 30.h),
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
                CustomImageView(
                  imagePath: ImageConstant.imgUserLime20001,
                  height: 10.h,
                  width: double.maxFinite,
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
