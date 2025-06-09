import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';
import '../../core/app_export.dart';
import 'bloc/achievement_rewards_bloc.dart';
import 'models/achievement_rewards_model.dart';
import 'models/listinvite_one_item_model.dart';
import 'widgets/listinvite_one_item_widget.dart';

class AchievementRewardsScreen extends StatelessWidget {
  const AchievementRewardsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AchievementRewardsBloc>(
      create:
          (context) => AchievementRewardsBloc(
            AchievementRewardsState(
              achievementRewardsModelObj: AchievementRewardsModel(),
            ),
          )..add(AchievementRewardsInitialEvent()),
      child: AchievementRewardsScreen(),
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
              height: 1122.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 142.h,
                      width: 142.h,
                      margin: EdgeInsets.only(top: 408.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70.h),
                        gradient: LinearGradient(
                          begin: Alignment(0.45, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            appTheme.lime4004c,
                            appTheme.lightGreenA4004c,
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildColumnoneone(context),
                        _buildColumninvite(context),
                        SizedBox(height: 12.h),
                        _buildStackthree(context),
                        SizedBox(height: 30.h),
                        _buildColumnprice(context),
                        SizedBox(height: 10.h),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 14.h),
                          height: 668.h,
                          width: double.maxFinite,
                          child: BlocSelector<
                            AchievementRewardsBloc,
                            AchievementRewardsState,
                            AchievementRewardsModel?
                          >(
                            selector:
                                (state) => state.achievementRewardsModelObj,
                            builder: (context, achievementRewardsModelObj) {
                              return Timeline.tileBuilder(
                                shrinkWrap: true,
                                theme: TimelineThemeData(
                                  nodePosition: 0.5,
                                  indicatorPosition: 0,
                                ),
                                builder: TimelineTileBuilder.connected(
                                  connectionDirection:
                                      ConnectionDirection.before,
                                  itemCount:
                                      achievementRewardsModelObj?.listinviteOneItemList.length ??
                                      0,
                                  connectorBuilder: (context, index, type) {
                                    return SolidLineConnector();
                                  },
                                ),
                              );
                            },
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
  Widget _buildColumnoneone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.h),
      decoration: AppDecoration.fs10bg,
      child: Column(
        spacing: 6,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img1Black90012x356,
            height: 12.h,
            width: double.maxFinite,
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 6.h, right: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLogoWj931,
                  height: 28.h,
                  width: 124.h,
                  alignment: Alignment.center,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 16.h,
                        width: 16.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "lbl_1980_00".tr,
                          style: CustomTextStyles.titleMediumAmberA400_1,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img1,
                        height: 14.h,
                        width: 18.h,
                        margin: EdgeInsets.only(left: 10.h),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumninvite(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: AppDecoration.fillGray90010,
      child: Column(
        children: [
          SizedBox(height: 8.h),
          Container(
            width: double.maxFinite,
            child: BlocSelector<
              AchievementRewardsBloc,
              AchievementRewardsState,
              AchievementRewardsModel?
            >(
              selector: (state) => state.achievementRewardsModelObj,
              builder: (context, achievementRewardsModelObj) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 20.h,
                    children: List.generate(
                      achievementRewardsModelObj
                              ?.listinviteOneItemList
                              .length ??
                          0,
                      (index) {
                        ListinviteOneItemModel model =
                            achievementRewardsModelObj
                                ?.listinviteOneItemList[index] ??
                            ListinviteOneItemModel();
                        return ListinviteOneItemWidget(model);
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackthree(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        color: appTheme.green90005,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Container(
          height: 170.h,
          width: double.maxFinite,
          decoration: AppDecoration.fillGreen.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 170.h,
                margin: EdgeInsets.only(left: 6.h),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 170.h,
                        width: 220.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img170x218,
                              height: 170.h,
                              width: double.maxFinite,
                              radius: BorderRadius.circular(8.h),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: SizedBox(
                                height: 150.h,
                                width: 162.h,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgUserBlueGray100,
                                      height: 26.h,
                                      width: 20.h,
                                      radius: BorderRadius.circular(8.h),
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(top: 34.h),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgMaskGroup,
                                      height: 24.h,
                                      width: 3.h,
                                      radius: BorderRadius.circular(1.h),
                                      margin: EdgeInsets.only(bottom: 46.h),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.img82d5a47b9a735f3,
                                      height: 48.h,
                                      width: 82.h,
                                      radius: BorderRadius.circular(8.h),
                                      alignment: Alignment.bottomLeft,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: SizedBox(
                                        height: 150.h,
                                        width: 100.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage150x98,
                                              height: 150.h,
                                              width: double.maxFinite,
                                              radius: BorderRadius.circular(
                                                8.h,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: SizedBox(
                                                height: 42.h,
                                                width: 74.h,
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .imgImage867,
                                                      height: 22.h,
                                                      width: 54.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                            8.h,
                                                          ),
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                    ),
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .img82d5a47b9a735f342x72,
                                                      height: 42.h,
                                                      width: double.maxFinite,
                                                      radius:
                                                          BorderRadius.circular(
                                                            8.h,
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
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "msg_jbet88_new_referral".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary13,
                            ),
                          ),
                          SizedBox(
                            height: 144.h,
                            width: 256.h,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.img82d5a47b9a735f324x80,
                                  height: 24.h,
                                  width: 82.h,
                                  radius: BorderRadius.circular(8.h),
                                  alignment: Alignment.bottomLeft,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.img82d5a47b9a735f334x80,
                                  height: 34.h,
                                  width: 82.h,
                                  radius: BorderRadius.circular(8.h),
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(left: 66.h),
                                ),
                                Container(
                                  width: double.maxFinite,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 14.h,
                                  ),
                                  child: Column(
                                    spacing: 14,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 18.h,
                                        ),
                                        decoration: AppDecoration.fillAmberA
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
                                            Text(
                                              "lbl_betting_rebate".tr,
                                              style:
                                                  CustomTextStyles
                                                      .labelMediumGray90011,
                                            ),
                                            Text(
                                              "lbl_0_8".tr,
                                              style:
                                                  CustomTextStyles
                                                      .titleSmallTeal90004,
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant
                                                .img82d5a47b9a735f316x80,
                                        height: 16.h,
                                        width: 82.h,
                                        radius: BorderRadius.circular(8.h),
                                        margin: EdgeInsets.only(right: 34.h),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgLogo21031,
                                  height: 122.h,
                                  width: 124.h,
                                  radius: BorderRadius.circular(8.h),
                                  margin: EdgeInsets.only(bottom: 4.h),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "msg_enjoy_4_super_commissions".tr,
                                    style:
                                        CustomTextStyles.labelLargeYellow20003,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 4.h,
                                      top: 26.h,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                    ),
                                    decoration: AppDecoration.fillAmberA
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "lbl_qualified_bonus".tr,
                                          style:
                                              CustomTextStyles
                                                  .labelMediumGray90011,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 14.h),
                                          child: Text(
                                            "lbl_168".tr,
                                            style:
                                                CustomTextStyles
                                                    .titleSmallTeal90004,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      left: 4.h,
                                      bottom: 32.h,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 18.h,
                                    ),
                                    decoration: AppDecoration.fillAmberA
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "lbl_deposit_rebate".tr,
                                          style:
                                              CustomTextStyles
                                                  .labelMediumGray90011,
                                        ),
                                        Text(
                                          "lbl_1_13".tr,
                                          style:
                                              CustomTextStyles
                                                  .titleSmallTeal800,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      top: 28.h,
                                      right: 14.h,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4.h,
                                    ),
                                    decoration: AppDecoration.fillAmberA
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "msg_achievement_reward".tr,
                                          style:
                                              CustomTextStyles
                                                  .labelMediumGray90011,
                                        ),
                                        Text(
                                          "lbl_88888".tr,
                                          style:
                                              CustomTextStyles
                                                  .titleSmallTeal90004,
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
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Container(
                  height: 170.h,
                  decoration: AppDecoration.gradientGreenToGreen.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      SizedBox(
                        height: 170.h,
                        width: 232.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: CustomImageView(
                                imagePath: ImageConstant.img31,
                                height: 108.h,
                                width: double.maxFinite,
                                alignment: Alignment.topRight,
                              ),
                            ),
                            Container(
                              height: 286.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.img286x244,
                                    height: 286.h,
                                    width: double.maxFinite,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 190.h,
                                      margin: EdgeInsets.only(
                                        left: 40.h,
                                        top: 20.h,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .img9bdfe0b8724b812,
                                            height: 52.h,
                                            width: 152.h,
                                            margin: EdgeInsets.only(
                                              right: 2.h,
                                              bottom: 14.h,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage148x138,
                                            height: 148.h,
                                            width: 140.h,
                                          ),
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                              height: 178.h,
                                              margin: EdgeInsets.only(
                                                left: 14.h,
                                                right: 8.h,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgRw,
                                                    height: 178.h,
                                                    width: 178.h,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                      width: double.maxFinite,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                            horizontal: 8.h,
                                                          ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .img38x38,
                                                            height: 38.h,
                                                            width: 40.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                  left: 18.h,
                                                                ),
                                                          ),
                                                          SizedBox(
                                                            height: 60.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage55424x30,
                                                            height: 24.h,
                                                            width: 32.h,
                                                          ),
                                                          SizedBox(
                                                            height: 14.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEye,
                                                            height: 14.h,
                                                            width: 40.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                  left: 34.h,
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
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgFacebokkicon,
                                            height: 66.h,
                                            width: 68.h,
                                            margin: EdgeInsets.only(
                                              right: 2.h,
                                              bottom: 44.h,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .img9bdfe0b8724b812,
                                            height: 52.h,
                                            width: 152.h,
                                            alignment: Alignment.bottomLeft,
                                            margin: EdgeInsets.only(
                                              bottom: 6.h,
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 234.h,
                          margin: EdgeInsets.only(left: 8.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: AppDecoration.outlineGray,
                                child: Text(
                                  "lbl_become_an_agent".tr,
                                  textAlign: TextAlign.left,
                                  style:
                                      CustomTextStyles
                                          .titleMediumHelveticaNeueLTProYellow300,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Container(
                                decoration: AppDecoration.outlineGray,
                                child: Text(
                                  "msg_earn_millions_a".tr,
                                  textAlign: TextAlign.left,
                                  style:
                                      CustomTextStyles
                                          .titleLargeHelveticaNeueLTPro,
                                ),
                              ),
                              SizedBox(height: 14.h),
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.maxFinite,
                                        decoration:
                                            AppDecoration.gradientAmberToLime,
                                        child: Column(
                                          children: [
                                            Text(
                                              "lbl_qualified_bonus".tr,
                                              style: theme.textTheme.labelSmall,
                                            ),
                                            Text(
                                              "lbl_108".tr,
                                              style:
                                                  CustomTextStyles
                                                      .labelLargeSFProTextPinkA700,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.maxFinite,
                                        decoration:
                                            AppDecoration.gradientAmberToLime,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "msg_achievement_reward".tr,
                                              style: theme.textTheme.labelSmall,
                                            ),
                                            Text(
                                              "lbl_88888".tr,
                                              style:
                                                  CustomTextStyles
                                                      .labelLargeSFProTextPinkA700,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 2.h),
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.maxFinite,
                                        decoration:
                                            AppDecoration.gradientAmberToLime,
                                        child: Column(
                                          children: [
                                            Text(
                                              "lbl_deposit_rebate".tr,
                                              style: theme.textTheme.labelSmall,
                                            ),
                                            Text(
                                              "lbl_55".tr,
                                              style:
                                                  CustomTextStyles
                                                      .labelLargeSFProTextPinkA700,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.maxFinite,
                                        decoration:
                                            AppDecoration.gradientAmberToLime,
                                        child: Column(
                                          children: [
                                            Text(
                                              "lbl_betting_rebate".tr,
                                              style: theme.textTheme.labelSmall,
                                            ),
                                            Text(
                                              "lbl_2_03".tr,
                                              style:
                                                  CustomTextStyles
                                                      .labelLargeSFProTextPinkA700,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.maxFinite,
                                        decoration:
                                            AppDecoration.gradientAmberToLime,
                                        child: Column(
                                          children: [
                                            Text(
                                              "lbl_agent_ranking".tr,
                                              style: theme.textTheme.labelSmall,
                                            ),
                                            Text(
                                              "lbl_888".tr,
                                              style:
                                                  CustomTextStyles
                                                      .labelLargeSFProTextPinkA700,
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
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnprice(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_you_need_to_invite".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "lbl_388_00".tr,
                    style: CustomTextStyles.titleSmallLightgreenA700_1,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 10.h),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 138.h),
              child: Text(
                "lbl_40_100".tr,
                style: CustomTextStyles.bodySmallOnPrimary10,
              ),
            ),
          ),
          Container(
            height: 6.h,
            width: 346.h,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(3.h),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3.h),
              child: LinearProgressIndicator(
                value: 0.51,
                backgroundColor: appTheme.blueGray100,
                valueColor: AlwaysStoppedAnimation<Color>(
                  appTheme.lightGreenA700,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h, right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_no_expiration".tr,
                  style: CustomTextStyles.bodySmallOnPrimary_3,
                ),
                Spacer(),
                Container(
                  height: 18.h,
                  width: 18.h,
                  decoration: AppDecoration.outlineAmberA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl6".tr,
                        style: CustomTextStyles.labelLargeAmberA400Black,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "lbl_rules".tr,
                    style: CustomTextStyles.bodySmallOnPrimary10,
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
