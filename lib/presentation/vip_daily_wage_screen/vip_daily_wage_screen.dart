import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/vip_daily_wage_bloc.dart';
import 'models/expandablelistc_item_model.dart';
import 'models/listgroup1248_item_model.dart';
import 'models/listlv1_one_item_model.dart';
import 'models/listlv6_one_item_model.dart';
import 'models/vip_daily_wage_model.dart';
import 'widgets/expandablelistc_item_widget.dart';
import 'widgets/listgroup1248_item_widget.dart';
import 'widgets/listlv1_one_item_widget.dart';
import 'widgets/listlv6_one_item_widget.dart';

class VipDailyWageScreen extends StatelessWidget {
  const VipDailyWageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<VipDailyWageBloc>(
      create:
          (context) => VipDailyWageBloc(
            VipDailyWageState(vipDailyWageModelObj: VipDailyWageModel()),
          )..add(VipDailyWageInitialEvent()),
      child: VipDailyWageScreen(),
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
              padding: EdgeInsets.only(top: 12.h),
              child: Column(
                spacing: 14,
                children: [
                  _buildStackviewthree(context),
                  _buildColumnonethree(context),
                  _buildListgroup1248(context),
                  _buildExpandablelistc(context),
                  _buildStackupgrade(context),
                  SizedBox(height: 12.h),
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
  Widget _buildStackviewthree(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.circleBorder14,
        ),
        child: Container(
          height: 198.h,
          width: double.maxFinite,
          decoration: AppDecoration.gradientGreenToLightGreen.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder14,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 108.h,
                  width: 344.h,
                  margin: EdgeInsets.only(bottom: 16.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.h),
                      topRight: Radius.circular(12.h),
                      bottomLeft: Radius.circular(12.h),
                      bottomRight: Radius.circular(12.h),
                    ),
                  ),
                ),
              ),
              Container(
                height: 198.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 114.h,
                      width: 344.h,
                      margin: EdgeInsets.only(bottom: 16.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.h),
                          topRight: Radius.circular(12.h),
                          bottomLeft: Radius.circular(12.h),
                          bottomRight: Radius.circular(12.h),
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(6.h),
                      decoration: AppDecoration.gradientLightGreenToLightGreenA
                          .copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL30,
                          ),
                      child: Column(
                        spacing: 2,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 4.h),
                          Container(
                            width: 212.h,
                            margin: EdgeInsets.only(left: 12.h),
                            child: Text(
                              "msg_complete_the_following".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.labelLargeGray90018
                                  .copyWith(height: 1.17),
                            ),
                          ),
                          Container(
                            decoration: AppDecoration
                                .gradientLightGreenAToLightGreen
                                .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder30,
                                ),
                            width: double.maxFinite,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 18.h,
                                        bottom: 4.h,
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: double.maxFinite,
                                            margin: EdgeInsets.only(right: 2.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 6.h,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outlineBlack9002
                                                      .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL101,
                                                      ),
                                                  child: Text(
                                                    "lbl_deposit_amount".tr,
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        theme
                                                            .textTheme
                                                            .titleSmall,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    children: [
                                                      RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: "lbl_46".tr,
                                                              style:
                                                                  CustomTextStyles
                                                                      .titleSmallAmberA400,
                                                            ),
                                                            TextSpan(
                                                              text: "lbl3".tr,
                                                              style:
                                                                  CustomTextStyles
                                                                      .titleSmallBlack_1,
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  "lbl_100".tr,
                                                              style:
                                                                  CustomTextStyles
                                                                      .titleSmallBlack_1,
                                                            ),
                                                          ],
                                                        ),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .imgGroup934LightGreen90002,
                                                        height: 5.h,
                                                        width: double.maxFinite,
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 20.h,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outlineBlack9002
                                                      .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL101,
                                                      ),
                                                  child: Text(
                                                    "lbl_bet_amount".tr,
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        theme
                                                            .textTheme
                                                            .titleSmall,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "lbl_100_100".tr,
                                                        style:
                                                            CustomTextStyles
                                                                .titleSmallBlack,
                                                      ),
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .imgGroup934LightGreen90002,
                                                        height: 5.h,
                                                        width: double.maxFinite,
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
                                Container(
                                  width: 64.h,
                                  decoration: AppDecoration
                                      .gradientBlueGrayToBlack
                                      .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder30,
                                      ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        width: double.maxFinite,
                                        padding: EdgeInsets.all(2.h),
                                        decoration: AppDecoration
                                            .gradientGreenBcToGreen
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .roundedBorder30,
                                            ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              width: double.maxFinite,
                                              child: ImageFiltered(
                                                imageFilter: ImageFilter.blur(
                                                  sigmaX: 0.5,
                                                  sigmaY: 0.5,
                                                ),
                                                child: Container(
                                                  width: double.maxFinite,
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 2.h,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outline10
                                                      .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder30,
                                                      ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "lbl_v10".tr,
                                                        style:
                                                            CustomTextStyles
                                                                .titleLargeBlack,
                                                      ),
                                                      Text(
                                                        "lbl_73".tr,
                                                        style:
                                                            CustomTextStyles
                                                                .labelLargeLightgreenA700Black,
                                                      ),
                                                      SizedBox(height: 2.h),
                                                    ],
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
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 56.h,
                        width: 344.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.h),
                            topRight: Radius.circular(12.h),
                            bottomLeft: Radius.circular(28.h),
                            bottomRight: Radius.circular(12.h),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.maxFinite,
                        decoration: AppDecoration.outline11.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBL30,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: double.maxFinite,
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.zero,
                                color: appTheme.lightGreenA700,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL24,
                                ),
                                child: Container(
                                  height: 48.h,
                                  width: double.maxFinite,
                                  decoration: AppDecoration.fs23.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderBL24,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle416,
                                        height: 48.h,
                                        width: double.maxFinite,
                                        radius: BorderRadius.circular(12.h),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle416,
                                        height: 48.h,
                                        width: double.maxFinite,
                                        radius: BorderRadius.only(
                                          bottomLeft: Radius.circular(12.h),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16.h),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgForward,
                      height: 18.h,
                      width: 22.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 28.h, top: 54.h),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 50.h, top: 40.h),
                        child: Text(
                          "lbl_10".tr,
                          style:
                              CustomTextStyles
                                  .headlineMediumArialOnPrimaryBlack28,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgV10124x124,
                      height: 124.h,
                      width: 126.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(right: 6.h),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnonethree(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: AppDecoration.outlineBluegray90012.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 70.h,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img370x344,
                  height: 70.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(8.h),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgVpDailySalary2,
                            height: 68.h,
                            width: 90.h,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVpDailySalary,
                            height: 32.h,
                            width: 204.h,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img1Gray90001,
                            height: 20.h,
                            width: 20.h,
                            margin: EdgeInsets.only(left: 14.h),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 14.h, right: 26.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_total_valid_bets".tr,
                        style: CustomTextStyles.labelLargeOnPrimary_6,
                      ),
                      Text(
                        "lbl_99".tr,
                        style: CustomTextStyles.titleMediumAmberA400_1,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_estimated_salary".tr,
                      style: CustomTextStyles.labelLargeOnPrimary_6,
                    ),
                    Text(
                      "lbl_102".tr,
                      style: CustomTextStyles.titleMediumAmberA400_1,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.h),
            padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 10.h),
            decoration: AppDecoration.fs2bg.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img40x50,
                  height: 40.h,
                  width: 50.h,
                ),
                Expanded(
                  child: Column(
                    spacing: 2,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_salary_from_yesterday".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      Text(
                        "lbl_4933_70".tr,
                        style: CustomTextStyles.titleMediumAmberA400_1,
                      ),
                    ],
                  ),
                ),
                CustomElevatedButton(
                  width: 90.h,
                  text: "lbl_receive".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles
                          .gradientLightGreenAToLightGreenTL16Decoration,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListgroup1248(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child:
          BlocSelector<VipDailyWageBloc, VipDailyWageState, VipDailyWageModel?>(
            selector: (state) => state.vipDailyWageModelObj,
            builder: (context, vipDailyWageModelObj) {
              return ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.h);
                },
                itemCount:
                    vipDailyWageModelObj?.listgroup1248ItemList.length ?? 0,
                itemBuilder: (context, index) {
                  Listgroup1248ItemModel model =
                      vipDailyWageModelObj?.listgroup1248ItemList[index] ??
                      Listgroup1248ItemModel();
                  return Listgroup1248ItemWidget(model);
                },
              );
            },
          ),
    );
  }

  /// Section Widget
  Widget _buildExpandablelistc(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child:
          BlocSelector<VipDailyWageBloc, VipDailyWageState, VipDailyWageModel?>(
            selector: (state) => state.vipDailyWageModelObj,
            builder: (context, vipDailyWageModelObj) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount:
                    vipDailyWageModelObj?.expandablelistcItemList.length ?? 0,
                itemBuilder: (context, index) {
                  ExpandablelistcItemModel model =
                      vipDailyWageModelObj?.expandablelistcItemList[index] ??
                      ExpandablelistcItemModel();
                  return ExpandablelistcItemWidget(model);
                },
              );
            },
          ),
    );
  }

  /// Section Widget
  Widget _buildStackupgrade(BuildContext context) {
    return Container(
      height: 510.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 14.h),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(right: 18.h),
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              decoration: AppDecoration.fs4bg.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Column(
                spacing: 14,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomElevatedButton(
                    height: 38.h,
                    text: "msg_upgrade_vip_requirements".tr,
                    margin: EdgeInsets.only(left: 22.h, right: 20.h),
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientBlueGrayToBlueGrayDecoration,
                    buttonTextStyle: theme.textTheme.titleMedium!,
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
                          padding: EdgeInsets.symmetric(horizontal: 12.h),
                          decoration: AppDecoration
                              .gradientLightGreenAToLightgreen90005
                              .copyWith(
                                borderRadius: BorderRadiusStyle.customBorderTL5,
                              ),
                          width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 34.h,
                                child: Text(
                                  "lbl_vip_level".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style:
                                      CustomTextStyles
                                          .labelLargeOnPrimaryBlack_1,
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
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: _buildColumnbetamount(
                                    context,
                                    betamountOne: "lbl_deposit_amount".tr,
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                width: 1.h,
                                thickness: 1.h,
                                color: appTheme.lightGreen9007f,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: _buildColumnbetamount(
                                    context,
                                    betamountOne: "lbl_bet_amount".tr,
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                width: 1.h,
                                thickness: 1.h,
                                color: appTheme.lightGreen9007f,
                              ),
                              Expanded(
                                child: _buildColumnbn0one(
                                  context,
                                  bn0oneOne: ImageConstant.img20x26,
                                  weeklycashback: "lbl_upgrade_bonus".tr,
                                ),
                              ),
                              VerticalDivider(
                                width: 1.h,
                                thickness: 1.h,
                                color: appTheme.lightGreen9007f,
                              ),
                              Expanded(
                                child: _buildColumnbn0one(
                                  context,
                                  bn0oneOne: ImageConstant.imgBn01,
                                  weeklycashback: "lbl_weekly_cashback".tr,
                                ),
                              ),
                              VerticalDivider(
                                width: 1.h,
                                thickness: 1.h,
                                color: appTheme.lightGreen9007f,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            spacing: 4,
                            children: [
                              BlocSelector<
                                VipDailyWageBloc,
                                VipDailyWageState,
                                VipDailyWageModel?
                              >(
                                selector: (state) => state.vipDailyWageModelObj,
                                builder: (context, vipDailyWageModelObj) {
                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(height: 4.h);
                                    },
                                    itemCount:
                                        vipDailyWageModelObj
                                            ?.listlv1OneItemList
                                            .length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      Listlv1OneItemModel model =
                                          vipDailyWageModelObj
                                              ?.listlv1OneItemList[index] ??
                                          Listlv1OneItemModel();
                                      return Listlv1OneItemWidget(model);
                                    },
                                  );
                                },
                              ),
                              BlocSelector<
                                VipDailyWageBloc,
                                VipDailyWageState,
                                VipDailyWageModel?
                              >(
                                selector: (state) => state.vipDailyWageModelObj,
                                builder: (context, vipDailyWageModelObj) {
                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(height: 2.h);
                                    },
                                    itemCount:
                                        vipDailyWageModelObj
                                            ?.listlv6OneItemList
                                            .length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      Listlv6OneItemModel model =
                                          vipDailyWageModelObj
                                              ?.listlv6OneItemList[index] ??
                                          Listlv6OneItemModel();
                                      return Listlv6OneItemWidget(model);
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
          ),
          Container(
            height: 422.h,
            width: 42.h,
            margin: EdgeInsets.only(bottom: 18.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "lbl_daily_salary".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.labelLargeGray200,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.h),
                          child: Text(
                            "lbl_0".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl_2902".tr,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      SizedBox(height: 22.h),
                      Text(
                        "lbl_100_1000".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 22.h),
                      Text(
                        "lbl_100_1000".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        "lbl_100_1000".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        "lbl_100_1000".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        "lbl_100_1000".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        "lbl_100_1000".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        "lbl_100_1000".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        "lbl_100_1000".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage285,
                  height: 20.h,
                  width: 20.h,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildColumnbetamount(
    BuildContext context, {
    required String betamountOne,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img8411641,
            height: 16.h,
            width: 22.h,
          ),
          Text(
            betamountOne,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.labelLargeGray200.copyWith(
              color: appTheme.gray200,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildColumnbn0one(
    BuildContext context, {
    required String bn0oneOne,
    required String weeklycashback,
  }) {
    return Column(
      children: [
        CustomImageView(imagePath: bn0oneOne, height: 20.h, width: 28.h),
        Text(
          weeklycashback,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: CustomTextStyles.labelLargeGray200.copyWith(
            color: appTheme.gray200,
          ),
        ),
      ],
    );
  }
}
