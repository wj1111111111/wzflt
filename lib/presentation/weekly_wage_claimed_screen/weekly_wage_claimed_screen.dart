import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/weekly_wage_claimed_bloc.dart';
import 'models/listlv1_one_item_model.dart';
import 'models/listlv4_one_item_model.dart';
import 'models/weekly_wage_claimed_model.dart';
import 'widgets/listlv1_one_item_widget.dart';
import 'widgets/listlv4_one_item_widget.dart';

class WeeklyWageClaimedScreen extends StatelessWidget {
  const WeeklyWageClaimedScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WeeklyWageClaimedBloc>(
      create:
          (context) => WeeklyWageClaimedBloc(
            WeeklyWageClaimedState(
              weeklyWageClaimedModelObj: WeeklyWageClaimedModel(),
            ),
          )..add(WeeklyWageClaimedInitialEvent()),
      child: WeeklyWageClaimedScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                children: [
                  SizedBox(height: 4.h),
                  _buildStackthreeone(context),
                  SizedBox(height: 10.h),
                  _buildStackclosefive(context),
                  SizedBox(height: 16.h),
                  _buildStackthree(context),
                  SizedBox(height: 6.h),
                  _buildStackthreefive(context),
                  SizedBox(height: 16.h),
                  _buildColumnupgradevi(context),
                ],
              ),
            ),
          ),
        ),
      ),
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
        text: "lbl_vip".tr,
        margin: EdgeInsets.only(left: 9.h),
      ),
      actions: [
        AppbarTrailingImage(imagePath: ImageConstant.imgLock),
        AppbarSubtitleThree(
          text: "lbl_19800_00".tr,
          margin: EdgeInsets.only(left: 8.h),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.img114x16,
          height: 14.h,
          width: 16.h,
          margin: EdgeInsets.only(left: 11.h, right: 20.h),
        ),
      ],
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildStackthreeone(BuildContext context) {
    return SizedBox(
      height: 74.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              decoration: AppDecoration.gradientOrangeToOrange.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img3,
                    height: 70.h,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(8.h),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 74.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img74x344,
                  height: 74.h,
                  width: double.maxFinite,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseOnprimary,
                  height: 24.h,
                  width: 34.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 20.h, bottom: 22.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackclosefive(BuildContext context) {
    return SizedBox(
      height: 422.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              spacing: 8,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 74.h,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.maxFinite,
                          decoration: AppDecoration.gradientBlueGrayToTeal
                              .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img4,
                                height: 70.h,
                                width: double.maxFinite,
                                radius: BorderRadius.circular(8.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 74.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img6,
                              height: 74.h,
                              width: double.maxFinite,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgCloseOnprimary,
                              height: 24.h,
                              width: 34.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(
                                right: 20.h,
                                bottom: 22.h,
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
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.h,
                    vertical: 10.h,
                  ),
                  decoration: AppDecoration.outlineBluegray900122.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  child: Column(
                    spacing: 10,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 6.h),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 8.h,
                        ),
                        decoration: AppDecoration.outlineBluegray900121
                            .copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder10,
                            ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCloseGray90023,
                                    height: 36.h,
                                    width: 36.h,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 10.h,
                                        bottom: 4.h,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_how_to_get".tr,
                                              style:
                                                  CustomTextStyles
                                                      .titleSmallBlack_1,
                                            ),
                                            TextSpan(
                                              text: "lbl_vip2".tr,
                                              style:
                                                  CustomTextStyles
                                                      .titleSmallAmber30002,
                                            ),
                                            TextSpan(text: " "),
                                            TextSpan(
                                              text: "lbl_weekly_salary".tr,
                                              style:
                                                  CustomTextStyles
                                                      .titleSmallAmber30002,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "msg_you_can_receive2".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelLarge!.copyWith(
                                height: 1.33,
                              ),
                            ),
                            SizedBox(height: 14.h),
                            Text(
                              "msg_collection_time4".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelLarge!.copyWith(
                                height: 1.33,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_weekly_collection".tr,
                                    style:
                                        CustomTextStyles.titleSmallAmber30002_2,
                                  ),
                                  TextSpan(
                                    text: "lbl_sunday_22_00_00".tr,
                                    style: CustomTextStyles.titleSmallGray50,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 8.h),
                            SizedBox(
                              height: 44.h,
                              width: 170.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Column(
                                      spacing: 2,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_your_level2".tr,
                                                style:
                                                    CustomTextStyles
                                                        .titleSmallBlack_1,
                                              ),
                                              TextSpan(
                                                text: "lbl_v8".tr,
                                                style:
                                                    CustomTextStyles
                                                        .titleSmallAmberA400,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_weekly_salary2".tr,
                                                style:
                                                    CustomTextStyles
                                                        .titleSmallBlack_1,
                                              ),
                                              TextSpan(
                                                text: "lbl_1999".tr,
                                                style:
                                                    CustomTextStyles
                                                        .titleSmallAmberA400,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgIconVip8,
                                    height: 26.h,
                                    width: 28.h,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(right: 44.h),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomOutlinedButton(
                        width: 150.h,
                        text: "lbl_receive_award".tr,
                        buttonStyle: CustomButtonStyles.outlineBlueGray,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgInboxBlueGray400,
                            height: 14.h,
                            width: 14.h,
                          ),
                          Text(
                            "msg_time_has_not_come".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: EdgeInsets.only(top: 64.h),
                        padding: EdgeInsets.symmetric(horizontal: 26.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup1224,
                              height: 32.h,
                              width: 12.h,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup1224,
                              height: 32.h,
                              width: 12.h,
                            ),
                          ],
                        ),
                      ),
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
  Widget _buildStackthree(BuildContext context) {
    return SizedBox(
      height: 74.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              decoration: AppDecoration.gradientIndigoToDeepPurpleA.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img4,
                    height: 70.h,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(8.h),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 74.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img7,
                  height: 74.h,
                  width: double.maxFinite,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseOnprimary,
                  height: 24.h,
                  width: 34.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 20.h, bottom: 22.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackthreefive(BuildContext context) {
    return SizedBox(
      height: 78.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              decoration: AppDecoration.gradientBlueToBlueA.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img4,
                    height: 70.h,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(8.h),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 78.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                SizedBox(
                  height: 74.h,
                  width: 252.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img74x250,
                        height: 74.h,
                        width: double.maxFinite,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCloseOnprimary,
                        height: 24.h,
                        width: 34.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 20.h, bottom: 22.h),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img896611,
                  height: 76.h,
                  width: 106.h,
                  radius: BorderRadius.circular(6.h),
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnupgradevi(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 38.h,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle568,
                  height: 38.h,
                  width: double.maxFinite,
                  radius: BorderRadius.vertical(bottom: Radius.circular(6.h)),
                ),
                Container(
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "msg_upgrade_vip_requirements".tr,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  decoration: AppDecoration.fs1.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL5,
                  ),
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 34.h,
                        margin: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "lbl_vip_level".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.labelLargeOnPrimaryBlack_1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: appTheme.lightGreen9007f,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClose20x34,
                              height: 20.h,
                              width: 36.h,
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              child: Text(
                                "lbl_deposit_amount".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeOnPrimary_6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: appTheme.lightGreen9007f,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 4.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img8411641,
                                  height: 16.h,
                                  width: 22.h,
                                  margin: EdgeInsets.only(right: 14.h),
                                ),
                                Text(
                                  "lbl_bet_amount".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.labelLargeOnPrimary_6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: appTheme.lightGreen9007f,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(horizontal: 4.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img20x26,
                                height: 20.h,
                                width: 28.h,
                                margin: EdgeInsets.only(right: 10.h),
                              ),
                              Text(
                                "lbl_upgrade_bonus".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeOnPrimary_6,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: appTheme.lightGreen9007f,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBn01,
                              height: 20.h,
                              width: 28.h,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "lbl_weekly_cashback".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeOnPrimary_6,
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
                    children: [
                      BlocSelector<
                        WeeklyWageClaimedBloc,
                        WeeklyWageClaimedState,
                        WeeklyWageClaimedModel?
                      >(
                        selector: (state) => state.weeklyWageClaimedModelObj,
                        builder: (context, weeklyWageClaimedModelObj) {
                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 4.h);
                            },
                            itemCount:
                                weeklyWageClaimedModelObj
                                    ?.listlv1OneItemList
                                    .length ??
                                0,
                            itemBuilder: (context, index) {
                              Listlv1OneItemModel model =
                                  weeklyWageClaimedModelObj
                                      ?.listlv1OneItemList[index] ??
                                  Listlv1OneItemModel();
                              return Listlv1OneItemWidget(model);
                            },
                          );
                        },
                      ),
                      BlocSelector<
                        WeeklyWageClaimedBloc,
                        WeeklyWageClaimedState,
                        WeeklyWageClaimedModel?
                      >(
                        selector: (state) => state.weeklyWageClaimedModelObj,
                        builder: (context, weeklyWageClaimedModelObj) {
                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 4.h);
                            },
                            itemCount:
                                weeklyWageClaimedModelObj
                                    ?.listlv4OneItemList
                                    .length ??
                                0,
                            itemBuilder: (context, index) {
                              Listlv4OneItemModel model =
                                  weeklyWageClaimedModelObj
                                      ?.listlv4OneItemList[index] ??
                                  Listlv4OneItemModel();
                              return Listlv4OneItemWidget(model);
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.h,
                    vertical: 2.h,
                  ),
                  decoration: AppDecoration.fillGray90021,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.h),
                        child: Column(
                          spacing: 2,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIconVip9,
                              height: 16.h,
                              width: 16.h,
                              margin: EdgeInsets.only(left: 4.h, right: 2.h),
                            ),
                            Text(
                              "lbl_lv_9".tr,
                              style: CustomTextStyles.labelLargeGray300,
                            ),
                          ],
                        ),
                      ),
                      Text("lbl_800".tr, style: theme.textTheme.labelLarge),
                      Text("lbl_1200".tr, style: theme.textTheme.labelLarge),
                      Text(
                        "lbl_3002".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: Text(
                          "lbl_3002".tr,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 14.h, right: 22.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          spacing: 2,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIconVip10,
                              height: 16.h,
                              width: 16.h,
                              margin: EdgeInsets.symmetric(horizontal: 6.h),
                            ),
                            Text(
                              "lbl_lv_10".tr,
                              style: CustomTextStyles.labelLargeGray300,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: Text(
                          "lbl_800".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: Text(
                          "lbl_1200".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: Text(
                          "lbl_3002".tr,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: Text(
                          "lbl_3002".tr,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
              ],
            ),
          ),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
}
