import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/leaderboard_rules_bloc.dart';
import 'models/leaderboard_rules_model.dart'; // ignore_for_file: must_be_immutable

class LeaderboardRulesBottomsheet extends StatelessWidget {
  const LeaderboardRulesBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LeaderboardRulesBloc>(
      create:
          (context) => LeaderboardRulesBloc(
            LeaderboardRulesState(
              leaderboardRulesModelObj: LeaderboardRulesModel(),
            ),
          )..add(LeaderboardRulesInitialEvent()),
      child: LeaderboardRulesBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 18.h),
      decoration: AppDecoration.fillOnPrimary1.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  spacing: 14,
                  children: [
                    _buildRowrule(context),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(color: appTheme.indigo50),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "msg_agent_ranking_bonus2".tr,
                              style: CustomTextStyles.titleSmallGray90032,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          _buildRowrank(context),
                          SizedBox(height: 16.h),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "msg_terms_and_conditions".tr,
                              style: CustomTextStyles.titleSmallGray90032,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "msg_only_directly_invited2".tr,
                              maxLines: 11,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumBluegray90025,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "lbl_qualifed_users".tr,
                            style: CustomTextStyles.titleSmallGray90032,
                          ),
                          SizedBox(height: 2.h),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_the_minimum_deposit2".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray90025_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_2003".tr,
                                    style: CustomTextStyles.bodyMediumYellow900,
                                  ),
                                  TextSpan(
                                    text: "msg_and_the_effective".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray90025_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_10003".tr,
                                    style: CustomTextStyles.bodyMediumYellow900,
                                  ),
                                  TextSpan(
                                    text: "msg_the_invitees_need".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray90025_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_remark2".tr,
                                    style:
                                        CustomTextStyles
                                            .titleSmallBluegray90025,
                                  ),
                                  TextSpan(
                                    text: "msg_once_the_number2".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray90025_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_510".tr,
                                    style: CustomTextStyles.bodyMediumYellow900,
                                  ),
                                  TextSpan(
                                    text: "msg_subsequent_users".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray90025_1,
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
              ),
            ),
          ),
          SizedBox(height: 12.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowrule(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.h, right: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("lbl_rule".tr, style: CustomTextStyles.titleLargeBlack900),
          CustomIconButton(
            height: 28.h,
            width: 28.h,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillBlueGrayTL6,
            child: CustomImageView(
              imagePath: ImageConstant.imgCloseBlueGray10001,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRank(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_rank".tr,
      buttonStyle: CustomButtonStyles.outlineIndigo,
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimary13,
    );
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_4".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildFive(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_52".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_6".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_7".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_82".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_92".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_10".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildForty(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_11_40".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildSixty(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_40_60".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildSixtyThousandOneHundred(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_60_100".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_25".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_32".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildFive1(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_55".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildSix1(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_62".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_62".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildOne1(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_25".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildTwo1(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_62".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildOne2(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_32".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildOne3(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_55".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildThree1(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_62".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildFour1(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_62".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildFive2(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_62".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildSix2(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_62".tr,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildRowrank(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      child: Row(
        children: [
          SizedBox(
            width: 64.h,
            child: Column(
              children: [
                _buildRank(context),
                Container(
                  height: 36.h,
                  width: double.maxFinite,
                  decoration: AppDecoration.outlineIndigo,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img36x36,
                        height: 26.h,
                        width: 28.h,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 36.h,
                  width: double.maxFinite,
                  decoration: AppDecoration.outlineIndigo,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img36x36,
                        height: 26.h,
                        width: 28.h,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 36.h,
                  width: double.maxFinite,
                  decoration: AppDecoration.outlineIndigo,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img36x36,
                        height: 26.h,
                        width: 28.h,
                      ),
                    ],
                  ),
                ),
                _buildFour(context),
                _buildFive(context),
                _buildSix(context),
                _buildSeven(context),
                _buildEight(context),
                _buildNine(context),
                _buildTen(context),
                _buildForty(context),
                _buildSixty(context),
                _buildSixtyThousandOneHundred(context),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  decoration: AppDecoration.outlineIndigo50,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "lbl_bonus3".tr,
                        style: CustomTextStyles.bodyMediumOnPrimary13,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      _buildTwo(context),
                      _buildThree(context),
                      _buildFive1(context),
                      _buildSix1(context),
                      _buildOne(context),
                      _buildOne1(context),
                      _buildTwo1(context),
                      _buildOne2(context),
                      _buildOne3(context),
                      _buildThree1(context),
                      _buildFour1(context),
                      _buildFive2(context),
                      _buildSix2(context),
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
}
