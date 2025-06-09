import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/referral_share_rules_bloc.dart';
import 'models/expandablelisto_item_model.dart';
import 'models/referral_share_rules_model.dart';
import 'widgets/expandablelisto_item_widget.dart'; // ignore_for_file: must_be_immutable

class ReferralShareRulesPage extends StatelessWidget {
  const ReferralShareRulesPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReferralShareRulesBloc>(
      create:
          (context) => ReferralShareRulesBloc(
            ReferralShareRulesState(
              referralShareRulesModelObj: ReferralShareRulesModel(),
            ),
          )..add(ReferralShareRulesInitialEvent()),
      child: ReferralShareRulesPage(),
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
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 78.h),
                  _buildColumnlinefive(context),
                  SizedBox(height: 14.h),
                  _buildRowlineone(context),
                  SizedBox(height: 4.h),
                  _buildColumnviewsix(context),
                  SizedBox(height: 18.h),
                  _buildRowlinetwo(context),
                  SizedBox(height: 6.h),
                  _buildColumndescripti(context),
                  SizedBox(height: 12.h),
                  _buildRowlinethree(context),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "msg_jilitaka_new_referral".tr,
                      style: CustomTextStyles.bodyLargeAmberA400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "msg_enjoy_7_super_commissions".tr,
                      style: CustomTextStyles.bodyLargeBluegray400,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  _buildStackdescriptio(context),
                  SizedBox(height: 108.h),
                  _buildInvitethree(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnlinefive(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 6,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VerticalDivider(
                  width: 5.h,
                  thickness: 5.h,
                  color: appTheme.lightGreenA700,
                ),
                Container(
                  width: 308.h,
                  margin: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "msg_what_is_the_agent".tr.toUpperCase(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleLargeBlack.copyWith(
                      height: 1.10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(12.h),
            decoration: AppDecoration.fs4bg.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "msg_agent_tiers_are".tr,
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                    height: 1.14,
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlineone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      child: Row(
        children: [
          VerticalDivider(
            width: 5.h,
            thickness: 5.h,
            color: appTheme.lightGreenA700,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "msg_what_is_you_team".tr.toUpperCase(),
              style: CustomTextStyles.titleLarge20,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnviewsix(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 18.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 46.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 52.h,
                  width: 58.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1112,
                        height: 52.h,
                        width: double.maxFinite,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 36.h,
                          width: 28.h,
                          margin: EdgeInsets.only(bottom: 2.h),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 26.h,
                                  width: 26.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.h),
                                    gradient: LinearGradient(
                                      begin: Alignment(0.21, 0.08),
                                      end: Alignment(0.74, 0.93),
                                      colors: [
                                        appTheme.pink90001,
                                        appTheme.purple300,
                                        appTheme.purpleA100,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 14.h,
                                margin: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl_a1".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleSmallYellow10003,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 70.h,
                      margin: EdgeInsets.only(bottom: 46.h),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage1111,
                            height: 70.h,
                            width: double.maxFinite,
                          ),
                          Container(
                            width: 38.h,
                            height: 36.h,
                            alignment: Alignment.center,
                            decoration: AppDecoration.gradientDeepPurpleToPurple
                                .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                ),
                            child: Text(
                              "lbl_you".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleSmallBlue50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 52.h,
                  width: 58.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1112,
                        height: 52.h,
                        width: double.maxFinite,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 2.h),
                        decoration: AppDecoration.gradientPinkToPurpleA
                            .copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder14,
                            ),
                        child: Text(
                          "lbl_a2".tr,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallYellow10003,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 38.h,
                  width: 44.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1113,
                        height: 38.h,
                        width: double.maxFinite,
                      ),
                      Container(
                        width: 24.h,
                        height: 22.h,
                        alignment: Alignment.center,
                        decoration: AppDecoration.gradientRedToPink.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder10,
                        ),
                        child: Text(
                          "lbl_b1".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallGray5001,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 38.h,
                  width: 44.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1113,
                        height: 38.h,
                        width: double.maxFinite,
                      ),
                      Container(
                        width: 24.h,
                        height: 22.h,
                        alignment: Alignment.center,
                        decoration: AppDecoration.gradientRedToPink.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder10,
                        ),
                        child: Text(
                          "lbl_b2".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallGray5001,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 38.h,
                  width: 44.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1113,
                        height: 38.h,
                        width: double.maxFinite,
                      ),
                      Container(
                        width: 24.h,
                        height: 22.h,
                        alignment: Alignment.center,
                        decoration: AppDecoration.gradientRedToPink.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder10,
                        ),
                        child: Text(
                          "lbl_b3".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallGray5001,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 38.h,
                  width: 44.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1113,
                        height: 38.h,
                        width: double.maxFinite,
                      ),
                      Container(
                        width: 24.h,
                        height: 22.h,
                        alignment: Alignment.center,
                        decoration: AppDecoration.gradientRedToPink.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder10,
                        ),
                        child: Text(
                          "lbl_b4".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallGray5001,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 32.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1114,
                          height: 32.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 20.h,
                          height: 18.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientBlueToLightBlue
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_c1".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 32.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1114,
                          height: 32.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 20.h,
                          height: 18.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientBlueToLightBlue
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_c2".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 32.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1114,
                          height: 32.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 20.h,
                          height: 18.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientBlueToLightBlue
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_c3".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 32.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1114,
                          height: 32.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 20.h,
                          height: 18.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientBlueToLightBlue
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_c4".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 32.h,
                    margin: EdgeInsets.only(left: 6.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1114,
                          height: 32.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 20.h,
                          height: 18.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientBlueToLightBlue
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_c5".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 32.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1114,
                          height: 32.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 20.h,
                          height: 18.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientBlueToLightBlue
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_c6".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 32.h,
                    margin: EdgeInsets.only(left: 2.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1114,
                          height: 32.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 20.h,
                          height: 18.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientBlueToLightBlue
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_c7".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 32.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1114,
                          height: 32.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 20.h,
                          height: 18.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientBlueToLightBlue
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_c8".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 4.h),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 26.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1122,
                          height: 26.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 18.h,
                          height: 16.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientGrayToGreenA
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_d1".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 26.h,
                    margin: EdgeInsets.only(left: 12.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1122,
                          height: 26.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 18.h,
                          height: 16.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientGrayToGreenA
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_d2".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 26.h,
                    margin: EdgeInsets.only(left: 12.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1122,
                          height: 26.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 18.h,
                          height: 16.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientGrayToGreenA
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_d3".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 26.h,
                    margin: EdgeInsets.only(left: 8.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1122,
                          height: 26.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 18.h,
                          height: 16.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientGrayToGreenA
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_d4".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 26.h,
                    margin: EdgeInsets.only(left: 16.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1122,
                          height: 26.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 18.h,
                          height: 16.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientGrayToGreenA
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_d5".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 26.h,
                    margin: EdgeInsets.only(left: 8.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1122,
                          height: 26.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 18.h,
                          height: 16.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientGrayToGreenA
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_d6".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 26.h,
                    margin: EdgeInsets.only(left: 14.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1122,
                          height: 26.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 18.h,
                          height: 16.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientGrayToGreenA
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_d7".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 26.h,
                    margin: EdgeInsets.only(left: 8.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1122,
                          height: 26.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          width: 18.h,
                          height: 16.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.gradientGrayToGreenA
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Text(
                            "lbl_d8".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumDeeporange100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 4.h),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowbyoubisyour(
                    context,
                    byoubisyourOne: "msg_a_you_a_is_your".tr,
                    level2teamsOne: "msg_level_1_teams_directly".tr,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowbyoubisyour(
                    context,
                    byoubisyourOne: "msg_b_you_b_is_your".tr,
                    level2teamsOne: "lbl_level_2_teams".tr,
                  ),
                ),
                SizedBox(height: 14.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowbyoubisyour(
                    context,
                    byoubisyourOne: "msg_c_you_c_is_your".tr,
                    level2teamsOne: "lbl_level_3_teams".tr,
                  ),
                ),
                SizedBox(height: 14.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowbyoubisyour(
                    context,
                    byoubisyourOne: "msg_d_you_d_is_your".tr,
                    level2teamsOne: "lbl_level_4_teams".tr,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "msg_team_count_level".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(height: 1.17),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlinetwo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      child: Row(
        children: [
          VerticalDivider(
            width: 5.h,
            thickness: 5.h,
            color: appTheme.lightGreenA700,
          ),
          Container(
            width: 250.h,
            margin: EdgeInsets.only(left: 10.h),
            child: Text(
              "msg_how_to_improve_the".tr.toUpperCase(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleLargeBlack.copyWith(height: 1.10),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        height: 42.h,
        text: "lbl14".tr,
        buttonStyle: CustomButtonStyles.outlineOnPrimaryTL61,
        buttonTextStyle: CustomTextStyles.bodySmallOnPrimary_3,
      ),
    );
  }

  /// Section Widget
  Widget _buildFramefive(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        ReferralShareRulesBloc,
        ReferralShareRulesState,
        TextEditingController?
      >(
        selector: (state) => state.framefiveController,
        builder: (context, framefiveController) {
          return CustomTextFormField(
            controller: framefiveController,
            hintText: "msg_deposit_requirements".tr,
            hintStyle: CustomTextStyles.bodySmallOnPrimary_3,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 6.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryLR8,
            fillColor: appTheme.blueGray90027,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNorequirements(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        ReferralShareRulesBloc,
        ReferralShareRulesState,
        TextEditingController?
      >(
        selector: (state) => state.norequirementsController,
        builder: (context, norequirementsController) {
          return CustomTextFormField(
            controller: norequirementsController,
            hintText: "lbl_no_requirements".tr,
            hintStyle: CustomTextStyles.bodySmallAmberA400,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 6.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary1,
            fillColor: appTheme.gray80010,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        height: 42.h,
        text: "lbl_302".tr,
        buttonStyle: CustomButtonStyles.outlineOnPrimary1,
        buttonTextStyle: CustomTextStyles.bodySmallAmberA400,
      ),
    );
  }

  /// Section Widget
  Widget _buildTenthousand(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        height: 42.h,
        text: "lbl_100002".tr,
        buttonStyle: CustomButtonStyles.outlineOnPrimary1,
        buttonTextStyle: CustomTextStyles.bodySmallAmberA400,
      ),
    );
  }

  /// Section Widget
  Widget _buildNorequirements1(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        ReferralShareRulesBloc,
        ReferralShareRulesState,
        TextEditingController?
      >(
        selector: (state) => state.norequirements1Controller,
        builder: (context, norequirements1Controller) {
          return CustomTextFormField(
            controller: norequirements1Controller,
            hintText: "lbl_no_requirements".tr,
            hintStyle: CustomTextStyles.bodySmallAmberA400,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 6.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary2,
            fillColor: appTheme.blueGray90027,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFifty(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        height: 42.h,
        text: "lbl_50".tr,
        buttonStyle: CustomButtonStyles.outlineOnPrimary2,
        buttonTextStyle: CustomTextStyles.bodySmallAmberA400,
      ),
    );
  }

  /// Section Widget
  Widget _buildTenthousandone(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        height: 42.h,
        text: "lbl_100002".tr,
        buttonStyle: CustomButtonStyles.outlineOnPrimary2,
        buttonTextStyle: CustomTextStyles.bodySmallAmberA400,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameone(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        ReferralShareRulesBloc,
        ReferralShareRulesState,
        TextEditingController?
      >(
        selector: (state) => state.frameoneController,
        builder: (context, frameoneController) {
          return CustomTextFormField(
            controller: frameoneController,
            hintText: "lbl_444".tr,
            hintStyle: CustomTextStyles.bodySmallAmberA400,
            contentPadding: EdgeInsets.all(12.h),
            borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary1,
            fillColor: appTheme.gray80010,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEighty(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        height: 42.h,
        text: "lbl_80".tr,
        buttonStyle: CustomButtonStyles.outlineOnPrimary1,
        buttonTextStyle: CustomTextStyles.bodySmallAmberA400,
      ),
    );
  }

  /// Section Widget
  Widget _buildTenthousandtwo(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        height: 42.h,
        text: "lbl_100002".tr,
        buttonStyle: CustomButtonStyles.outlineOnPrimary1,
        buttonTextStyle: CustomTextStyles.bodySmallAmberA400,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrametwo(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        ReferralShareRulesBloc,
        ReferralShareRulesState,
        TextEditingController?
      >(
        selector: (state) => state.frametwoController,
        builder: (context, frametwoController) {
          return CustomTextFormField(
            controller: frametwoController,
            hintText: "lbl_444".tr,
            hintStyle: CustomTextStyles.bodySmallAmberA400,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.all(12.h),
            borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryBR8,
            fillColor: appTheme.blueGray90027,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildColumndescripti(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 6.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 24.h),
          SizedBox(
            height: 218.h,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 12.h),
                  child: Column(
                    spacing: 44,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            Container(
                              height: 44.h,
                              width: 106.h,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray90026,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 44.h,
                                width: 212.h,
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray90026,
                                ),
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
                              height: 44.h,
                              width: 106.h,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray90026,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 44.h,
                                width: 212.h,
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray90026,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            _buildTen(context),
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.h,
                                  vertical: 4.h,
                                ),
                                decoration: AppDecoration.outlineOnPrimary10,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "msg_team_count_requirements".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodySmallOnPrimary_3
                                          .copyWith(height: 1.17),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(vertical: 4.h),
                                decoration: AppDecoration.outlineOnPrimary10,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "msg_betting_requirements".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodySmallOnPrimary_3
                                          .copyWith(height: 1.17),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            _buildFramefive(context),
                          ],
                        ),
                      ),
                      Container(
                        decoration: AppDecoration.fillGray80010,
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.only(top: 4.h, bottom: 2.h),
                                decoration: AppDecoration.outlineOnPrimary11,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "lbl_junior_agent_i2".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall!
                                          .copyWith(height: 1.33),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.only(top: 4.h, bottom: 2.h),
                                decoration: AppDecoration.outlineOnPrimary11,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "msg_no_requirements".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmallAmberA400
                                          .copyWith(height: 1.33),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.only(top: 4.h, bottom: 2.h),
                                decoration: AppDecoration.outlineOnPrimary11,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "msg_no_requirements".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmallAmberA400
                                          .copyWith(height: 1.33),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            _buildNorequirements(context),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            Container(
                              decoration: AppDecoration.fillBluegray90027,
                              width: double.maxFinite,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.maxFinite,
                                      padding: EdgeInsets.fromLTRB(
                                        4.h,
                                        4.h,
                                        4.h,
                                        2.h,
                                      ),
                                      decoration:
                                          AppDecoration.outlineOnPrimary11,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "msg_intermediate_agent".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(height: 1.33),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  _buildThirty(context),
                                  _buildTenthousand(context),
                                  _buildNorequirements1(context),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.maxFinite,
                                      padding: EdgeInsets.only(
                                        top: 4.h,
                                        bottom: 2.h,
                                      ),
                                      decoration: AppDecoration.outlineIndigoA,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "lbl_senior_agent_i2".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(height: 1.33),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  _buildFifty(context),
                                  _buildTenthousandone(context),
                                  _buildFrameone(context),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.maxFinite,
                                      padding: EdgeInsets.only(
                                        top: 4.h,
                                        bottom: 2.h,
                                      ),
                                      decoration:
                                          AppDecoration.outlineOnPrimary10,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "lbl_master_agent_i2".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(height: 1.33),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  _buildEighty(context),
                                  _buildTenthousandtwo(context),
                                  _buildFrametwo(context),
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
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_team_count2".tr,
                  style: CustomTextStyles.labelLargeOnPrimary_4,
                ),
                TextSpan(
                  text: "msg_level_1_level_2".tr,
                  style: theme.textTheme.bodySmall,
                ),
                TextSpan(
                  text: "msg_betting_requirements2".tr,
                  style: CustomTextStyles.labelLargeOnPrimary_4,
                ),
                TextSpan(text: " "),
                TextSpan(
                  text: "msg_level_1_level_22".tr,
                  style: theme.textTheme.bodySmall,
                ),
                TextSpan(
                  text: "msg_deposit_requirements2".tr,
                  style: CustomTextStyles.labelLargeOnPrimary_4,
                ),
                TextSpan(
                  text: "msg_level_1_level_23".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
            textAlign: TextAlign.left,
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlinethree(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalDivider(
            width: 5.h,
            thickness: 5.h,
            color: appTheme.lightGreenA700,
            indent: 6.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "msg_agent_7_major_income".tr.toUpperCase(),
                style: CustomTextStyles.titleLargeBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackdescriptio(BuildContext context) {
    return SizedBox(
      height: 1008.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_all_agents_enjoy2".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "msg_registration_bonus3".tr,
                      style: CustomTextStyles.bodySmallAmberA400_1,
                    ),
                    TextSpan(
                      text: "msg_they_can_all_participate".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "msg_achievement_rewards3".tr,
                      style: CustomTextStyles.bodySmallAmberA400_1,
                    ),
                    TextSpan(
                      text: "lbl15".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 426.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_the_main_difference3".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "msg_qualified_bonus4".tr,
                      style: CustomTextStyles.bodySmallAmberA400_1,
                    ),
                    TextSpan(
                      text: "lbl15".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 18.h, bottom: 382.h),
              child: Text(
                "lbl_fqa".tr.toUpperCase(),
                style: CustomTextStyles.titleLargeBlack,
              ),
            ),
          ),
          BlocSelector<
            ReferralShareRulesBloc,
            ReferralShareRulesState,
            ReferralShareRulesModel?
          >(
            selector: (state) => state.referralShareRulesModelObj,
            builder: (context, referralShareRulesModelObj) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount:
                    referralShareRulesModelObj
                        ?.expandablelistoItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  ExpandablelistoItemModel model =
                      referralShareRulesModelObj
                          ?.expandablelistoItemList[index] ??
                      ExpandablelistoItemModel();
                  return ExpandablelistoItemWidget(model);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInvitethree(BuildContext context) {
    return CustomElevatedButton(
      height: 44.h,
      text: "lbl_invite".tr,
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

  /// Common widget
  Widget _buildRowbyoubisyour(
    BuildContext context, {
    required String byoubisyourOne,
    required String level2teamsOne,
  }) {
    return Row(
      children: [
        Text(
          byoubisyourOne,
          style: CustomTextStyles.labelLargeAmberA400_2.copyWith(
            color: appTheme.amberA400,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            level2teamsOne,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.blueGray400,
            ),
          ),
        ),
      ],
    );
  }
}
