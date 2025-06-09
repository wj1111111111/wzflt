import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/referral_not_logged_in_bloc.dart';
import 'models/list_item_model.dart';
import 'models/list_one_item_model.dart';
import 'models/list_two_item_model.dart';
import 'models/listjunior_item_model.dart';
import 'models/listprice_item_model.dart';
import 'models/listteamslevel_item_model.dart';
import 'models/referral_not_logged_in_model.dart';
import 'widgets/list_item_widget.dart';
import 'widgets/list_one_item_widget.dart';
import 'widgets/list_two_item_widget.dart';
import 'widgets/listjunior_item_widget.dart';
import 'widgets/listprice_item_widget.dart';
import 'widgets/listteamslevel_item_widget.dart';

class ReferralNotLoggedInScreen extends StatelessWidget {
  const ReferralNotLoggedInScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReferralNotLoggedInBloc>(
      create:
          (context) => ReferralNotLoggedInBloc(
            ReferralNotLoggedInState(
              referralNotLoggedInModelObj: ReferralNotLoggedInModel(),
            ),
          )..add(ReferralNotLoggedInInitialEvent()),
      child: ReferralNotLoggedInScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                spacing: 10,
                children: [
                  _buildStackthemain(context),
                  _buildStacklineone(context),
                  _buildColumnone(context),
                  _buildColumnfourone(context),
                  _buildColumnfiveone(context),
                  _buildColumnbonusone(context),
                  _buildColumndifferent(context),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildColumninvite(context),
    );
  }

