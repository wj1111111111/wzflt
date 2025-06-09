import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/information_four_bloc.dart';
import 'models/information_four_model.dart';

class InformationFourScreen extends StatelessWidget {
  const InformationFourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<InformationFourBloc>(
      create:
          (context) => InformationFourBloc(
            InformationFourState(
              informationFourModelObj: InformationFourModel(),
            ),
          )..add(InformationFourInitialEvent()),
      child: InformationFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InformationFourBloc, InformationFourState>(
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
                      SizedBox(height: 16.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          spacing: 12,
                          children: [
                            _buildStackdescriptio(context),
                            _buildStackdescriptio1(context),
                          ],
                        ),
                      ),
                      _buildStackdescriptio2(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: _buildColumndescripti(context),
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
        text: "lbl_notifications".tr,
        margin: EdgeInsets.only(left: 9.h),
      ),
      actions: [
        AppbarTrailingImage(imagePath: ImageConstant.imgLock),
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
    );
  }

  /// Section Widget
  Widget _buildStackdescriptio(BuildContext context) {
    return SizedBox(
      height: 288.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
              decoration: AppDecoration.fs4bg.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 50.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_my_money_is_missing".tr,
                          style: CustomTextStyles.bodyMediumBluegray400_1,
                        ),
                        TextSpan(
                          text: "msg_my_money_is_missing3".tr,
                          style: CustomTextStyles.bodyMediumBluegray400_1,
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
          ),
          Container(
            height: 288.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 312.h,
                    margin: EdgeInsets.only(bottom: 14.h),
                    child: Text(
                      "msg_dear_teams_we_have".tr,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBlue400.copyWith(
                        height: 1.29,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 8.h,
                  ),
                  decoration: AppDecoration.outlineBluegray90038.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  child: Column(
                    spacing: 90,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 2.h),
                        child: _buildColumn20240127o(
                          context,
                          p20240127oneOne: "msg_2024_01_27_01_00_00".tr,
                          durationOne: "msg_automatically_delete2".tr,
                          gameissuesTwo: "msg_withdrawal_issues".tr,
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(horizontal: 2.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgSettingsBlue400,
                              height: 24.h,
                              width: 24.h,
                            ),
                            Container(
                              height: 18.h,
                              width: 96.h,
                              margin: EdgeInsets.only(left: 10.h),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgUnion18x96,
                                    height: 18.h,
                                    width: double.maxFinite,
                                  ),
                                  Text(
                                    "lbl_new_reply".tr.toUpperCase(),
                                    style: CustomTextStyles.bodyMediumGray90002,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "msg_2024_04_15_16_59_59".tr,
                                style: CustomTextStyles.labelLargeBluegray70001,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 106.h),
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
  Widget _buildStackdescriptio1(BuildContext context) {
    return SizedBox(
      height: 288.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 12.h),
              decoration: AppDecoration.fs4bg.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 46.h),
                  Text(
                    "msg_failed_to_enter2".tr,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumBluegray400,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 288.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 312.h,
                    margin: EdgeInsets.only(bottom: 14.h),
                    child: Text(
                      "msg_dear_teams_we_have".tr,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBlue400.copyWith(
                        height: 1.29,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  decoration: AppDecoration.outlineBluegray90038.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 14.h, right: 12.h),
                        child: _buildColumn20240127o(
                          context,
                          p20240127oneOne: "msg_2024_01_27_01_00_00".tr,
                          durationOne: "msg_automatically_delete2".tr,
                          gameissuesTwo: "lbl_game_issues".tr,
                        ),
                      ),
                      SizedBox(height: 90.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(horizontal: 14.h),
                        child: _buildRow20240415sixt(
                          context,
                          imageOne: ImageConstant.imgSettingsBlue400,
                          p20240415sixteen: "msg_2024_04_15_16_59_59".tr,
                        ),
                      ),
                      SizedBox(height: 38.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup12786,
                        height: 40.h,
                        width: 42.h,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(height: 26.h),
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
  Widget _buildStackdescriptio2(BuildContext context) {
    return SizedBox(
      height: 288.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 34.h),
              child: Text(
                "msg_dear_teams_we_have".tr,
                style: CustomTextStyles.bodyMediumBlue400,
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 8.h),
            decoration: AppDecoration.outlineBluegray90038.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              spacing: 90,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 2.h),
                  child: _buildColumn20240127o(
                    context,
                    p20240127oneOne: "msg_2024_01_27_01_00_00".tr,
                    durationOne: "msg_automatically_delete2".tr,
                    gameissuesTwo: "lbl_game_issues".tr,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                  child: _buildRow20240415sixt(
                    context,
                    imageOne: ImageConstant.imgGroup12780,
                    p20240415sixteen: "msg_2024_04_15_16_59_59".tr,
                  ),
                ),
                SizedBox(height: 106.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumndescripti(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(bottom: 12.h),
            padding: EdgeInsets.symmetric(vertical: 22.h),
            decoration: AppDecoration.fs4bg.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 36.h),
                  child: Text(
                    "msg_failed_to_enter2".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumBluegray400,
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
  Widget _buildColumn20240127o(
    BuildContext context, {
    required String p20240127oneOne,
    required String durationOne,
    required String gameissuesTwo,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          p20240127oneOne,
          style: CustomTextStyles.labelLargeBluegray70001.copyWith(
            color: appTheme.blueGray70001,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Text(
              durationOne,
              style: CustomTextStyles.labelLargeBluegray70001.copyWith(
                color: appTheme.blueGray70001,
              ),
            ),
          ),
        ),
        SizedBox(height: 4.h),
        SizedBox(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                gameissuesTwo,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkBlueGray400,
                height: 20.h,
                width: 22.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 4.h),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildRow20240415sixt(
    BuildContext context, {
    required String imageOne,
    required String p20240415sixteen,
  }) {
    return Row(
      children: [
        CustomImageView(imagePath: imageOne, height: 24.h, width: 24.h),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            p20240415sixteen,
            style: CustomTextStyles.labelLargeBluegray70001.copyWith(
              color: appTheme.blueGray70001,
            ),
          ),
        ),
      ],
    );
  }
}
