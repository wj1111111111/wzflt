import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/team_members_popup_bloc.dart';
import 'models/team_members_popup_model.dart'; // ignore_for_file: must_be_immutable

class TeamMembersPopupDialog extends StatelessWidget {
  const TeamMembersPopupDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TeamMembersPopupBloc>(
      create:
          (context) => TeamMembersPopupBloc(
            TeamMembersPopupState(
              teamMembersPopupModelObj: TeamMembersPopupModel(),
            ),
          )..add(TeamMembersPopupInitialEvent()),
      child: TeamMembersPopupDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          decoration: AppDecoration.fs4bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20.h),
              Text("lbl_description".tr, style: theme.textTheme.titleMedium),
              SizedBox(height: 6.h),
              Container(
                height: 426.h,
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 384.h,
                        width: 324.h,
                        decoration: BoxDecoration(
                          color: appTheme.blueGray90004,
                          borderRadius: BorderRadius.circular(5.h),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          12.h,
                                                        ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment(
                                                        0.21,
                                                        0.08,
                                                      ),
                                                      end: Alignment(
                                                        0.74,
                                                        0.93,
                                                      ),
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
                                                margin: EdgeInsets.only(
                                                  left: 2.h,
                                                ),
                                                child: Text(
                                                  "lbl_a1".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style:
                                                      CustomTextStyles
                                                          .titleSmallYellow10003,
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
                                            imagePath:
                                                ImageConstant.imgImage1111,
                                            height: 70.h,
                                            width: double.maxFinite,
                                          ),
                                          Container(
                                            width: 38.h,
                                            height: 36.h,
                                            alignment: Alignment.center,
                                            decoration: AppDecoration
                                                .gradientDeepPurpleToPurple
                                                .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder20,
                                                ),
                                            child: Text(
                                              "lbl_you".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  CustomTextStyles
                                                      .titleSmallBlue50,
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
                                        padding: EdgeInsets.symmetric(
                                          vertical: 2.h,
                                        ),
                                        decoration: AppDecoration
                                            .gradientPinkToPurpleA
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .circleBorder14,
                                            ),
                                        child: Text(
                                          "lbl_a2".tr,
                                          textAlign: TextAlign.left,
                                          style:
                                              CustomTextStyles
                                                  .titleSmallYellow10003,
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
                                        decoration: AppDecoration
                                            .gradientRedToPink
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .circleBorder10,
                                            ),
                                        child: Text(
                                          "lbl_b1".tr,
                                          textAlign: TextAlign.center,
                                          style:
                                              CustomTextStyles
                                                  .titleSmallGray5001,
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
                                        decoration: AppDecoration
                                            .gradientRedToPink
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .circleBorder10,
                                            ),
                                        child: Text(
                                          "lbl_b2".tr,
                                          textAlign: TextAlign.center,
                                          style:
                                              CustomTextStyles
                                                  .titleSmallGray5001,
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
                                        decoration: AppDecoration
                                            .gradientRedToPink
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .circleBorder10,
                                            ),
                                        child: Text(
                                          "lbl_b3".tr,
                                          textAlign: TextAlign.center,
                                          style:
                                              CustomTextStyles
                                                  .titleSmallGray5001,
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
                                        decoration: AppDecoration
                                            .gradientRedToPink
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .circleBorder10,
                                            ),
                                        child: Text(
                                          "lbl_b4".tr,
                                          textAlign: TextAlign.center,
                                          style:
                                              CustomTextStyles
                                                  .titleSmallGray5001,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.h),
                          _buildRowc1one(context),
                          SizedBox(height: 8.h),
                          _buildRowd1one(context),
                          SizedBox(height: 10.h),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 4.h),
                            child: _buildRowbyoubisyour(
                              context,
                              byoubisyourOne: "msg_a_you_a_is_your".tr,
                              level2teamsOne: "msg_level_1_teams_directly".tr,
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 4.h),
                            child: _buildRowbyoubisyour(
                              context,
                              byoubisyourOne: "msg_b_you_b_is_your".tr,
                              level2teamsOne: "lbl_level_2_teams".tr,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 4.h),
                            child: _buildRowbyoubisyour(
                              context,
                              byoubisyourOne: "msg_c_you_c_is_your".tr,
                              level2teamsOne: "lbl_level_3_teams".tr,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 4.h),
                            child: _buildRowbyoubisyour(
                              context,
                              byoubisyourOne: "msg_d_you_d_is_your".tr,
                              level2teamsOne: "lbl_level_4_teams".tr,
                            ),
                          ),
                          SizedBox(height: 22.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "msg_team_count_level".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall!.copyWith(
                                height: 1.17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              CustomElevatedButton(
                height: 54.h,
                text: "lbl_ok".tr,
                buttonStyle: CustomButtonStyles.fillBlueGrayBL12,
                buttonTextStyle: CustomTextStyles.titleMediumLightgreenA700,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRowc1one(BuildContext context) {
    return SizedBox(
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
                    decoration: AppDecoration.gradientBlueToLightBlue.copyWith(
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
                    decoration: AppDecoration.gradientBlueToLightBlue.copyWith(
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
                    decoration: AppDecoration.gradientBlueToLightBlue.copyWith(
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
                    decoration: AppDecoration.gradientBlueToLightBlue.copyWith(
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
                    decoration: AppDecoration.gradientBlueToLightBlue.copyWith(
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
                    decoration: AppDecoration.gradientBlueToLightBlue.copyWith(
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
                    decoration: AppDecoration.gradientBlueToLightBlue.copyWith(
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
                    decoration: AppDecoration.gradientBlueToLightBlue.copyWith(
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
    );
  }

  /// Section Widget
  Widget _buildRowd1one(BuildContext context) {
    return Container(
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
                    decoration: AppDecoration.gradientGrayToGreenA.copyWith(
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
                    decoration: AppDecoration.gradientGrayToGreenA.copyWith(
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
                    decoration: AppDecoration.gradientGrayToGreenA.copyWith(
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
                    decoration: AppDecoration.gradientGrayToGreenA.copyWith(
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
                    decoration: AppDecoration.gradientGrayToGreenA.copyWith(
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
                    decoration: AppDecoration.gradientGrayToGreenA.copyWith(
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
                    decoration: AppDecoration.gradientGrayToGreenA.copyWith(
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
                    decoration: AppDecoration.gradientGrayToGreenA.copyWith(
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
          style: CustomTextStyles.labelLargeLightgreenA700.copyWith(
            color: appTheme.lightGreenA700,
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