  /// Section Widget
  Widget _buildRegisterearn(BuildContext context) {
    return CustomElevatedButton(
      height: 40.h,
      width: 174.h,
      text: "lbl_register_earn".tr,
      margin: EdgeInsets.only(right: 68.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientLightGreenAToLightGreenDecoration,
      buttonTextStyle: theme.textTheme.titleMedium!,
      alignment: Alignment.topRight,
    );
  }

  /// Section Widget
  Widget _buildStackthemain(BuildContext context) {
    return SizedBox(
      height: 564.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 510.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.15,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage560,
                      height: 510.h,
                      width: double.maxFinite,
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomAppBar(
                          height: 48.h,
                          title: SizedBox(
                            width: double.maxFinite,
                            child: AppbarTitleImage(
                              imagePath: ImageConstant.imgLogoWj931,
                              height: 28.h,
                              width: 124.h,
                              margin: EdgeInsets.only(left: 15.h),
                            ),
                          ),
                          actions: [
                            AppbarTrailingImage(
                              imagePath: ImageConstant.imgLock,
                            ),
                            AppbarSubtitleThree(
                              text: "lbl_1980_00".tr,
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
                        SizedBox(height: 6.h),
                        Text(
                          "msg_invite_friends_to".tr,
                          style: CustomTextStyles.headlineMediumArialOnPrimary,
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          "msg_rebate_rate_maximum".tr,
                          style: CustomTextStyles.titleLargeYellow500,
                        ),
                        Text(
                          "lbl_0_8".tr,
                          style: CustomTextStyles.displayMediumArialYellow500,
                        ),
                        SizedBox(height: 10.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            height: 328.h,
                            width: 344.h,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage,
                                  height: 106.h,
                                  width: 94.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(left: 40.h),
                                ),
                                Container(
                                  height: 288.h,
                                  margin: EdgeInsets.only(right: 6.h),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage1064,
                                        height: 288.h,
                                        width: double.maxFinite,
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          width: double.maxFinite,
                                          margin: EdgeInsets.only(
                                            left: 22.h,
                                            top: 24.h,
                                            right: 22.h,
                                          ),
                                          child: Column(
                                            spacing: 56,
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage554,
                                                height: 40.h,
                                                width: 40.h,
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage1067,
                                                height: 56.h,
                                                width: 56.h,
                                                margin: EdgeInsets.only(
                                                  left: 36.h,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                _buildRegisterearn(context),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage490,
                                  height: 68.h,
                                  width: 70.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(top: 54.h),
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
          SizedBox(
            width: double.maxFinite,
            child: Column(
              spacing: 8,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 178.h,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 150.h,
                        width: 152.h,
                        margin: EdgeInsets.only(right: 24.h, bottom: 8.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFw12003,
                              height: 150.h,
                              width: 150.h,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 50.h,
                                width: 28.h,
                                margin: EdgeInsets.only(left: 16.h, top: 46.h),
                                padding: EdgeInsets.only(top: 12.h),
                                decoration: AppDecoration.fillIndigo.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgJilitaka1,
                                      height: 20.h,
                                      width: 22.h,
                                      radius: BorderRadius.circular(3.h),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSave68x82,
                        height: 68.h,
                        width: 84.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 32.h, right: 108.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle34625076,
                        height: 166.h,
                        width: double.maxFinite,
                        alignment: Alignment.topLeft,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 314.h,
                          margin: EdgeInsets.only(left: 14.h),
                          child: Text(
                            "msg_all_agents_enjoy".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!.copyWith(
                              height: 1.33,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 316.h,
                  margin: EdgeInsets.only(left: 14.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_the_main_difference".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: "msg_betting_rebate_bonus2".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
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

  /// Section Widget
  Widget _buildStacklineone(BuildContext context) {
    return SizedBox(
      height: 456.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 12.h,
                  ),
                  decoration: AppDecoration.gradientGrayToGray.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          VerticalDivider(
                            width: 5.h,
                            thickness: 5.h,
                            color: appTheme.lightGreenA700,
                            indent: 8.h,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "msg_agent_7_major_income".tr.toUpperCase(),
                                style: CustomTextStyles.titleLargeBlack_1,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Text(
                          "msg_jilitaka_new_referral".tr,
                          style: CustomTextStyles.bodyLargeAmberA400,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Text(
                          "msg_enjoy_7_super_commissions".tr,
                          style: CustomTextStyles.bodyLargeBluegray400,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                            child: Container(
                              width: double.maxFinite,
                              decoration: AppDecoration.outline1.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                              child: Column(
                                spacing: 4,
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: AppDecoration.outline2.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder10,
                                    ),
                                    width: double.maxFinite,
                                    child: ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 4,
                                          sigmaY: 4,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 60.h,
                                              width: 62.h,
                                              decoration:
                                                  AppDecoration.column19,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "lbl_12".tr,
                                                    style:
                                                        theme
                                                            .textTheme
                                                            .titleLarge,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 4.h,
                                              ),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          "msg_each_registration"
                                                              .tr,
                                                      style:
                                                          CustomTextStyles
                                                              .titleSmall15_1,
                                                    ),
                                                    TextSpan(
                                                      text: "lbl_23".tr,
                                                      style:
                                                          CustomTextStyles
                                                              .titleSmallAmberA40015,
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArrowUp,
                                              height: 28.h,
                                              width: 28.h,
                                              margin: EdgeInsets.only(
                                                left: 26.h,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.maxFinite,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 20.h,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: double.maxFinite,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "lbl".tr,
                                                      style:
                                                          CustomTextStyles
                                                              .titleMediumAmberA400,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 8.h,
                                                      ),
                                                      child: Text(
                                                        "lbl_24".tr,
                                                        style:
                                                            CustomTextStyles
                                                                .headlineLargeAmberA400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 172.h,
                                                child: Text(
                                                  "msg_each_additional".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodyMediumBluegray400
                                                      .copyWith(height: 1.14),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            height: 86.h,
                                            width: 80.h,
                                            margin: EdgeInsets.only(top: 2.h),
                                            child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgTdr23,
                                                  height: 74.h,
                                                  width: double.maxFinite,
                                                  alignment:
                                                      Alignment.topCenter,
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgTdr23,
                                                  height: 74.h,
                                                  width: double.maxFinite,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 26.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 14.h),
            decoration: AppDecoration.fs4bg.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              spacing: 2,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: AppDecoration.outline2.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  width: double.maxFinite,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60.h,
                            width: 64.h,
                            decoration: AppDecoration.column21,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_22".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_each_deposit_bonus".tr,
                                    style: CustomTextStyles.titleSmall15_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_53".tr,
                                    style:
                                        CustomTextStyles.titleSmallAmberA40015,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 10.h),
                            child: CustomIconButton(
                              height: 28.h,
                              width: 28.h,
                              padding: EdgeInsets.all(6.h),
                              decoration: IconButtonStyleHelper.fillOnPrimary,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowUpOnprimary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 18.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 8.h),
                          child: Column(
                            children: [
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  children: [
                                    Text(
                                      "lbl".tr,
                                      style:
                                          CustomTextStyles.titleMediumAmberA400,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "lbl_54".tr,
                                        style:
                                            CustomTextStyles
                                                .headlineLargeAmberA400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "msg_each_additional2".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMediumBluegray400
                                    .copyWith(height: 1.14),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1088,
                        height: 90.h,
                        width: 90.h,
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.fs4bg.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              spacing: 22,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: AppDecoration.outline2.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  width: double.maxFinite,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60.h,
                            width: 62.h,
                            decoration: AppDecoration.column23,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_3".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_maximum".tr,
                                    style: CustomTextStyles.titleSmall15_1,
                                  ),
                                  TextSpan(
                                    text: "msg_achievement_reward2".tr,
                                    style: CustomTextStyles.titleSmall15_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_is".tr,
                                    style: CustomTextStyles.titleSmall15_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_88882".tr,
                                    style:
                                        CustomTextStyles.titleSmallAmberA40015,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowUp,
                            height: 28.h,
                            width: 28.h,
                            margin: EdgeInsets.only(left: 16.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.h, right: 12.h),
                  width: double.maxFinite,
                  child: BlocSelector<
                    ReferralNotLoggedInBloc,
                    ReferralNotLoggedInState,
                    ReferralNotLoggedInModel?
                  >(
                    selector: (state) => state.referralNotLoggedInModelObj,
                    builder: (context, referralNotLoggedInModelObj) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          direction: Axis.horizontal,
                          spacing: 18.h,
                          children: List.generate(
                            referralNotLoggedInModelObj
                                    ?.listpriceItemList
                                    .length ??
                                0,
                            (index) {
                              ListpriceItemModel model =
                                  referralNotLoggedInModelObj
                                      ?.listpriceItemList[index] ??
                                  ListpriceItemModel();
                              return ListpriceItemWidget(model);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 14.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTh(BuildContext context) {
    return CustomElevatedButton(
      height: 30.h,
      width: 120.h,
      text: "lbl_5th".tr,
      buttonStyle: CustomButtonStyles.fillBlack,
      buttonTextStyle: CustomTextStyles.bodyMediumBluegray400,
    );
  }

  /// Section Widget
  Widget _buildColumnfourone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: AppDecoration.fillBluegray900.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60.h,
                  width: 64.h,
                  decoration: AppDecoration.column25,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("lbl_4".tr, style: theme.textTheme.titleLarge),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 196.h,
                    margin: EdgeInsets.only(left: 4.h, bottom: 10.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_agent_ranking_rewards".tr,
                            style: CustomTextStyles.titleSmall15_1,
                          ),
                          TextSpan(
                            text: "lbl_89992".tr,
                            style: CustomTextStyles.titleSmallAmberA40015,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 10.h),
                  child: CustomIconButton(
                    height: 28.h,
                    width: 28.h,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.fillOnPrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowUpOnprimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 22.h),
            child: Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_only_directly_invited".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                    height: 1.14,
                  ),
                ),
                SizedBox(
                  width: 256.h,
                  child: Text(
                    "msg_leaderboard_rewards".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                      height: 1.14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 10.h),
            decoration: AppDecoration.fillGray800.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              spacing: 6,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 36.h, right: 50.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_ranking".tr,
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                      Text(
                        "lbl_bonus".tr,
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    spacing: 4,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 30.h,
                              width: 120.h,
                              padding: EdgeInsets.only(
                                top: 4.h,
                                right: 44.h,
                                bottom: 4.h,
                              ),
                              decoration: AppDecoration.fillBlack,
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroup2131329936,
                                    height: 20.h,
                                    width: 26.h,
                                    alignment: Alignment.centerRight,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10.h),
                                    child: Text(
                                      "lbl_12".tr,
                                      style:
                                          CustomTextStyles
                                              .labelLargeDeeporange90001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 30.h,
                                vertical: 4.h,
                              ),
                              decoration: AppDecoration.fillBlack,
                              child: Text(
                                "lbl_300".tr,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 50.h, right: 54.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 22.h,
                              width: 26.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgGroup2131329936Red200,
                                    height: 20.h,
                                    width: double.maxFinite,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "lbl_22".tr,
                                      style: CustomTextStyles.labelLargeRed300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "lbl_490".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 30.h,
                              width: 120.h,
                              padding: EdgeInsets.only(
                                top: 4.h,
                                right: 44.h,
                                bottom: 4.h,
                              ),
                              decoration: AppDecoration.fillBlack,
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant
                                            .imgGroup2131329936IndigoA100,
                                    height: 20.h,
                                    width: 26.h,
                                    alignment: Alignment.centerRight,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.h),
                                    child: Text(
                                      "lbl_3".tr,
                                      style:
                                          CustomTextStyles.labelLargeIndigo400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 30.h,
                                vertical: 4.h,
                              ),
                              decoration: AppDecoration.fillBlack,
                              child: Text(
                                "lbl_40".tr,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 50.h, right: 62.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "lbl_4th".tr,
                              style: CustomTextStyles.bodyMediumBluegray400,
                            ),
                            Text(
                              "lbl_40".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildTh(context),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.h,
                              vertical: 4.h,
                            ),
                            decoration: AppDecoration.fillBlack,
                            child: Text(
                              "lbl_40".tr,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJunioragenti(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        ReferralNotLoggedInBloc,
        ReferralNotLoggedInState,
        TextEditingController?
      >(
        selector: (state) => state.junioragentiController,
        builder: (context, junioragentiController) {
          return CustomTextFormField(
            controller: junioragentiController,
            hintText: "lbl_junior_agent_i".tr,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 4.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillBlack,
            fillColor: appTheme.black900.withValues(alpha: 0.2),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 30.h,
        text: "lbl3".tr,
        buttonStyle: CustomButtonStyles.fillBlack,
        buttonTextStyle: theme.textTheme.bodyMedium!,
      ),
    );
  }

  /// Section Widget
  Widget _buildSenioragent(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        ReferralNotLoggedInBloc,
        ReferralNotLoggedInState,
        TextEditingController?
      >(
        selector: (state) => state.senioragentController,
        builder: (context, senioragentController) {
          return CustomTextFormField(
            controller: senioragentController,
            hintText: "lbl_senior_agent".tr,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 4.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillBlack,
            fillColor: appTheme.black900.withValues(alpha: 0.2),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 30.h,
        text: "lbl_102".tr,
        buttonStyle: CustomButtonStyles.fillBlack,
        buttonTextStyle: theme.textTheme.bodyMedium!,
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnfiveone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: AppDecoration.fillBluegray900.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60.h,
                  width: 62.h,
                  decoration: AppDecoration.column28,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("lbl_52".tr, style: theme.textTheme.titleLarge),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 218.h,
                    margin: EdgeInsets.only(left: 4.h, bottom: 8.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_qualified_bonuses".tr,
                            style: CustomTextStyles.titleSmall15_1,
                          ),
                          TextSpan(
                            text: "lbl_582".tr,
                            style: CustomTextStyles.titleSmallAmberA40015,
                          ),
                          TextSpan(
                            text: "msg_per_qualified_user".tr,
                            style: CustomTextStyles.titleSmall15_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: CustomIconButton(
                    height: 28.h,
                    width: 28.h,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.fillOnPrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowUpOnprimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 28.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 32.h, right: 28.h),
            child: Row(
              children: [
                SizedBox(
                  height: 40.h,
                  width: 40.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClockLightGreenA700,
                        height: 40.h,
                        width: 40.h,
                      ),
                      Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: AppDecoration.fs23.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 2.h),
                            Text(
                              "lbl_you".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleSmallBlack.copyWith(
                                height: 1.29,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 82.h,
                  width: 68.h,
                  margin: EdgeInsets.only(left: 6.h),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPlay24x24,
                        height: 24.h,
                        width: 26.h,
                        margin: EdgeInsets.only(right: 16.h, bottom: 20.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage34x34,
                        height: 34.h,
                        width: 36.h,
                        radius: BorderRadius.circular(3.h),
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 6.h, bottom: 6.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage422,
                        height: 38.h,
                        width: 40.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPlay34x34,
                        height: 34.h,
                        width: 36.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 10.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 10.h,
                        width: double.maxFinite,
                        alignment: Alignment.centerRight,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp32x32,
                        height: 32.h,
                        width: 34.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 8.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFacebook36x34,
                        height: 36.h,
                        width: 36.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(right: 12.h),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsLightGreenA70040x40,
                  height: 40.h,
                  width: 40.h,
                  margin: EdgeInsets.only(left: 10.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup1314,
                  height: 18.h,
                  width: 20.h,
                  margin: EdgeInsets.only(left: 14.h),
                ),
                Expanded(
                  child: Column(
                    spacing: 10,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 2.h,
                              vertical: 6.h,
                            ),
                            decoration: AppDecoration.outlineLightGreenA
                                .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder14,
                                ),
                            child: Text(
                              "lbl_you".tr,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelMedium10,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "lbl_get".tr,
                              style: CustomTextStyles.bodySmallAmberA400,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4.h),
                            decoration: AppDecoration.outlineBlack,
                            child: Text(
                              "lbl_583".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleSmallAmberA400_2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgWulch4,
                            height: 28.h,
                            width: 28.h,
                            radius: BorderRadius.circular(14.h),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "lbl_get".tr,
                              style: CustomTextStyles.bodySmallAmberA400,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4.h),
                            decoration: AppDecoration.outlineBlack,
                            child: Text(
                              "lbl_38".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleSmallAmberA400_2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "msg_qualified_users".tr,
                style: CustomTextStyles.titleSmallBluegray400_1,
              ),
            ),
          ),
          SizedBox(height: 6.h),
          SizedBox(
            width: 316.h,
            child: Text(
              "msg_1_the_invitee".tr,
              maxLines: 9,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                height: 1.14,
              ),
            ),
          ),
          SizedBox(height: 18.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "msg_qualified_bonus".tr,
                style: CustomTextStyles.titleSmallBluegray400_1,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            padding: EdgeInsets.all(4.h),
            decoration: AppDecoration.fillGray800.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              spacing: 4,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 4.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_agent_tier".tr,
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                      Text(
                        "msg_qualified_bonus_1".tr,
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      _buildJunioragenti(context),
                      _buildEight(context),
                    ],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: _buildRowmasteragent(
                    context,
                    masteragentTwo: "msg_intermediate_agent".tr,
                    priceEighteen: "lbl_102".tr,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [_buildSenioragent(context), _buildTen(context)],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: _buildRowmasteragent(
                    context,
                    masteragentTwo: "lbl_master_agent".tr,
                    priceEighteen: "lbl_102".tr,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          SizedBox(
            width: 304.h,
            child: Text(
              "msg_remark_once_the".tr,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(height: 1.33),
            ),
          ),
          SizedBox(height: 22.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnbonusone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  decoration: AppDecoration.outline2.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  width: double.maxFinite,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60.h,
                            width: 64.h,
                            decoration: AppDecoration.column32,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_6".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_up_to_1_1".tr,
                                    style:
                                        CustomTextStyles.titleSmallAmberA40015,
                                  ),
                                  TextSpan(
                                    text: "lbl_deposit_rebate2".tr,
                                    style: CustomTextStyles.titleSmall15_1,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 10.h),
                            child: CustomIconButton(
                              height: 28.h,
                              width: 28.h,
                              padding: EdgeInsets.all(6.h),
                              decoration: IconButtonStyleHelper.fillOnPrimary,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowUpOnprimary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 30.h, right: 22.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_up_to2".tr,
                              style:
                                  CustomTextStyles.displayMediumArialOnPrimary,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_1_1".tr,
                                      style: theme.textTheme.displayLarge,
                                    ),
                                    TextSpan(
                                      text: "lbl4".tr,
                                      style:
                                          CustomTextStyles
                                              .headlineLargeAmberA400Bold,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 132.h,
                        width: 132.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgDeposit414b0417aPng,
                              height: 132.h,
                              width: 132.h,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 38.h,
                                margin: EdgeInsets.only(top: 34.h, right: 10.h),
                                child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(-(-16 / 360)),
                                  child: Text(
                                    "lbl_1_12".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.titleSmallGray90003,
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
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 22.h, right: 6.h),
                  child: Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_when_an_invitee".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                          height: 1.14,
                        ),
                      ),
                      Text(
                        "msg_the_maximum_rebate".tr,
                        style: CustomTextStyles.bodyMediumBluegray400,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_if_your_agent_level".tr,
                              style: CustomTextStyles.bodyMediumBluegray400_1,
                            ),
                            TextSpan(
                              text: "lbl_1_000_000".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                            TextSpan(
                              text: "msg_and_the_inviter".tr,
                              style: CustomTextStyles.bodyMediumBluegray400_1,
                            ),
                            TextSpan(
                              text: "msg_1_000_000_1_1_11_000".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "lbl_bonus2".tr,
                style: CustomTextStyles.titleSmallBluegray400_1,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 16.h, right: 12.h),
            child: BlocSelector<
              ReferralNotLoggedInBloc,
              ReferralNotLoggedInState,
              ReferralNotLoggedInModel?
            >(
              selector: (state) => state.referralNotLoggedInModelObj,
              builder: (context, referralNotLoggedInModelObj) {
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:
                      referralNotLoggedInModelObj
                          ?.listteamslevelItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    ListteamslevelItemModel model =
                        referralNotLoggedInModelObj
                            ?.listteamslevelItemList[index] ??
                        ListteamslevelItemModel();
                    return ListteamslevelItemWidget(model);
                  },
                );
              },
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSlots(BuildContext context) {
    return CustomOutlinedButton(
      height: 40.h,
      text: "lbl_slots".tr,
      margin: EdgeInsets.only(left: 14.h, right: 12.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 6.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup2131329970,
          height: 22.h,
          width: 24.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildBingo(BuildContext context) {
    return CustomOutlinedButton(
      height: 40.h,
      text: "lbl_bingo".tr,
      margin: EdgeInsets.only(left: 14.h, right: 12.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgVector24x24,
          height: 24.h,
          width: 24.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumndifferent(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              spacing: 14,
              children: [
                Container(
                  decoration: AppDecoration.outline2.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  width: double.maxFinite,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 60.h,
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 12.h,
                                        right: 10.h,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_1".tr,
                                              style:
                                                  CustomTextStyles
                                                      .titleSmallAmberA40015,
                                            ),
                                            TextSpan(
                                              text: "msg_betting_rebate_in".tr,
                                              style:
                                                  CustomTextStyles
                                                      .titleSmall15_1,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 14.h),
                                    child: Text(
                                      "msg_different_agent".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: 60.h,
                                      width: 64.h,
                                      decoration: AppDecoration.column39,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "lbl_7".tr,
                                            style: theme.textTheme.titleLarge,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomIconButton(
                            height: 28.h,
                            width: 28.h,
                            padding: EdgeInsets.all(6.h),
                            decoration: IconButtonStyleHelper.fillOnPrimary,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowUpOnprimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 14.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 80.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 34.h,
                              width: 36.h,
                              margin: EdgeInsets.only(right: 12.h),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage44,
                                    height: 34.h,
                                    width: 34.h,
                                    radius: BorderRadius.circular(16.h),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      width: 12.h,
                                      height: 10.h,
                                      alignment: Alignment.center,
                                      decoration: AppDecoration.fillAmber
                                          .copyWith(
                                            borderRadius:
                                                BorderRadiusStyle
                                                    .roundedBorder5,
                                          ),
                                      child: Text(
                                        "lbl_a1".tr,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles.arialOnPrimary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgPlus,
                              height: 16.h,
                              width: 38.h,
                              margin: EdgeInsets.only(right: 10.h),
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 24.h,
                                    width: 22.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage6,
                                          height: 22.h,
                                          width: 22.h,
                                          radius: BorderRadius.circular(10.h),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            width: 12.h,
                                            height: 10.h,
                                            alignment: Alignment.center,
                                            decoration: AppDecoration.red
                                                .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5,
                                                ),
                                            child: Text(
                                              "lbl_b1".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  CustomTextStyles
                                                      .arialOnPrimary,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 24.h,
                                    width: 22.h,
                                    margin: EdgeInsets.only(left: 12.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgImage22x22,
                                          height: 22.h,
                                          width: 22.h,
                                          radius: BorderRadius.circular(10.h),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            width: 12.h,
                                            height: 10.h,
                                            alignment: Alignment.center,
                                            decoration: AppDecoration.red
                                                .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5,
                                                ),
                                            child: Text(
                                              "lbl_b2".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  CustomTextStyles
                                                      .arialOnPrimary,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: 10.h,
                                      height: 10.h,
                                      alignment: Alignment.center,
                                      decoration: AppDecoration.green1.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5,
                                      ),
                                      child: Text(
                                        "lbl_c1".tr,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles.arialOnPrimary,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 34.h,
                                    width: 48.h,
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPlus,
                                          height: 22.h,
                                          width: 38.h,
                                          alignment: Alignment.topCenter,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgImage12x12,
                                          height: 12.h,
                                          width: 14.h,
                                          radius: BorderRadius.circular(6.h),
                                          alignment: Alignment.bottomLeft,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage1,
                                          height: 12.h,
                                          width: 14.h,
                                          radius: BorderRadius.circular(6.h),
                                        ),
                                        Container(
                                          width: 12.h,
                                          height: 10.h,
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.only(right: 8.h),
                                          decoration: AppDecoration.green1
                                              .copyWith(
                                                borderRadius:
                                                    BorderRadiusStyle
                                                        .roundedBorder5,
                                              ),
                                          child: Text(
                                            "lbl_c2".tr,
                                            textAlign: TextAlign.center,
                                            style:
                                                CustomTextStyles.arialOnPrimary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 40.h,
                                    width: 30.h,
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPlus,
                                          height: 28.h,
                                          width: 20.h,
                                          alignment: Alignment.topCenter,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage2,
                                          height: 12.h,
                                          width: 14.h,
                                          radius: BorderRadius.circular(6.h),
                                          alignment: Alignment.bottomLeft,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage3,
                                          height: 12.h,
                                          width: 14.h,
                                          radius: BorderRadius.circular(6.h),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 40.h,
                                    width: 30.h,
                                    margin: EdgeInsets.only(left: 4.h),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPlus,
                                          height: 28.h,
                                          width: 20.h,
                                          alignment: Alignment.topCenter,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage4,
                                          height: 12.h,
                                          width: 14.h,
                                          radius: BorderRadius.circular(6.h),
                                          alignment: Alignment.bottomLeft,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage5,
                                          height: 12.h,
                                          width: 14.h,
                                          radius: BorderRadius.circular(6.h),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                children: [
                                  Container(
                                    width: 10.h,
                                    height: 10.h,
                                    alignment: Alignment.center,
                                    decoration: AppDecoration.fillLightBlueA
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                    child: Text(
                                      "lbl_d1".tr,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.arialOnPrimary,
                                    ),
                                  ),
                                  Container(
                                    width: 10.h,
                                    height: 10.h,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(left: 8.h),
                                    decoration: AppDecoration.fillLightBlueA
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                    child: Text(
                                      "lbl_d2".tr,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.arialOnPrimary,
                                    ),
                                  ),
                                  Container(
                                    width: 10.h,
                                    height: 10.h,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(left: 8.h),
                                    decoration: AppDecoration.fillLightBlueA
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                    child: Text(
                                      "lbl_d3".tr,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.arialOnPrimary,
                                    ),
                                  ),
                                  Container(
                                    width: 10.h,
                                    height: 10.h,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(left: 8.h),
                                    decoration: AppDecoration.fillLightBlueA
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                    child: Text(
                                      "lbl_d4".tr,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.arialOnPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 54.h,
                                width: double.maxFinite,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        height: 40.h,
                                        width: 42.h,
                                        decoration: AppDecoration
                                            .gradientLightBlueToBlueA
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .roundedBorder20,
                                            ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "lbl_you".tr,
                                              style:
                                                  CustomTextStyles
                                                      .titleSmallBlack,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 24.h,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: SizedBox(
                                              height: 22.h,
                                              width: 24.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgClose,
                                                    height: 22.h,
                                                    width: 22.h,
                                                    radius:
                                                        BorderRadius.circular(
                                                          1.h,
                                                        ),
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .imgPolygon53,
                                                    height: 4.h,
                                                    width: 7.h,
                                                    alignment:
                                                        Alignment.topRight,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: SizedBox(
                                              height: 22.h,
                                              width: 24.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgUpload,
                                                    height: 22.h,
                                                    width: 22.h,
                                                    radius:
                                                        BorderRadius.circular(
                                                          1.h,
                                                        ),
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .imgPolygon54,
                                                    height: 4.h,
                                                    width: 7.h,
                                                    alignment:
                                                        Alignment.topLeft,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 24.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 6.h,
                                                        ),
                                                    decoration: AppDecoration
                                                        .fillAmber70001
                                                        .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder1,
                                                        ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "msg_master_agent_iii"
                                                              .tr,
                                                          style:
                                                              CustomTextStyles
                                                                  .labelLargeOnPrimary_6,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 24.h,
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment
                                                                .centerLeft,
                                                        child: SizedBox(
                                                          height: 22.h,
                                                          width: 24.h,
                                                          child: Stack(
                                                            alignment:
                                                                Alignment
                                                                    .center,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgClose,
                                                                height: 22.h,
                                                                width: 22.h,
                                                                radius:
                                                                    BorderRadius.circular(
                                                                      1.h,
                                                                    ),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPolygon53,
                                                                height: 4.h,
                                                                width: 7.h,
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment
                                                                .centerRight,
                                                        child: SizedBox(
                                                          height: 22.h,
                                                          width: 24.h,
                                                          child: Stack(
                                                            alignment:
                                                                Alignment
                                                                    .center,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgUpload,
                                                                height: 22.h,
                                                                width: 22.h,
                                                                radius:
                                                                    BorderRadius.circular(
                                                                      1.h,
                                                                    ),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPolygon54,
                                                                height: 4.h,
                                                                width: 7.h,
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:
                                                            EdgeInsets.symmetric(
                                                              horizontal: 6.h,
                                                              vertical: 2.h,
                                                            ),
                                                        decoration: AppDecoration
                                                            .fillAmber70001
                                                            .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder1,
                                                            ),
                                                        child: Text(
                                                          "msg_master_agent_iii"
                                                              .tr,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style:
                                                              CustomTextStyles
                                                                  .labelLargeOnPrimary_6,
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
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.h,
                                    color: theme.colorScheme.onPrimary,
                                  ),
                                  VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.h,
                                    color: theme.colorScheme.onPrimary,
                                  ),
                                ],
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                "lbl_level_12".tr,
                                style: CustomTextStyles.labelMediumAmberA400,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_you_get".tr,
                                      style:
                                          CustomTextStyles
                                              .labelMediumBluegray400,
                                    ),
                                    TextSpan(
                                      text: "msg_0_4_form_level".tr,
                                      style:
                                          CustomTextStyles.labelMediumRed40001,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 14.h),
                              Text(
                                "lbl_level_22".tr,
                                style: CustomTextStyles.labelMediumAmberA400,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_you_get".tr,
                                      style:
                                          CustomTextStyles
                                              .labelMediumBluegray400,
                                    ),
                                    TextSpan(
                                      text: "msg_0_3_form_level".tr,
                                      style:
                                          CustomTextStyles.labelMediumRed40001,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "lbl_level_32".tr,
                                style: CustomTextStyles.labelMediumAmberA400,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_you_get".tr,
                                      style:
                                          CustomTextStyles
                                              .labelMediumBluegray400,
                                    ),
                                    TextSpan(
                                      text: "msg_0_2_form_level".tr,
                                      style:
                                          CustomTextStyles.labelMediumRed40001,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                "lbl_level_42".tr,
                                style: CustomTextStyles.labelMediumAmberA400,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_you_get".tr,
                                      style:
                                          CustomTextStyles
                                              .labelMediumBluegray400,
                                    ),
                                    TextSpan(
                                      text: "msg_0_1_form_level".tr,
                                      style:
                                          CustomTextStyles.labelMediumRed40001,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80.h,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 34.h,
                                width: 36.h,
                                margin: EdgeInsets.only(left: 12.h),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage37,
                                      height: 34.h,
                                      width: 34.h,
                                      radius: BorderRadius.circular(16.h),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                        width: 12.h,
                                        height: 10.h,
                                        alignment: Alignment.center,
                                        decoration: AppDecoration.fillAmber
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .roundedBorder5,
                                            ),
                                        child: Text(
                                          "lbl_a2".tr,
                                          textAlign: TextAlign.center,
                                          style:
                                              CustomTextStyles.arialOnPrimary,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgPlus,
                              height: 16.h,
                              width: 38.h,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 12.h),
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 24.h,
                                    width: 22.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage7,
                                          height: 22.h,
                                          width: 22.h,
                                          radius: BorderRadius.circular(10.h),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            width: 12.h,
                                            height: 10.h,
                                            alignment: Alignment.center,
                                            decoration: AppDecoration.red
                                                .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5,
                                                ),
                                            child: Text(
                                              "lbl_b3".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  CustomTextStyles
                                                      .arialOnPrimary,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 24.h,
                                    width: 22.h,
                                    margin: EdgeInsets.only(left: 12.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage8,
                                          height: 22.h,
                                          width: 22.h,
                                          radius: BorderRadius.circular(10.h),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            width: 12.h,
                                            height: 10.h,
                                            alignment: Alignment.center,
                                            decoration: AppDecoration.red
                                                .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5,
                                                ),
                                            child: Text(
                                              "lbl_b4".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  CustomTextStyles
                                                      .arialOnPrimary,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.maxFinite,
                              margin: EdgeInsets.symmetric(horizontal: 8.h),
                              child: Row(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: 10.h,
                                      height: 10.h,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(left: 8.h),
                                      decoration: AppDecoration.green1.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5,
                                      ),
                                      child: Text(
                                        "lbl_c1".tr,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles.arialOnPrimary,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 34.h,
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgPlus,
                                            height: 22.h,
                                            width: 38.h,
                                            alignment: Alignment.topCenter,
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgImage9,
                                            height: 12.h,
                                            width: 14.h,
                                            radius: BorderRadius.circular(6.h),
                                            alignment: Alignment.bottomLeft,
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgImage10,
                                            height: 12.h,
                                            width: 14.h,
                                            radius: BorderRadius.circular(6.h),
                                          ),
                                          Container(
                                            width: 12.h,
                                            height: 10.h,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(right: 8.h),
                                            decoration: AppDecoration.green1
                                                .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5,
                                                ),
                                            child: Text(
                                              "lbl_c2".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  CustomTextStyles
                                                      .arialOnPrimary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 40.h,
                                    width: 30.h,
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPlus,
                                          height: 28.h,
                                          width: 20.h,
                                          alignment: Alignment.topCenter,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage11,
                                          height: 12.h,
                                          width: 14.h,
                                          radius: BorderRadius.circular(6.h),
                                          alignment: Alignment.bottomLeft,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage12,
                                          height: 12.h,
                                          width: 14.h,
                                          radius: BorderRadius.circular(6.h),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 40.h,
                                    width: 30.h,
                                    margin: EdgeInsets.only(left: 4.h),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPlus,
                                          height: 28.h,
                                          width: 20.h,
                                          alignment: Alignment.topCenter,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage13,
                                          height: 12.h,
                                          width: 14.h,
                                          radius: BorderRadius.circular(6.h),
                                          alignment: Alignment.bottomLeft,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage14,
                                          height: 12.h,
                                          width: 14.h,
                                          radius: BorderRadius.circular(6.h),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 10.h,
                                    height: 10.h,
                                    alignment: Alignment.center,
                                    decoration: AppDecoration.fillLightBlueA
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                    child: Text(
                                      "lbl_d5".tr,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.arialOnPrimary,
                                    ),
                                  ),
                                  Container(
                                    width: 10.h,
                                    height: 10.h,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(left: 8.h),
                                    decoration: AppDecoration.fillLightBlueA
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                    child: Text(
                                      "lbl_d6".tr,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.arialOnPrimary,
                                    ),
                                  ),
                                  Container(
                                    width: 10.h,
                                    height: 10.h,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(left: 8.h),
                                    decoration: AppDecoration.fillLightBlueA
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                    child: Text(
                                      "lbl_d7".tr,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.arialOnPrimary,
                                    ),
                                  ),
                                  Container(
                                    width: 10.h,
                                    height: 10.h,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(left: 8.h),
                                    decoration: AppDecoration.fillLightBlueA
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                    child: Text(
                                      "lbl_d8".tr,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.arialOnPrimary,
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
              ],
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(
            width: 310.h,
            child: Text(
              "msg_different_agent2".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(height: 1.33),
            ),
          ),
          SizedBox(height: 38.h),
          Text("msg_how_much_is_the".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 20.h),
          _buildSlots(context),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            child: BlocSelector<
              ReferralNotLoggedInBloc,
              ReferralNotLoggedInState,
              ReferralNotLoggedInModel?
            >(
              selector: (state) => state.referralNotLoggedInModelObj,
              builder: (context, referralNotLoggedInModelObj) {
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:
                      referralNotLoggedInModelObj?.listjuniorItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    ListjuniorItemModel model =
                        referralNotLoggedInModelObj
                            ?.listjuniorItemList[index] ??
                        ListjuniorItemModel();
                    return ListjuniorItemWidget(model);
                  },
                );
              },
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14.h),
            padding: EdgeInsets.only(right: 84.h),
            decoration: AppDecoration.outlineOnPrimary6.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL10,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup2131329296,
                  height: 32.h,
                  width: 32.h,
                  margin: EdgeInsets.only(top: 2.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h, bottom: 6.h),
                  child: Text(
                    "lbl_live_casino".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            child: BlocSelector<
              ReferralNotLoggedInBloc,
              ReferralNotLoggedInState,
              ReferralNotLoggedInModel?
            >(
              selector: (state) => state.referralNotLoggedInModelObj,
              builder: (context, referralNotLoggedInModelObj) {
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:
                      referralNotLoggedInModelObj?.listItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ListItemModel model =
                        referralNotLoggedInModelObj?.listItemList[index] ??
                        ListItemModel();
                    return ListItemWidget(model);
                  },
                );
              },
            ),
          ),
          SizedBox(height: 20.h),
          _buildBingo(context),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            child: BlocSelector<
              ReferralNotLoggedInBloc,
              ReferralNotLoggedInState,
              ReferralNotLoggedInModel?
            >(
              selector: (state) => state.referralNotLoggedInModelObj,
              builder: (context, referralNotLoggedInModelObj) {
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:
                      referralNotLoggedInModelObj?.listOneItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ListOneItemModel model =
                        referralNotLoggedInModelObj?.listOneItemList[index] ??
                        ListOneItemModel();
                    return ListOneItemWidget(model);
                  },
                );
              },
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14.h),
            padding: EdgeInsets.symmetric(vertical: 4.h),
            decoration: AppDecoration.outlineOnPrimary6.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL10,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSubtract22x24,
                  height: 22.h,
                  width: 24.h,
                  margin: EdgeInsets.only(top: 4.h),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.h),
                  child: Text("lbl_fish".tr, style: theme.textTheme.titleSmall),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            child: BlocSelector<
              ReferralNotLoggedInBloc,
              ReferralNotLoggedInState,
              ReferralNotLoggedInModel?
            >(
              selector: (state) => state.referralNotLoggedInModelObj,
              builder: (context, referralNotLoggedInModelObj) {
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:
                      referralNotLoggedInModelObj?.listTwoItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ListTwoItemModel model =
                        referralNotLoggedInModelObj?.listTwoItemList[index] ??
                        ListTwoItemModel();
                    return ListTwoItemWidget(model);
                  },
                );
              },
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInvite(BuildContext context) {
    return CustomElevatedButton(
      height: 44.h,
      text: "lbl_invite".tr,
      margin: EdgeInsets.only(bottom: 12.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 6.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFrame,
          height: 20.h,
          width: 20.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientLightGreenAToLightGreenTL22Decoration,
    );
  }

  /// Section Widget
  Widget _buildColumninvite(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_buildInvite(context)],
      ),
    );
  }

  /// Common widget
  Widget _buildRowmasteragent(
    BuildContext context, {
    required String masteragentTwo,
    required String priceEighteen,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          masteragentTwo,
          style: CustomTextStyles.bodyMediumBluegray400.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 54.h),
          child: Text(
            priceEighteen,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.amberA400,
            ),
          ),
        ),
      ],
    );
  }
}
