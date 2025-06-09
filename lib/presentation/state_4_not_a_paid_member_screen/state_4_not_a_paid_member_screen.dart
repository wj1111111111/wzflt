import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_rating_bar.dart';
import 'bloc/state_4_not_a_paid_member_bloc.dart';
import 'models/state_4_not_a_paid_member_model.dart';

// ignore_for_file: must_be_immutable
class State4NotAPaidMemberScreen extends StatelessWidget {
  State4NotAPaidMemberScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<State4NotAPaidMemberBloc>(
      create:
          (context) => State4NotAPaidMemberBloc(
            State4NotAPaidMemberState(
              state4NotAPaidMemberModelObj: State4NotAPaidMemberModel(),
            ),
          )..add(State4NotAPaidMemberInitialEvent()),
      child: State4NotAPaidMemberScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<State4NotAPaidMemberBloc, State4NotAPaidMemberState>(
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
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: SizeUtils.height,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 194.h),
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
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  width: 284.h,
                                  margin: EdgeInsets.only(
                                    right: 16.h,
                                    bottom: 20.h,
                                  ),
                                  child: Column(
                                    spacing: 10,
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
                                      SizedBox(
                                        width: double.maxFinite,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration:
                                                    AppDecoration
                                                        .outlineBlack900,
                                                child: Text(
                                                  "msg_fortune_ox_fortune".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      CustomTextStyles
                                                          .labelLargeNotoSans,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 64.h,
                                              decoration:
                                                  AppDecoration.outlineBlack900,
                                              child: Text(
                                                "lbl_super_ace".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style:
                                                    CustomTextStyles
                                                        .labelLargeNotoSans,
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration:
                                                    AppDecoration
                                                        .outlineBlack900,
                                                child: Text(
                                                  "lbl_money_coming".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                                              .img102X1000,
                                                      height: 88.h,
                                                      width: 88.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                            4.h,
                                                          ),
                                                    ),
                                                    Container(
                                                      height: 88.h,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
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
                                                                Alignment
                                                                    .topLeft,
                                                          ),
                                                        ],
                                                      ),
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
                                                              .img211000,
                                                      height: 88.h,
                                                      width: 88.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                            4.h,
                                                          ),
                                                    ),
                                                    Container(
                                                      height: 88.h,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgBaccarat288x88,
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
                                                                Alignment
                                                                    .topLeft,
                                                          ),
                                                        ],
                                                      ),
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
                                                              .img911000,
                                                      height: 88.h,
                                                      width: 88.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                            4.h,
                                                          ),
                                                    ),
                                                    Container(
                                                      height: 88.h,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
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
                                                                Alignment
                                                                    .topCenter,
                                                            child: SizedBox(
                                                              width:
                                                                  double
                                                                      .maxFinite,
                                                              child: Column(
                                                                spacing: 26,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgFrame1003,
                                                                    height:
                                                                        18.h,
                                                                    width: 36.h,
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                      height:
                                                                          18.h,
                                                                      width:
                                                                          16.h,
                                                                      decoration: AppDecoration
                                                                          .fillRed
                                                                          .copyWith(
                                                                            borderRadius:
                                                                                BorderRadiusStyle.roundedBorder5,
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
                                                                                CustomTextStyles.labelLargeOnPrimaryBlack,
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
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: double.maxFinite,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 50.h,
                                              margin: EdgeInsets.only(
                                                left: 20.h,
                                              ),
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
                                            Expanded(
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  left: 28.h,
                                                ),
                                                decoration:
                                                    AppDecoration
                                                        .outlineBlack900,
                                                child: Text(
                                                  "lbl_diamond_party".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      CustomTextStyles
                                                          .labelLargeNotoSans,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  left: 8.h,
                                                ),
                                                decoration:
                                                    AppDecoration
                                                        .outlineBlack900,
                                                child: Text(
                                                  "lbl_lucky_coming".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                                              .img277771000,
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
                                                              .imgTelevisionAmberA40003,
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
                                                              .img431000,
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
                                                              .imgTelevisionAmberA40003,
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
                                                              .img441000,
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
                                                              .imgTelevisionAmberA40003,
                                                      height: 18.h,
                                                      width: 36.h,
                                                      alignment:
                                                          Alignment.topLeft,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 50.h,
                                              margin: EdgeInsets.only(
                                                left: 20.h,
                                              ),
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
                                            Expanded(
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  left: 28.h,
                                                ),
                                                decoration:
                                                    AppDecoration
                                                        .outlineBlack900,
                                                child: Text(
                                                  "lbl_diamond_party".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      CustomTextStyles
                                                          .labelLargeNotoSans,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  left: 8.h,
                                                ),
                                                decoration:
                                                    AppDecoration
                                                        .outlineBlack900,
                                                child: Text(
                                                  "lbl_lucky_coming".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                  margin: EdgeInsets.only(bottom: 126.h),
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
                                  margin: EdgeInsets.only(bottom: 262.h),
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
                                  margin: EdgeInsets.only(bottom: 58.h),
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
                                          decoration: AppDecoration.column307,
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
                                            .gradientAmberToAmber
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
                              Container(
                                height: SizeUtils.height,
                                decoration: AppDecoration.fillBlack9004,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
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
                                      margin: EdgeInsets.only(
                                        left: 74.h,
                                        top: 88.h,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6563,
                                      height: 70.h,
                                      width: 70.h,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 100.h,
                                        right: 84.h,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6563,
                                      height: 70.h,
                                      width: 70.h,
                                      alignment: Alignment.bottomCenter,
                                      margin: EdgeInsets.only(bottom: 60.h),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6563,
                                      height: 70.h,
                                      width: 70.h,
                                      alignment: Alignment.bottomLeft,
                                      margin: EdgeInsets.only(
                                        left: 6.h,
                                        bottom: 156.h,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6567,
                                      height: 52.h,
                                      width: 54.h,
                                      alignment: Alignment.bottomCenter,
                                      margin: EdgeInsets.only(bottom: 144.h),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6567,
                                      height: 52.h,
                                      width: 54.h,
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.only(
                                        right: 78.h,
                                        bottom: 166.h,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        width: double.maxFinite,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [_buildRow(context)],
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6568,
                                      height: 48.h,
                                      width: 52.h,
                                      alignment: Alignment.bottomLeft,
                                      margin: EdgeInsets.only(
                                        left: 70.h,
                                        bottom: 180.h,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6568,
                                      height: 48.h,
                                      width: 52.h,
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.only(
                                        right: 104.h,
                                        bottom: 18.h,
                                      ),
                                    ),
                                    _buildColumnone(context),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6555,
                                      height: 48.h,
                                      width: 54.h,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 34.h,
                                        right: 26.h,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6576,
                                      height: 44.h,
                                      width: 46.h,
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.only(
                                        right: 132.h,
                                        bottom: 176.h,
                                      ),
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
                                      margin: EdgeInsets.only(
                                        top: 88.h,
                                        right: 2.h,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6573,
                                      height: 44.h,
                                      width: 46.h,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 122.h,
                                        right: 40.h,
                                      ),
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
                                      margin: EdgeInsets.only(
                                        right: 32.h,
                                        bottom: 174.h,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6555,
                                      height: 48.h,
                                      width: 54.h,
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.only(
                                        right: 18.h,
                                        bottom: 12.h,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6558,
                                      height: 48.h,
                                      width: 44.h,
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(top: 234.h),
                                    ),
                                    Container(
                                      height: 476.h,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 14.h,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height: 464.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Container(
                                                  width: double.maxFinite,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 6.h,
                                                    vertical: 4.h,
                                                  ),
                                                  decoration: AppDecoration
                                                      .gradientOrangeAToRed
                                                      .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder14,
                                                      ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomIconButton(
                                                        height: 28.h,
                                                        width: 28.h,
                                                        padding: EdgeInsets.all(
                                                          6.h,
                                                        ),
                                                        decoration:
                                                            IconButtonStyleHelper
                                                                .fillGray,
                                                        alignment:
                                                            Alignment
                                                                .centerRight,
                                                        child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgCloseOnprimary20x20,
                                                        ),
                                                      ),
                                                      SizedBox(height: 16.h),
                                                      _buildRowtwo(context),
                                                      SizedBox(height: 2.h),
                                                      _buildStackviewtwo(
                                                        context,
                                                      ),
                                                      Container(
                                                        width: double.maxFinite,
                                                        margin:
                                                            EdgeInsets.symmetric(
                                                              horizontal: 76.h,
                                                            ),
                                                        padding:
                                                            EdgeInsets.symmetric(
                                                              vertical: 10.h,
                                                            ),
                                                        decoration: AppDecoration
                                                            .gradientGrayToGray60008
                                                            .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder24,
                                                            ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  AppDecoration
                                                                      .outlineGray50003,
                                                              child: Text(
                                                                "lbl_turn_to_luck"
                                                                    .tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    CustomTextStyles
                                                                        .titleLargeGray70002,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 114.h),
                                                    ],
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: SizedBox(
                                                    height: 48.h,
                                                    width: 182.h,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .img2858,
                                                          height: 48.h,
                                                          width:
                                                              double.maxFinite,
                                                        ),
                                                        Text(
                                                          "lbl_money_rain".tr,
                                                          style:
                                                              CustomTextStyles
                                                                  .titleLargeOrangeA70002,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          _buildStacknextround(context),
                                        ],
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6564,
                                      height: 60.h,
                                      width: 56.h,
                                      alignment: Alignment.topLeft,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6572,
                                      height: 44.h,
                                      width: 52.h,
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(left: 100.h),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img6573,
                                      height: 44.h,
                                      width: 46.h,
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(
                                        left: 42.h,
                                        top: 52.h,
                                      ),
                                    ),
                                    _buildStack877aca258c(context),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [_buildRowsevenone(context)],
                      ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 36.h,
                      vertical: 8.h,
                    ),
                    decoration: AppDecoration.fs9.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevisionOnprimary,
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
  Widget _buildRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(left: 14.h, right: 14.h, bottom: 100.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img6573,
                height: 44.h,
                width: 44.h,
              ),
              CustomImageView(
                imagePath: ImageConstant.img6568,
                height: 48.h,
                width: 50.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(left: 28.h, top: 6.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnone(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 22.h, right: 22.h, bottom: 20.h),
        child: Column(
          spacing: 18,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img6555,
              height: 48.h,
              width: 54.h,
              margin: EdgeInsets.only(left: 42.h),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img6573,
                    height: 44.h,
                    width: 44.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img6568,
                    height: 48.h,
                    width: 50.h,
                    margin: EdgeInsets.only(left: 32.h),
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
  Widget _buildRowtwo(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 6.h),
      decoration: AppDecoration.gradientOrangeToOrange20001.copyWith(
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
          Container(
            width: 226.h,
            margin: EdgeInsets.only(left: 6.h, top: 4.h, bottom: 4.h),
            child: Text(
              "msg_recharge_users_can".tr,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleLargeOrange80002.copyWith(
                height: 1.10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackviewtwo(BuildContext context) {
    return Container(
      height: 104.h,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 86.h,
              width: 308.h,
              margin: EdgeInsets.only(top: 6.h),
              decoration: BoxDecoration(
                color: appTheme.black900.withValues(alpha: 0.7),
                borderRadius: BorderRadius.circular(4.h),
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_deposit_any_amount".tr,
                  style: CustomTextStyles.titleMedium18_1,
                ),
                TextSpan(
                  text: "lbl_go_to_deposit".tr,
                  style: CustomTextStyles.titleLargeLightgreenA700.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStacknextround(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 176.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img861719113,
              height: 92.h,
              width: double.maxFinite,
              radius: BorderRadius.vertical(bottom: Radius.circular(12.h)),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 14.h, right: 6.h),
                padding: EdgeInsets.symmetric(vertical: 52.h),
                decoration: AppDecoration.column310,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomElevatedButton(
                      height: 24.h,
                      width: 168.h,
                      text: "msg_next_round_18_00_01".tr,
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 2.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgClockGray90002,
                          height: 14.h,
                          width: 12.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.fillOnPrimaryTL12,
                      buttonTextStyle: CustomTextStyles.titleSmallRedA70002,
                    ),
                    SizedBox(height: 28.h),
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
  Widget _buildRowsevenone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 80.h),
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 6.h),
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
                Text("lbl_fish2".tr, style: theme.textTheme.labelLarge),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgUserGreen90012,
            height: 56.h,
            width: 58.h,
            margin: EdgeInsets.only(bottom: 8.h),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 12.h, right: 8.h),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(
                    width: 68.h,
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
