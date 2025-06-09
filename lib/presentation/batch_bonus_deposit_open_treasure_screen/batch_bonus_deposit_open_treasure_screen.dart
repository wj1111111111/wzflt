import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_rating_bar.dart';
import 'bloc/batch_bonus_deposit_open_treasure_bloc.dart';
import 'models/batch_bonus_deposit_open_treasure_model.dart';

// ignore_for_file: must_be_immutable
class BatchBonusDepositOpenTreasureScreen extends StatelessWidget {
  BatchBonusDepositOpenTreasureScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<BatchBonusDepositOpenTreasureBloc>(
      create:
          (context) => BatchBonusDepositOpenTreasureBloc(
            BatchBonusDepositOpenTreasureState(
              batchBonusDepositOpenTreasureModelObj:
                  BatchBonusDepositOpenTreasureModel(),
            ),
          )..add(BatchBonusDepositOpenTreasureInitialEvent()),
      child: BatchBonusDepositOpenTreasureScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      BatchBonusDepositOpenTreasureBloc,
      BatchBonusDepositOpenTreasureState
    >(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  height: 1048.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 958.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 340.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14.h,
                                  ),
                                  decoration: AppDecoration.fs15.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL81,
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
                              _buildColumnlogowj93o(context),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 284.h,
                                  margin: EdgeInsets.only(
                                    top: 350.h,
                                    right: 16.h,
                                  ),
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
                                                          ImageConstant
                                                              .imgIntersect,
                                                      height: 42.h,
                                                      width: double.maxFinite,
                                                      radius:
                                                          BorderRadius.circular(
                                                            3.h,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 58.h,
                                              margin: EdgeInsets.only(
                                                right: 4.h,
                                              ),
                                              child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.img154x70,
                                                    height: 54.h,
                                                    width: 72.h,
                                                    radius:
                                                        BorderRadius.circular(
                                                          3.h,
                                                        ),
                                                    alignment:
                                                        Alignment.centerLeft,
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.img118x30,
                                                    height: 18.h,
                                                    width: 32.h,
                                                    alignment:
                                                        Alignment.topLeft,
                                                    margin: EdgeInsets.only(
                                                      left: 80.h,
                                                    ),
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.img218x30,
                                                    height: 18.h,
                                                    width: 32.h,
                                                    alignment:
                                                        Alignment.topRight,
                                                    margin: EdgeInsets.only(
                                                      right: 58.h,
                                                    ),
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .imgJackpot1,
                                                    height: 22.h,
                                                    width: 88.h,
                                                    alignment:
                                                        Alignment.topRight,
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
                                                          ImageConstant
                                                              .img231000,
                                                      height: 88.h,
                                                      width: 88.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                            4.h,
                                                          ),
                                                    ),
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .imgTelevisionYellowA70003,
                                                      height: 18.h,
                                                      width: 36.h,
                                                      alignment:
                                                          Alignment.topLeft,
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
                                                          ImageConstant
                                                              .img491000,
                                                      height: 88.h,
                                                      width: 88.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                            4.h,
                                                          ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Container(
                                                        height: 18.h,
                                                        width: 34.h,
                                                        decoration: BoxDecoration(
                                                          color:
                                                              appTheme
                                                                  .blueGray80006,
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
                                                              color: appTheme
                                                                  .black900
                                                                  .withValues(
                                                                    alpha: 0.25,
                                                                  ),
                                                              spreadRadius: 2.h,
                                                              blurRadius: 2.h,
                                                              offset: Offset(
                                                                0,
                                                                1,
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 18.h,
                                                      width: 34.h,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            appTheme
                                                                .blueGray80007,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                              topLeft:
                                                                  Radius.circular(
                                                                    4.h,
                                                                  ),
                                                              bottomRight:
                                                                  Radius.circular(
                                                                    6.h,
                                                                  ),
                                                            ),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: appTheme
                                                                .black900
                                                                .withValues(
                                                                  alpha: 0.15,
                                                                ),
                                                            spreadRadius: 2.h,
                                                            blurRadius: 2.h,
                                                            offset: Offset(
                                                              0,
                                                              2,
                                                            ),
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
                                                        radius:
                                                            BorderRadius.circular(
                                                              4.h,
                                                            ),
                                                        margin:
                                                            EdgeInsets.symmetric(
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
                                  width: 90.h,
                                  margin: EdgeInsets.only(
                                    right: 16.h,
                                    bottom: 64.h,
                                  ),
                                  child: Column(
                                    spacing: 12,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: 88.h,
                                        width: double.maxFinite,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.img911000,
                                              height: 88.h,
                                              width: 88.h,
                                              radius: BorderRadius.circular(
                                                4.h,
                                              ),
                                            ),
                                            Container(
                                              height: 88.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .imgBaccarat1,
                                                    height: 88.h,
                                                    width: 88.h,
                                                    radius:
                                                        BorderRadius.circular(
                                                          4.h,
                                                        ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: SizedBox(
                                                      width: double.maxFinite,
                                                      child: Column(
                                                        spacing: 26,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgFrame1003,
                                                            height: 18.h,
                                                            width: 36.h,
                                                          ),
                                                          Align(
                                                            alignment:
                                                                Alignment
                                                                    .center,
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
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
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
                                      Container(
                                        decoration:
                                            AppDecoration.outlineBlack900,
                                        width: double.maxFinite,
                                        child: Text(
                                          "lbl_lucky_coming".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style:
                                              CustomTextStyles
                                                  .labelLargeNotoSans,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 88.h,
                                        width: double.maxFinite,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.img441000,
                                              height: 88.h,
                                              width: 88.h,
                                              radius: BorderRadius.circular(
                                                4.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .imgTelevisionAmberA40003,
                                              height: 18.h,
                                              width: 36.h,
                                              alignment: Alignment.topLeft,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration:
                                            AppDecoration.outlineBlack900,
                                        width: double.maxFinite,
                                        child: Text(
                                          "lbl_lucky_coming".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style:
                                              CustomTextStyles
                                                  .labelLargeNotoSans,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 88.h,
                                        width: double.maxFinite,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgJdbSlot092,
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
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 88.h,
                                  width: 90.h,
                                  margin: EdgeInsets.only(
                                    right: 112.h,
                                    bottom: 320.h,
                                  ),
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
                                                  ImageConstant
                                                      .imgBaccarat288x88,
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
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 88.h,
                                  width: 90.h,
                                  margin: EdgeInsets.only(
                                    right: 112.h,
                                    bottom: 64.h,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.img461000,
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
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 88.h,
                                  width: 90.h,
                                  margin: EdgeInsets.only(
                                    right: 112.h,
                                    bottom: 192.h,
                                  ),
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
                                            ImageConstant
                                                .imgTelevisionAmberA40003,
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
                                  margin: EdgeInsets.only(
                                    left: 76.h,
                                    bottom: 64.h,
                                  ),
                                  child: Column(
                                    spacing: 12,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        decoration:
                                            AppDecoration.outlineBlack900,
                                        width: double.maxFinite,
                                        child: Text(
                                          "msg_fortune_ox_fortune".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style:
                                              CustomTextStyles
                                                  .labelLargeNotoSans,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 88.h,
                                        width: double.maxFinite,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.img102X1000,
                                              height: 88.h,
                                              width: 88.h,
                                              radius: BorderRadius.circular(
                                                4.h,
                                              ),
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
                                                    radius:
                                                        BorderRadius.circular(
                                                          4.h,
                                                        ),
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .imgFrame1003,
                                                    height: 18.h,
                                                    width: 36.h,
                                                    alignment:
                                                        Alignment.topLeft,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 52.h,
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
                                      SizedBox(
                                        height: 88.h,
                                        width: double.maxFinite,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.img277771000,
                                              height: 88.h,
                                              width: 88.h,
                                              radius: BorderRadius.circular(
                                                4.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .imgTelevisionAmberA40003,
                                              height: 18.h,
                                              width: 36.h,
                                              alignment: Alignment.topLeft,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 52.h,
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
                                      SizedBox(
                                        height: 88.h,
                                        width: double.maxFinite,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.img471000,
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
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  width: double.maxFinite,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [_buildRowspacertwo(context)],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  width: 66.h,
                                  margin: EdgeInsets.only(
                                    right: 124.h,
                                    bottom: 422.h,
                                  ),
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
                                  margin: EdgeInsets.only(
                                    right: 112.h,
                                    bottom: 294.h,
                                  ),
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
                                  margin: EdgeInsets.only(
                                    right: 112.h,
                                    bottom: 166.h,
                                  ),
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
                                  margin: EdgeInsets.only(
                                    right: 16.h,
                                    bottom: 422.h,
                                  ),
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
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 136.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14.h,
                                  ),
                                  decoration: AppDecoration.fs15.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL81,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 4.h),
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
                                  margin: EdgeInsets.only(bottom: 272.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14.h,
                                  ),
                                  decoration: AppDecoration.fs15.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL81,
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
                                  margin: EdgeInsets.only(bottom: 68.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.h,
                                    vertical: 4.h,
                                  ),
                                  decoration: AppDecoration.fs15.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL81,
                                  ),
                                  child: Column(
                                    spacing: 2,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 2.h),
                                      CustomImageView(
                                        imagePath: ImageConstant.img336x36,
                                        height: 36.h,
                                        width: 36.h,
                                      ),
                                      Text(
                                        "lbl_egame".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14.h,
                                  ),
                                  decoration: AppDecoration.fs15.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL81,
                                  ),
                                  child: Column(
                                    spacing: 2,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 6.h),
                                      CustomImageView(
                                        imagePath: ImageConstant.img636x36,
                                        height: 36.h,
                                        width: 36.h,
                                      ),
                                      Text(
                                        "lbl_sport".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14.h,
                                  ),
                                  decoration: AppDecoration.fs15.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL81,
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
                                  margin: EdgeInsets.only(bottom: 204.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14.h,
                                  ),
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
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 132.h,
                                  width: 74.h,
                                  margin: EdgeInsets.only(top: 350.h),
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
                                          decoration: AppDecoration.column399,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant.img12,
                                                height: 36.h,
                                                width: 36.h,
                                                margin: EdgeInsets.only(
                                                  left: 2.h,
                                                ),
                                              ),
                                              Text(
                                                "lbl_collect".tr,
                                                style:
                                                    theme.textTheme.labelLarge,
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
                                        decoration: AppDecoration
                                            .gradientAmberToAmber70003
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .customBorderTL81,
                                            ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  width: double.maxFinite,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [_buildRowuserone(context)],
                                  ),
                                ),
                              ),
                              Container(
                                width: double.maxFinite,
                                decoration: AppDecoration.fillBlack9004,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    _buildStack877aca258c(context),
                                    Spacer(flex: 31),
                                    Padding(
                                      padding: EdgeInsets.only(right: 14.h),
                                      child: CustomIconButton(
                                        height: 32.h,
                                        width: 32.h,
                                        padding: EdgeInsets.all(8.h),
                                        decoration:
                                            IconButtonStyleHelper.fillGrayTL16,
                                        alignment: Alignment.centerRight,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant
                                                  .imgCloseOnprimary20x20,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 2.h),
                                    _buildStackfive(context),
                                    Spacer(flex: 68),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildColumnspacer(context),
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
  Widget _buildColumnlogowj93o(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 14.h, top: 76.h, right: 14.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLogoWj93128x78,
                    height: 28.h,
                    width: 80.h,
                    alignment: Alignment.center,
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgLock,
                    height: 16.h,
                    width: 16.h,
                    margin: EdgeInsets.only(bottom: 4.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_r_1980_00".tr,
                      style: CustomTextStyles.titleMediumAmber600_2,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img1,
                    height: 14.h,
                    width: 18.h,
                    margin: EdgeInsets.only(left: 10.h, bottom: 4.h),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.h),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      text: "lbl_withdrawal".tr,
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 6.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgTelevisionOnprimary,
                          height: 10.h,
                          width: 16.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientAmberToAmberTL2Decoration,
                    ),
                  ),
                  Expanded(
                    child: CustomElevatedButton(
                      text: "lbl_deposit".tr,
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 6.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgShare,
                          height: 10.h,
                          width: 16.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles
                              .gradientLightGreenAToLightGreenTL2Decoration,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            CustomImageView(
              imagePath: ImageConstant.img9,
              height: 130.h,
              width: double.maxFinite,
              radius: BorderRadius.circular(8.h),
            ),
            SizedBox(height: 16.h),
            Container(
              padding: EdgeInsets.all(6.h),
              decoration: AppDecoration.fs4bg.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder14,
              ),
              width: double.maxFinite,
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
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowspacertwo(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 38.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Container(
                width: 52.h,
                decoration: AppDecoration.outlineBlack900,
                child: Text(
                  "lbl_roma_x".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeNotoSans,
                ),
              ),
              Container(
                width: 90.h,
                margin: EdgeInsets.only(left: 28.h),
                decoration: AppDecoration.outlineBlack900,
                child: Text(
                  "lbl_diamond_party".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeNotoSans,
                ),
              ),
              Container(
                width: 90.h,
                margin: EdgeInsets.only(left: 8.h),
                decoration: AppDecoration.outlineBlack900,
                child: Text(
                  "lbl_lucky_coming".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeNotoSans,
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
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(left: 8.h, right: 8.h, bottom: 56.h),
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
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.h,
                        vertical: 8.h,
                      ),
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
                              imagePath:
                                  ImageConstant.imgCloseLightGreenA70056x56,
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
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStack877aca258c(BuildContext context) {
    return Container(
      height: 68.h,
      width: double.maxFinite,
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
                                            ImageConstant.imgCloseLightGreen400,
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
    );
  }

  /// Section Widget
  Widget _buildStackfive(BuildContext context) {
    return Container(
      height: 346.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 6.h, right: 14.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 342.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img0867344,
                  height: 342.h,
                  width: double.maxFinite,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(
                      left: 26.h,
                      right: 26.h,
                      bottom: 30.h,
                    ),
                    child: Column(
                      spacing: 12,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 210.h,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 22.h),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.only(right: 14.h),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Container(
                                    height: 210.h,
                                    decoration: AppDecoration
                                        .gradientLightGreenToGreen
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.img11144x144,
                                          height: 144.h,
                                          width: 146.h,
                                          alignment: Alignment.topCenter,
                                        ),
                                        Container(
                                          width: double.maxFinite,
                                          margin: EdgeInsets.only(bottom: 12.h),
                                          child: Column(
                                            spacing: 10,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                height: 32.h,
                                                width: 98.h,
                                                child: Stack(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        bottom: 2.h,
                                                      ),
                                                      child: ImageFiltered(
                                                        imageFilter:
                                                            ImageFilter.blur(
                                                              sigmaX: 9.0,
                                                              sigmaY: 9.0,
                                                            ),
                                                        child: Container(
                                                          width:
                                                              double.maxFinite,
                                                          padding:
                                                              EdgeInsets.symmetric(
                                                                horizontal:
                                                                    26.h,
                                                              ),
                                                          decoration: AppDecoration
                                                              .outline20
                                                              .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder44,
                                                              ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Container(
                                                                height: 4.h,
                                                                width: 42.h,
                                                                decoration: BoxDecoration(
                                                                  color:
                                                                      appTheme
                                                                          .greenA400C6,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        20.h,
                                                                      ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 6.h,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                        width: double.maxFinite,
                                                        margin: EdgeInsets.only(
                                                          right: 6.h,
                                                        ),
                                                        decoration: AppDecoration
                                                            .fillBlack9007
                                                            .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder14,
                                                            ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              "lbl23".tr,
                                                              style:
                                                                  CustomTextStyles
                                                                      .headlineSmallYellow50002_1,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 30.h,
                                                  vertical: 2.h,
                                                ),
                                                decoration:
                                                    AppDecoration
                                                        .gradientAmberAToAmber,
                                                child: Text(
                                                  "msg_click_to_get_the".tr,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      CustomTextStyles
                                                          .titleSmallOrangeA70002,
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
                                height: 70.h,
                                width: 30.h,
                                decoration: AppDecoration.fillBlack9006
                                    .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                    ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant
                                              .imgArrowRightOnprimary24x12,
                                      height: 24.h,
                                      width: 14.h,
                                      radius: BorderRadius.circular(1.h),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgAlarm,
                              height: 12.h,
                              width: 10.h,
                            ),
                            Text(
                              "msg_time_left_to_collect_6day".tr,
                              style: CustomTextStyles.labelLargeBluegray70001,
                            ),
                          ],
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
            child: Container(
              height: 64.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 46.h,
                      width: 344.h,
                      decoration: BoxDecoration(
                        color: appTheme.green90008,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.h),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.black900.withValues(alpha: 0.25),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 64.h,
                    margin: EdgeInsets.only(left: 14.h),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 46.h),
                          padding: EdgeInsets.only(
                            left: 42.h,
                            top: 8.h,
                            bottom: 8.h,
                          ),
                          decoration: AppDecoration.column404,
                          child: Column(
                            spacing: 2,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "msg_vlp_exclusive_rewards".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              Text(
                                "msg_valid_within_seven".tr,
                                style:
                                    CustomTextStyles.labelLargeLightgreenA700,
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgV10,
                          height: 64.h,
                          width: 66.h,
                          alignment: Alignment.centerLeft,
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
    );
  }

  /// Section Widget
  Widget _buildColumnspacer(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                SizedBox(
                  height: 88.h,
                  width: 90.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img771000,
                        height: 88.h,
                        width: 88.h,
                        radius: BorderRadius.circular(2.h),
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
                Container(
                  height: 88.h,
                  width: 90.h,
                  margin: EdgeInsets.only(left: 8.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img401000,
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
                Container(
                  height: 88.h,
                  width: 90.h,
                  margin: EdgeInsets.only(left: 8.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgJdbSlot105,
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
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                Container(
                  width: 52.h,
                  decoration: AppDecoration.outlineBlack900,
                  child: Text(
                    "lbl_roma_x".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeNotoSans,
                  ),
                ),
                Container(
                  width: 90.h,
                  margin: EdgeInsets.only(left: 28.h),
                  decoration: AppDecoration.outlineBlack900,
                  child: Text(
                    "lbl_diamond_party".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeNotoSans,
                  ),
                ),
                Container(
                  width: 90.h,
                  margin: EdgeInsets.only(left: 8.h),
                  decoration: AppDecoration.outlineBlack900,
                  child: Text(
                    "lbl_lucky_coming".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeNotoSans,
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
  Widget _buildBottomappbarnav(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomAppBar(onChanged: (BottomBarEnum type) {}),
    );
  }
}
