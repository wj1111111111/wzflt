import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_rating_bar.dart';
import 'bloc/state_1_prize_not_claimed_this_bloc.dart';
import 'models/state_1_prize_not_claimed_this_model.dart';

// ignore_for_file: must_be_immutable
class State1PrizeNotClaimedThisScreen extends StatelessWidget {
  State1PrizeNotClaimedThisScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<State1PrizeNotClaimedThisBloc>(
      create:
          (context) => State1PrizeNotClaimedThisBloc(
            State1PrizeNotClaimedThisState(
              state1PrizeNotClaimedThisModelObj:
                  State1PrizeNotClaimedThisModel(),
            ),
          )..add(State1PrizeNotClaimedThisInitialEvent()),
      child: State1PrizeNotClaimedThisScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      State1PrizeNotClaimedThisBloc,
      State1PrizeNotClaimedThisState
    >(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  height: 902.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 284.h),
                          padding: EdgeInsets.symmetric(horizontal: 14.h),
                          decoration: AppDecoration.fs15.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL81,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 4.h),
                              CustomImageView(
                                imagePath: ImageConstant.img136x36,
                                height: 36.h,
                                width: 36.h,
                              ),
                              Text(
                                "lbl_live".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildStack877aca258c(context),
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [_buildRow3b4bde395738(context)],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img9,
                        height: 130.h,
                        width: double.maxFinite,
                        radius: BorderRadius.circular(8.h),
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 152.h),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 284.h,
                          margin: EdgeInsets.only(right: 16.h),
                          child: Column(
                            spacing: 12,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 58.h,
                                width: double.maxFinite,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 44.h,
                                        decoration: AppDecoration
                                            .gradientBlackToBlack
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .roundedBorder5,
                                            ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgIntersect,
                                              height: 42.h,
                                              width: double.maxFinite,
                                              radius: BorderRadius.circular(
                                                3.h,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 58.h,
                                      margin: EdgeInsets.only(right: 4.h),
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.img154x70,
                                            height: 54.h,
                                            width: 72.h,
                                            radius: BorderRadius.circular(3.h),
                                            alignment: Alignment.centerLeft,
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.img118x30,
                                            height: 18.h,
                                            width: 32.h,
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(left: 80.h),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.img218x30,
                                            height: 18.h,
                                            width: 32.h,
                                            alignment: Alignment.topRight,
                                            margin: EdgeInsets.only(
                                              right: 58.h,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgJackpot1,
                                            height: 22.h,
                                            width: 88.h,
                                            alignment: Alignment.topRight,
                                            margin: EdgeInsets.only(
                                              right: 84.h,
                                            ),
                                          ),
                                          Text(
                                            "lbl_14_091_688_88".tr,
                                            style:
                                                CustomTextStyles
                                                    .headlineSmallYellowA20001,
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
                                    Expanded(
                                      child: Container(
                                        height: 88.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.img231000,
                                              height: 88.h,
                                              width: 88.h,
                                              radius: BorderRadius.circular(
                                                4.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .imgTelevisionYellowA70003,
                                              height: 18.h,
                                              width: 36.h,
                                              alignment: Alignment.topLeft,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 88.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.img491000,
                                              height: 88.h,
                                              width: 88.h,
                                              radius: BorderRadius.circular(
                                                4.h,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                height: 18.h,
                                                width: 34.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.blueGray80006,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                              2.h,
                                                            ),
                                                        bottomRight:
                                                            Radius.circular(
                                                              6.h,
                                                            ),
                                                      ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: appTheme.black900
                                                          .withValues(
                                                            alpha: 0.25,
                                                          ),
                                                      spreadRadius: 2.h,
                                                      blurRadius: 2.h,
                                                      offset: Offset(0, 1),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.maxFinite,
                                        decoration: AppDecoration
                                            .fillBluegray90023
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .roundedBorder5,
                                            ),
                                        child: Column(
                                          spacing: 16,
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 18.h,
                                              width: 34.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.blueGray80007,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(4.h),
                                                  bottomRight: Radius.circular(
                                                    6.h,
                                                  ),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: appTheme.black900
                                                        .withValues(
                                                          alpha: 0.15,
                                                        ),
                                                    spreadRadius: 2.h,
                                                    blurRadius: 2.h,
                                                    offset: Offset(0, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Opacity(
                                              opacity: 0.2,
                                              child: CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgLogoWj93120x56,
                                                height: 20.h,
                                                width: double.maxFinite,
                                                radius: BorderRadius.circular(
                                                  4.h,
                                                ),
                                                margin: EdgeInsets.symmetric(
                                                  horizontal: 16.h,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 32.h),
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
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 88.h,
                          width: 90.h,
                          margin: EdgeInsets.only(right: 16.h, bottom: 264.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img911000,
                                height: 88.h,
                                width: 88.h,
                                radius: BorderRadius.circular(4.h),
                              ),
                              Container(
                                height: 88.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgBaccarat1,
                                      height: 88.h,
                                      width: 88.h,
                                      radius: BorderRadius.circular(4.h),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                        width: double.maxFinite,
                                        child: Column(
                                          spacing: 26,
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgFrame1003,
                                              height: 18.h,
                                              width: 36.h,
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: 18.h,
                                                width: 16.h,
                                                decoration: AppDecoration
                                                    .fillRed
                                                    .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder5,
                                                    ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "lbl_12".tr,
                                                      style:
                                                          CustomTextStyles
                                                              .labelLargeOnPrimaryBlack,
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
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 88.h,
                          width: 90.h,
                          margin: EdgeInsets.only(right: 16.h, bottom: 136.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img441000,
                                height: 88.h,
                                width: 88.h,
                                radius: BorderRadius.circular(4.h),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgTelevisionAmberA40003,
                                height: 18.h,
                                width: 36.h,
                                alignment: Alignment.topLeft,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 88.h,
                          width: 90.h,
                          margin: EdgeInsets.only(right: 112.h, bottom: 264.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img211000,
                                height: 88.h,
                                width: 88.h,
                                radius: BorderRadius.circular(4.h),
                              ),
                              Container(
                                height: 88.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgBaccarat288x88,
                                      height: 88.h,
                                      width: 88.h,
                                      radius: BorderRadius.circular(4.h),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgFrame1003,
                                      height: 18.h,
                                      width: 36.h,
                                      alignment: Alignment.topLeft,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 88.h,
                          width: 90.h,
                          margin: EdgeInsets.only(right: 112.h, bottom: 136.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img431000,
                                height: 88.h,
                                width: 88.h,
                                radius: BorderRadius.circular(4.h),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgTelevisionAmberA40003,
                                height: 18.h,
                                width: 36.h,
                                alignment: Alignment.topLeft,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 114.h,
                          width: 96.h,
                          margin: EdgeInsets.only(left: 70.h, bottom: 238.h),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 88.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.img102X1000,
                                        height: 88.h,
                                        width: 88.h,
                                        radius: BorderRadius.circular(4.h),
                                      ),
                                      Container(
                                        height: 88.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .img1Baccarat188x88,
                                              height: 88.h,
                                              width: 88.h,
                                              radius: BorderRadius.circular(
                                                4.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgFrame1003,
                                              height: 18.h,
                                              width: 36.h,
                                              alignment: Alignment.topLeft,
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
                                  spacing: 16,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.img6568,
                                      height: 48.h,
                                      width: 52.h,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        width: 52.h,
                                        margin: EdgeInsets.only(right: 18.h),
                                        decoration:
                                            AppDecoration.outlineBlack900,
                                        child: Text(
                                          "lbl_roma_x".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style:
                                              CustomTextStyles
                                                  .labelLargeNotoSans,
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
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 88.h,
                          width: 90.h,
                          margin: EdgeInsets.only(left: 76.h, bottom: 136.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img277771000,
                                height: 88.h,
                                width: 88.h,
                                radius: BorderRadius.circular(4.h),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgTelevisionAmberA40003,
                                height: 18.h,
                                width: 36.h,
                                alignment: Alignment.topLeft,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 90.h,
                          margin: EdgeInsets.only(left: 76.h, bottom: 366.h),
                          decoration: AppDecoration.outlineBlack900,
                          child: Text(
                            "msg_fortune_ox_fortune".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLargeNotoSans,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 52.h,
                          margin: EdgeInsets.only(left: 96.h, bottom: 110.h),
                          decoration: AppDecoration.outlineBlack900,
                          child: Text(
                            "lbl_roma_x".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLargeNotoSans,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 66.h,
                          margin: EdgeInsets.only(right: 124.h, bottom: 366.h),
                          decoration: AppDecoration.outlineBlack900,
                          child: Text(
                            "lbl_super_ace".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLargeNotoSans,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 90.h,
                          margin: EdgeInsets.only(right: 112.h, bottom: 238.h),
                          decoration: AppDecoration.outlineBlack900,
                          child: Text(
                            "lbl_diamond_party".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLargeNotoSans,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 90.h,
                          margin: EdgeInsets.only(right: 112.h, bottom: 110.h),
                          decoration: AppDecoration.outlineBlack900,
                          child: Text(
                            "lbl_diamond_party".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLargeNotoSans,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 90.h,
                          margin: EdgeInsets.only(right: 16.h, bottom: 366.h),
                          decoration: AppDecoration.outlineBlack900,
                          child: Text(
                            "lbl_money_coming".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLargeNotoSans,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 90.h,
                          margin: EdgeInsets.only(right: 16.h, bottom: 238.h),
                          decoration: AppDecoration.outlineBlack900,
                          child: Text(
                            "lbl_lucky_coming".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLargeNotoSans,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 90.h,
                          margin: EdgeInsets.only(right: 16.h, bottom: 110.h),
                          decoration: AppDecoration.outlineBlack900,
                          child: Text(
                            "lbl_lucky_coming".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLargeNotoSans,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 80.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.h,
                            vertical: 6.h,
                          ),
                          decoration: AppDecoration.fs15.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL81,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img736x36,
                                height: 36.h,
                                width: 36.h,
                              ),
                              Text(
                                "lbl_fish2".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 216.h),
                          padding: EdgeInsets.symmetric(horizontal: 14.h),
                          decoration: AppDecoration.fs15.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL81,
                          ),
                          child: Column(
                            spacing: 2,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 6.h),
                              CustomImageView(
                                imagePath: ImageConstant.img536x36,
                                height: 36.h,
                                width: 36.h,
                              ),
                              Text(
                                "lbl_bingo2".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 352.h),
                          padding: EdgeInsets.symmetric(horizontal: 14.h),
                          decoration: AppDecoration.fs15.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL81,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 6.h),
                              CustomImageView(
                                imagePath: ImageConstant.img10733643587,
                                height: 36.h,
                                width: 36.h,
                              ),
                              Text(
                                "lbl_slot".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 96.h,
                          width: 70.h,
                          margin: EdgeInsets.only(bottom: 114.h),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: double.maxFinite,
                                  decoration: AppDecoration.fs15.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL81,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 4.h),
                                      CustomImageView(
                                        imagePath: ImageConstant.img236x36,
                                        height: 36.h,
                                        width: 36.h,
                                      ),
                                      Text(
                                        "lbl_table".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.img6573,
                                height: 44.h,
                                width: 46.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                margin: EdgeInsets.only(left: 14.h, top: 108.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 36.h,
                                  vertical: 8.h,
                                ),
                                decoration: AppDecoration.fs9.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder1,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgTelevisionOnprimary,
                                      height: 10.h,
                                      width: 16.h,
                                    ),
                                    Text(
                                      "lbl_withdrawal".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: 108.h,
                                  right: 14.h,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 48.h,
                                  vertical: 6.h,
                                ),
                                decoration: AppDecoration.fs1.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder1,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgShare,
                                      height: 10.h,
                                      width: 16.h,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 2.h),
                                        child: Text(
                                          "lbl_deposit".tr,
                                          style: theme.textTheme.titleSmall,
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
                      CustomImageView(
                        imagePath: ImageConstant.imgLogoWj93128x78,
                        height: 28.h,
                        width: 80.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 14.h, top: 76.h),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 80.h, right: 44.h),
                          child: Text(
                            "lbl_r_1980_00".tr,
                            style: CustomTextStyles.titleMediumAmber600_2,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 16.h,
                        width: 16.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 82.h, right: 128.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img1,
                        height: 14.h,
                        width: 18.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 84.h, right: 16.h),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 132.h,
                          width: 74.h,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: double.maxFinite,
                                  padding: EdgeInsets.only(
                                    left: 12.h,
                                    top: 6.h,
                                    bottom: 6.h,
                                  ),
                                  decoration: AppDecoration.column299,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.img12,
                                        height: 36.h,
                                        width: 36.h,
                                        margin: EdgeInsets.only(left: 2.h),
                                      ),
                                      Text(
                                        "lbl_collect".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                      SizedBox(height: 40.h),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: double.maxFinite,
                                margin: EdgeInsets.only(right: 6.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 2.h,
                                ),
                                decoration: AppDecoration.gradientAmberToAmber
                                    .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL81,
                                    ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 4.h),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgFire,
                                      height: 36.h,
                                      width: double.maxFinite,
                                    ),
                                    Text(
                                      "lbl_hot".tr,
                                      style:
                                          CustomTextStyles
                                              .labelLargeBluegray90007,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [_buildRowuserone(context)],
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: SizeUtils.height,
                          width: 374.h,
                          decoration: BoxDecoration(
                            color: appTheme.black900.withValues(alpha: 0.8),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6554,
                        height: 54.h,
                        width: 54.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 34.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6563,
                        height: 70.h,
                        width: 70.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 74.h, top: 88.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6564,
                        height: 60.h,
                        width: 56.h,
                        alignment: Alignment.topLeft,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6563,
                        height: 70.h,
                        width: 70.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 100.h, right: 84.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6563,
                        height: 70.h,
                        width: 70.h,
                        margin: EdgeInsets.only(bottom: 150.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6563,
                        height: 70.h,
                        width: 70.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 2.h, bottom: 246.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6567,
                        height: 52.h,
                        width: 54.h,
                        margin: EdgeInsets.only(bottom: 234.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6567,
                        height: 52.h,
                        width: 54.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 78.h, bottom: 256.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6568,
                        height: 48.h,
                        width: 52.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 14.h, bottom: 190.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6568,
                        height: 48.h,
                        width: 52.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 104.h, bottom: 108.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6568,
                        height: 48.h,
                        width: 52.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 100.h, bottom: 110.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6555,
                        height: 48.h,
                        width: 54.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 34.h, right: 26.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6572,
                        height: 44.h,
                        width: 52.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 100.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6555,
                        height: 48.h,
                        width: 54.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 66.h, bottom: 178.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6573,
                        height: 44.h,
                        width: 46.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 94.h, bottom: 200.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6576,
                        height: 44.h,
                        width: 46.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 132.h, bottom: 266.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6573,
                        height: 44.h,
                        width: 46.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 42.h, top: 52.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6582,
                        height: 36.h,
                        width: 38.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 234.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6573,
                        height: 44.h,
                        width: 46.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 114.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6573,
                        height: 44.h,
                        width: 46.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 88.h, right: 2.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6573,
                        height: 44.h,
                        width: 46.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 122.h, right: 40.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6573,
                        height: 44.h,
                        width: 46.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(right: 82.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6574,
                        height: 44.h,
                        width: 44.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 32.h, bottom: 264.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6555,
                        height: 48.h,
                        width: 54.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 18.h, bottom: 102.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img6558,
                        height: 48.h,
                        width: 44.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 234.h),
                      ),
                      _buildStackclosefive(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: SizedBox(
            width: double.maxFinite,
            child: _buildBottomappbarnav(context),
          ),
          floatingActionButton: CustomFloatingButton(
            height: 54,
            width: 54,
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStack877aca258c(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 68.h,
        decoration: AppDecoration.gradientLightGreenAToLightgreen8001,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.4,
              child: CustomImageView(
                imagePath: ImageConstant.img877aca258c7f461,
                height: 68.h,
                width: double.maxFinite,
              ),
            ),
            Container(
              height: 68.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  SizedBox(
                    height: 68.h,
                    width: 280.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: 0.4,
                          child: CustomImageView(
                            imagePath: ImageConstant.img877aca258c7f46168x278,
                            height: 68.h,
                            width: double.maxFinite,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.maxFinite,
                              margin: EdgeInsets.symmetric(horizontal: 12.h),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.img112,
                                    height: 50.h,
                                    width: 50.h,
                                    radius: BorderRadius.circular(8.h),
                                  ),
                                  Expanded(
                                    child: Column(
                                      spacing: 2,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 128.h,
                                          child: Text(
                                            "msg_many_benefits_for".tr
                                                .toUpperCase(),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .labelLargeOnPrimary_6
                                                .copyWith(height: 1.17),
                                          ),
                                        ),
                                        CustomRatingBar(initialRating: 5),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomElevatedButton(
                                    height: 32.h,
                                    width: 96.h,
                                    text: "lbl_download".tr,
                                    margin: EdgeInsets.only(top: 18.h),
                                    buttonTextStyle:
                                        CustomTextStyles
                                            .titleSmallNotoSansLightgreen800,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                  Container(
                                    height: 26.h,
                                    width: 26.h,
                                    margin: EdgeInsets.only(left: 4.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: 14.h,
                                            width: 14.h,
                                            margin: EdgeInsets.only(
                                              top: 4.h,
                                              right: 2.h,
                                            ),
                                            decoration: BoxDecoration(
                                              color: appTheme.lightGreen800,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant
                                                  .imgCloseLightGreen400,
                                          height: 26.h,
                                          width: 26.h,
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
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRow3b4bde395738(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(left: 14.h, top: 300.h, right: 14.h),
          padding: EdgeInsets.all(6.h),
          decoration: AppDecoration.fs4bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder14,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img3b4bde395738f0c,
                height: 18.h,
                width: 26.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl6".tr,
                        style: CustomTextStyles.bodyMediumLightgreenA700_1,
                      ),
                      TextSpan(
                        text: "msg_the_recharge_of".tr,
                        style: CustomTextStyles.titleSmallLightgreenA700_1,
                      ),
                      TextSpan(
                        text: "lbl_e".tr,
                        style: CustomTextStyles.bodyMediumLightgreenA700_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
                height: 16.h,
                width: 18.h,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_the_recharge".tr,
                    style: CustomTextStyles.titleSmallLightgreenA700,
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
  Widget _buildRowuserone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserGreen90012,
            height: 56.h,
            width: 56.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 8.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Container(
                  width: 66.h,
                  padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 8.h),
                  decoration: AppDecoration.outlineLightgreen80003.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder30,
                  ),
                  child: Column(
                    spacing: 10,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVip7,
                        height: 50.h,
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(horizontal: 4.h),
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: Divider(
                          color: appTheme.green90013,
                          indent: 4.h,
                          endIndent: 2.h,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup11853,
                        height: 50.h,
                        width: 50.h,
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: Divider(
                          color: appTheme.green90013,
                          indent: 4.h,
                          endIndent: 2.h,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLockIndigoA70001,
                        height: 50.h,
                        width: 50.h,
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: Divider(
                          color: appTheme.green90013,
                          indent: 4.h,
                          endIndent: 2.h,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUserLightGreenA700,
                        height: 52.h,
                        width: 50.h,
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: Divider(
                          color: appTheme.green90013,
                          indent: 4.h,
                          endIndent: 2.h,
                        ),
                      ),
                      CustomIconButton(
                        height: 56.h,
                        width: 56.h,
                        padding: EdgeInsets.all(2.h),
                        decoration: IconButtonStyleHelper.fillGreenTL28,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCloseLightGreenA70056x56,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackclosefive(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 364.h,
        margin: EdgeInsets.only(left: 14.h, top: 192.h, right: 14.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.maxFinite,
              decoration: AppDecoration.gradientOrangeAToRed.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder14,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.h),
                  Padding(
                    padding: EdgeInsets.only(right: 6.h),
                    child: CustomIconButton(
                      height: 28.h,
                      width: 28.h,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.fillGray,
                      alignment: Alignment.centerRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCloseOnprimary20x20,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 14.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.h,
                      vertical: 8.h,
                    ),
                    decoration: AppDecoration.gradientOrangeToOrange20001
                        .copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder10,
                        ),
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          spacing: 28,
                          children: [
                            Text(
                              "lbl17".tr,
                              style: CustomTextStyles.headlineSmallOrange80002,
                            ),
                            Text(
                              "lbl17".tr,
                              style: CustomTextStyles.headlineSmallOrange80002,
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 226.h,
                            margin: EdgeInsets.only(
                              left: 6.h,
                              top: 4.h,
                              bottom: 2.h,
                            ),
                            child: Text(
                              "msg_recharge_users_can".tr,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleLargeOrange80002
                                  .copyWith(height: 1.10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6.h),
                  SizedBox(
                    height: 164.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img861719112,
                          height: 92.h,
                          width: double.maxFinite,
                          radius: BorderRadius.vertical(
                            bottom: Radius.circular(12.h),
                          ),
                          alignment: Alignment.bottomCenter,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: EdgeInsets.only(top: 18.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 14.h,
                              vertical: 10.h,
                            ),
                            decoration: AppDecoration.gradientYellowToOrangeA
                                .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder24,
                                ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: AppDecoration.outlineYellowA40004,
                                  child: Text(
                                    "lbl_turn_to_luck".tr,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.titleLargeRed50001,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup12503,
                          height: 156.h,
                          width: double.maxFinite,
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
                height: 46.h,
                width: 182.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img2858,
                      height: 46.h,
                      width: double.maxFinite,
                    ),
                    Text(
                      "lbl_money_rain".tr,
                      style: CustomTextStyles.titleLargeOrangeA70002,
                    ),
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
  Widget _buildBottomappbarnav(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomAppBar(onChanged: (BottomBarEnum type) {}),
    );
  }
}
