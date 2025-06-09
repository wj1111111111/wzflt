import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_rating_bar.dart';
import 'bloc/not_during_event_period_bloc.dart';
import 'models/not_during_event_period_model.dart';

// ignore_for_file: must_be_immutable
class NotDuringEventPeriodScreen extends StatelessWidget {
  NotDuringEventPeriodScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<NotDuringEventPeriodBloc>(
      create:
          (context) => NotDuringEventPeriodBloc(
            NotDuringEventPeriodState(
              notDuringEventPeriodModelObj: NotDuringEventPeriodModel(),
            ),
          )..add(NotDuringEventPeriodInitialEvent()),
      child: NotDuringEventPeriodScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotDuringEventPeriodBloc, NotDuringEventPeriodState>(
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
                      _buildColumnlogowj93o(context),
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
                      CustomImageView(
                        imagePath: ImageConstant.img911000,
                        height: 88.h,
                        width: 90.h,
                        radius: BorderRadius.circular(4.h),
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 16.h, bottom: 264.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgBaccarat1,
                        height: 88.h,
                        width: 90.h,
                        radius: BorderRadius.circular(4.h),
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 16.h, bottom: 264.h),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [_buildRowspacertwo(context)],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 90.h,
                          margin: EdgeInsets.only(right: 16.h, bottom: 110.h),
                          child: Column(
                            spacing: 12,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: AppDecoration.outlineBlack900,
                                width: double.maxFinite,
                                child: Text(
                                  "lbl_lucky_coming".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.labelLargeNotoSans,
                                ),
                              ),
                              SizedBox(
                                height: 88.h,
                                width: double.maxFinite,
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
                                decoration: AppDecoration.outlineBlack900,
                                width: double.maxFinite,
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
                      CustomImageView(
                        imagePath: ImageConstant.img211000,
                        height: 88.h,
                        width: 90.h,
                        radius: BorderRadius.circular(4.h),
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 112.h, bottom: 264.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgBaccarat288x88,
                        height: 88.h,
                        width: 90.h,
                        radius: BorderRadius.circular(4.h),
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 112.h, bottom: 264.h),
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
                      CustomImageView(
                        imagePath: ImageConstant.img102X1000,
                        height: 88.h,
                        width: 90.h,
                        radius: BorderRadius.circular(4.h),
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 76.h, bottom: 264.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img1Baccarat188x88,
                        height: 88.h,
                        width: 90.h,
                        radius: BorderRadius.circular(4.h),
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 76.h, bottom: 264.h),
                      ),
                      Container(
                        width: 222.h,
                        margin: EdgeInsets.only(bottom: 110.h),
                        child: Column(
                          spacing: 12,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 52.h,
                              margin: EdgeInsets.only(left: 18.h),
                              decoration: AppDecoration.outlineBlack900,
                              child: Text(
                                "lbl_roma_x".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeNotoSans,
                              ),
                            ),
                            SizedBox(
                              height: 88.h,
                              width: 90.h,
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
                            Container(
                              width: 52.h,
                              margin: EdgeInsets.only(left: 18.h),
                              decoration: AppDecoration.outlineBlack900,
                              child: Text(
                                "lbl_roma_x".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeNotoSans,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 222.h,
                            margin: EdgeInsets.only(bottom: 366.h),
                            child: Row(
                              children: [
                                Container(
                                  width: 88.h,
                                  decoration: AppDecoration.outlineBlack900,
                                  child: Text(
                                    "msg_fortune_ox_fortune".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.labelLargeNotoSans,
                                  ),
                                ),
                                Container(
                                  width: 64.h,
                                  margin: EdgeInsets.only(left: 20.h),
                                  decoration: AppDecoration.outlineBlack900,
                                  child: Text(
                                    "lbl_super_ace".tr,
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
                          margin: EdgeInsets.only(bottom: 148.h),
                          padding: EdgeInsets.symmetric(horizontal: 14.h),
                          decoration: AppDecoration.fs15.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL81,
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
                                  decoration: AppDecoration.column295,
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
                          decoration: AppDecoration.fillBlack9004,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: double.maxFinite,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [_buildRowspacerthree(context)],
                                  ),
                                ),
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
                                  left: 2.h,
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
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(
                                  right: 14.h,
                                  bottom: 100.h,
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
                                imagePath: ImageConstant.img6573,
                                height: 44.h,
                                width: 46.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(
                                  right: 94.h,
                                  bottom: 110.h,
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
                                margin: EdgeInsets.only(
                                  top: 122.h,
                                  right: 40.h,
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
                                width: double.maxFinite,
                                margin: EdgeInsets.symmetric(horizontal: 26.h),
                                padding: EdgeInsets.symmetric(vertical: 4.h),
                                decoration: AppDecoration.gradientOrangeAToRed
                                    .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder14,
                                    ),
                                child: Column(
                                  spacing: 10,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildStacka7391d138e(context),
                                    SizedBox(
                                      width: 280.h,
                                      child: Text(
                                        "msg_each_money_rain".tr,
                                        maxLines: 6,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .labelLargeOnPrimary_6
                                            .copyWith(height: 1.33),
                                      ),
                                    ),
                                    CustomElevatedButton(
                                      height: 24.h,
                                      text: "msg_next_round_00_00_01".tr,
                                      margin: EdgeInsets.only(
                                        left: 74.h,
                                        right: 76.h,
                                      ),
                                      leftIcon: Container(
                                        margin: EdgeInsets.only(right: 2.h),
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgClockGray90002,
                                          height: 14.h,
                                          width: 12.h,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      buttonStyle:
                                          CustomButtonStyles.fillOnPrimaryTL12,
                                      buttonTextStyle:
                                          CustomTextStyles.titleSmallRedA70002,
                                    ),
                                    SizedBox(height: 12.h),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 48.h,
                                  width: 182.h,
                                  margin: EdgeInsets.only(top: 142.h),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.img2858,
                                        height: 48.h,
                                        width: double.maxFinite,
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
                              CustomImageView(
                                imagePath: ImageConstant.img71,
                                height: 64.h,
                                width: 82.h,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(
                                  top: 186.h,
                                  right: 36.h,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 228.h),
                                  child: Text(
                                    "lbl_200_000".tr,
                                    style:
                                        CustomTextStyles
                                            .displayMediumArialYellowA40002,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 210.h),
                                  child: Text(
                                    "lbl_at_a_time".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 52.h,
                                  width: 130.h,
                                  margin: EdgeInsets.only(
                                    left: 34.h,
                                    top: 186.h,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgGh11,
                                        height: 52.h,
                                        width: double.maxFinite,
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
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                      top: 4.h,
                                                    ),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 14.h,
                                                        ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              Alignment
                                                                  .bottomCenter,
                                                          child: SizedBox(
                                                            width: 28.h,
                                                            child: RotationTransition(
                                                              turns:
                                                                  AlwaysStoppedAnimation(
                                                                    -(6 / 360),
                                                                  ),
                                                              child: Text(
                                                                "lbl_max_drop"
                                                                    .tr,
                                                                maxLines: 3,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    CustomTextStyles
                                                                        .labelLargeYellowA40002_1,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                bottom: 4.h,
                                                              ),
                                                          child: RotationTransition(
                                                            turns:
                                                                AlwaysStoppedAnimation(
                                                                  -(5 / 360),
                                                                ),
                                                            child: Text(
                                                              "lbl_7_777".tr,
                                                              style:
                                                                  CustomTextStyles
                                                                      .titleLarge20,
                                                            ),
                                                          ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
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
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 48.h,
                    vertical: 6.h,
                  ),
                  decoration: AppDecoration.fs1.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder1,
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
              ],
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
    return Container(
      margin: EdgeInsets.only(bottom: 288.h),
      padding: EdgeInsets.symmetric(horizontal: 52.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame1003,
            height: 18.h,
            width: 36.h,
            margin: EdgeInsets.only(left: 24.h),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgFrame1003,
            height: 18.h,
            width: 36.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: 116.h,
              child: Column(
                spacing: 26,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame1003,
                    height: 18.h,
                    width: 36.h,
                    margin: EdgeInsets.only(right: 16.h),
                  ),
                  Container(
                    height: 18.h,
                    width: 16.h,
                    decoration: AppDecoration.fillRed.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl_12".tr,
                          style: CustomTextStyles.labelLargeOnPrimaryBlack,
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
  Widget _buildRowspacerthree(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.img6572,
                height: 44.h,
                width: 52.h,
              ),
              CustomImageView(
                imagePath: ImageConstant.img6554,
                height: 54.h,
                width: 54.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(left: 24.h, top: 34.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.img6573,
                height: 44.h,
                width: 46.h,
                margin: EdgeInsets.only(left: 16.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.img6555,
                height: 48.h,
                width: 54.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(left: 2.h, bottom: 6.h),
              ),
            ],
          ),
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
          padding: EdgeInsets.only(left: 32.h, right: 32.h, bottom: 166.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img6567,
                height: 52.h,
                width: 52.h,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.img6574,
                height: 44.h,
                width: 42.h,
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
  Widget _buildStacka7391d138e(BuildContext context) {
    return Container(
      height: 354.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 12.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgA7391d138e9d5dc,
            height: 148.h,
            width: 198.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 24.h),
          ),
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: CustomIconButton(
              height: 28.h,
              width: 28.h,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.fillGray,
              alignment: Alignment.topRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgCloseOnprimary20x20,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.only(right: 12.h),
                decoration: AppDecoration.gradientOrangeToOrange20001.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                width: double.maxFinite,
                child: Row(
                  children: [
                    Container(
                      width: 60.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.h,
                        vertical: 6.h,
                      ),
                      decoration: AppDecoration.gradientPinkAToDeepOrangeA
                          .copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL81,
                          ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "lbl_mon2".tr,
                              style: CustomTextStyles.titleSmallGray90001,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "lbl_tues".tr,
                              style: CustomTextStyles.titleSmallGray90001,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "lbl_wed".tr,
                              style: CustomTextStyles.titleSmallGray90001,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          CustomElevatedButton(
                            height: 32.h,
                            text: "lbl_thu".tr,
                            buttonStyle: CustomButtonStyles.none,
                            decoration:
                                CustomButtonStyles
                                    .gradientPinkAToDeepOrangeADecoration,
                          ),
                          SizedBox(height: 6.h),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "lbl_fri".tr,
                              style: CustomTextStyles.titleSmallGray90001,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "lbl_sat".tr,
                              style: CustomTextStyles.titleSmallGray90001,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "lbl_sun".tr,
                              style: CustomTextStyles.titleSmallGray90001,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 6,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 4.h),
                            decoration: AppDecoration
                                .gradientPinkAToDeeporangeA20001
                                .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderLR8,
                                ),
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgClockGray40004,
                                  height: 12.h,
                                  width: 10.h,
                                  margin: EdgeInsets.only(bottom: 4.h),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.h, top: 2.h),
                                  child: Text(
                                    "lbl_01_00_02_59".tr,
                                    style:
                                        CustomTextStyles.titleMediumGray40004,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _buildRowclockSeven(
                            context,
                            clockSeven: ImageConstant.imgClockGray40004,
                            daterangeThree: "lbl_02_00_02_59".tr,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 4.h),
                            decoration:
                                AppDecoration.gradientPinkAToDeeporangeA20001,
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgClockRedA70003,
                                  height: 12.h,
                                  width: 10.h,
                                  margin: EdgeInsets.only(bottom: 4.h),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.h, top: 2.h),
                                  child: Text(
                                    "lbl_03_00_03_59".tr,
                                    style:
                                        CustomTextStyles.titleMediumRedA70003,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _buildRowclockSeven(
                            context,
                            clockSeven: ImageConstant.imgClockRedA70003,
                            daterangeThree: "lbl_04_00_04_59".tr,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 4.h),
                            decoration:
                                AppDecoration.gradientPinkAToDeeporangeA20001,
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgClockRedA70003,
                                  height: 12.h,
                                  width: 10.h,
                                  margin: EdgeInsets.only(bottom: 4.h),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.h, top: 2.h),
                                  child: Text(
                                    "lbl_05_00_05_59".tr,
                                    style:
                                        CustomTextStyles.titleMediumRedA70003,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _buildRowclockSeven(
                            context,
                            clockSeven: ImageConstant.imgClockRedA70003,
                            daterangeThree: "lbl_06_00_06_59".tr,
                          ),
                          Container(
                            height: 10.h,
                            width: 236.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(5.h),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment(1, 0.5),
                                end: Alignment(0, 0.5),
                                colors: [
                                  appTheme.pinkA20002.withValues(alpha: 0.2),
                                  appTheme.deepOrangeA20001.withValues(
                                    alpha: 0.2,
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

  /// Common widget
  Widget _buildRowclockSeven(
    BuildContext context, {
    required String clockSeven,
    required String daterangeThree,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(imagePath: clockSeven, height: 12.h, width: 10.h),
        Text(
          daterangeThree,
          style: CustomTextStyles.titleMediumRedA70003.copyWith(
            color: appTheme.redA70003,
          ),
        ),
      ],
    );
  }
}
