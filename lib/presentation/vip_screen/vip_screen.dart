import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/vip_bloc.dart';
import 'models/listgroup1248_item_model.dart';
import 'models/listlv1_one_item_model.dart';
import 'models/vip_model.dart';
import 'widgets/listgroup1248_item_widget.dart';
import 'widgets/listlv1_one_item_widget.dart';

class VipScreen extends StatelessWidget {
  const VipScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<VipBloc>(
      create:
          (context) =>
              VipBloc(VipState(vipModelObj: VipModel()))
                ..add(VipInitialEvent()),
      child: VipScreen(),
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
              padding: EdgeInsets.only(left: 14.h, top: 12.h, right: 14.h),
              child: Column(
                spacing: 14,
                children: [
                  _buildStackviewsix(context),
                  _buildListgroup1248(context),
                  _buildColumnupgradevi(context),
                  SizedBox(height: 24.h),
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
  Widget _buildStackviewsix(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.circleBorder14,
        ),
        child: Container(
          height: 198.h,
          width: double.maxFinite,
          decoration: AppDecoration.gradientGrayToLime.copyWith(
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
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
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
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.all(6.h),
                        decoration: AppDecoration.gradientOrangeAToAmber
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
                                style: CustomTextStyles.labelLargeGray90014
                                    .copyWith(height: 1.17),
                              ),
                            ),
                            Container(
                              decoration: AppDecoration.gradientOrangeToLime
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
                                              margin: EdgeInsets.only(
                                                right: 2.h,
                                              ),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: double.maxFinite,
                                                      decoration: AppDecoration
                                                          .outlineBlack9001
                                                          .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderTL101,
                                                          ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "lbl_deposit_amount"
                                                                .tr,
                                                            style:
                                                                theme
                                                                    .textTheme
                                                                    .titleSmall,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: _buildColumn46100One(
                                                      context,
                                                      p46100One:
                                                          "lbl_46_100".tr,
                                                      imageTwo:
                                                          ImageConstant
                                                              .imgGroup934,
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
                                                      width: double.maxFinite,
                                                      decoration: AppDecoration
                                                          .outlineBlack9001
                                                          .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderTL101,
                                                          ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            "lbl_bet_amount".tr,
                                                            style:
                                                                theme
                                                                    .textTheme
                                                                    .titleSmall,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: _buildColumn100100(
                                                      context,
                                                      p100100One:
                                                          "lbl_100_100".tr,
                                                      imageThree:
                                                          ImageConstant
                                                              .imgGroup1003,
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
                                        .gradientGrayToGray90017
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
                                              .gradientAmberBToLightGreen
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
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          vertical: 2.h,
                                                        ),
                                                    decoration: AppDecoration
                                                        .outline9
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
                                                                  .labelLargeAmber30002,
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
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgForward,
                      height: 20.h,
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
                      imagePath: ImageConstant.imgV10,
                      height: 124.h,
                      width: 126.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(right: 6.h),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder14,
                      ),
                      child: Container(
                        height: 198.h,
                        decoration: AppDecoration.gradientGreenToLightGreen
                            .copyWith(
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
                                    decoration: AppDecoration
                                        .gradientLightGreenToLightGreenA
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle
                                                  .customBorderTL30,
                                        ),
                                    child: Column(
                                      spacing: 2,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 4.h),
                                        Container(
                                          width: 212.h,
                                          margin: EdgeInsets.only(left: 12.h),
                                          child: Text(
                                            "msg_complete_the_following".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .labelLargeGray90018
                                                .copyWith(height: 1.17),
                                          ),
                                        ),
                                        Container(
                                          decoration: AppDecoration
                                              .gradientLightGreenAToLightGreen
                                              .copyWith(
                                                borderRadius:
                                                    BorderRadiusStyle
                                                        .roundedBorder30,
                                              ),
                                          width: double.maxFinite,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 18.h,
                                                      bottom: 4.h,
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          width:
                                                              double.maxFinite,
                                                          margin:
                                                              EdgeInsets.only(
                                                                right: 2.h,
                                                              ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                padding:
                                                                    EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          6.h,
                                                                    ),
                                                                decoration: AppDecoration
                                                                    .outlineBlack9002
                                                                    .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .customBorderTL101,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_deposit_amount"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
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
                                                                            text:
                                                                                "lbl_46".tr,
                                                                            style:
                                                                                CustomTextStyles.titleSmallAmberA400,
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                "lbl3".tr,
                                                                            style:
                                                                                CustomTextStyles.titleSmallBlack_1,
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                "lbl_100".tr,
                                                                            style:
                                                                                CustomTextStyles.titleSmallBlack_1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                    ),
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgGroup934LightGreen90002,
                                                                      height:
                                                                          5.h,
                                                                      width:
                                                                          double
                                                                              .maxFinite,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width:
                                                              double.maxFinite,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                padding:
                                                                    EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          20.h,
                                                                    ),
                                                                decoration: AppDecoration
                                                                    .outlineBlack9002
                                                                    .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .customBorderTL101,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_bet_amount"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
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
                                                                      "lbl_100_100"
                                                                          .tr,
                                                                      style:
                                                                          CustomTextStyles
                                                                              .titleSmallBlack,
                                                                    ),
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgGroup934LightGreen90002,
                                                                      height:
                                                                          5.h,
                                                                      width:
                                                                          double
                                                                              .maxFinite,
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
                                                          BorderRadiusStyle
                                                              .roundedBorder30,
                                                    ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                      width: double.maxFinite,
                                                      padding: EdgeInsets.all(
                                                        2.h,
                                                      ),
                                                      decoration: AppDecoration
                                                          .gradientGreenBcToGreen
                                                          .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder30,
                                                          ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          SizedBox(
                                                            width:
                                                                double
                                                                    .maxFinite,
                                                            child: ImageFiltered(
                                                              imageFilter:
                                                                  ImageFilter.blur(
                                                                    sigmaX: 0.5,
                                                                    sigmaY: 0.5,
                                                                  ),
                                                              child: Container(
                                                                width:
                                                                    double
                                                                        .maxFinite,
                                                                padding:
                                                                    EdgeInsets.symmetric(
                                                                      vertical:
                                                                          2.h,
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
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      "lbl_v10"
                                                                          .tr,
                                                                      style:
                                                                          CustomTextStyles
                                                                              .titleLargeBlack,
                                                                    ),
                                                                    Text(
                                                                      "lbl_73"
                                                                          .tr,
                                                                      style:
                                                                          CustomTextStyles
                                                                              .labelLargeAmber30002,
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          2.h,
                                                                    ),
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
                                      decoration: AppDecoration.outline11
                                          .copyWith(
                                            borderRadius:
                                                BorderRadiusStyle
                                                    .customBorderBL30,
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
                                                    BorderRadiusStyle
                                                        .customBorderBL24,
                                              ),
                                              child: Container(
                                                height: 48.h,
                                                width: double.maxFinite,
                                                decoration: AppDecoration.fs23
                                                    .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderBL24,
                                                    ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .imgRectangle416,
                                                      height: 48.h,
                                                      width: double.maxFinite,
                                                    ),
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .imgRectangle416,
                                                      height: 48.h,
                                                      width: double.maxFinite,
                                                      radius:
                                                          BorderRadius.circular(
                                                            12.h,
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
                                    height: 20.h,
                                    width: 22.h,
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(
                                      left: 28.h,
                                      top: 54.h,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 50.h,
                                        top: 40.h,
                                      ),
                                      child: Text(
                                        "lbl_10".tr,
                                        style:
                                            CustomTextStyles
                                                .headlineMediumArialOnPrimaryBlack28,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgV10,
                                    height: 124.h,
                                    width: 126.h,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(right: 6.h),
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
                                      decoration: AppDecoration.outline12
                                          .copyWith(
                                            borderRadius:
                                                BorderRadiusStyle
                                                    .customBorderBL30,
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
                                              color: appTheme.amber30002,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadiusStyle
                                                        .customBorderBL24,
                                              ),
                                              child: Container(
                                                height: 48.h,
                                                width: double.maxFinite,
                                                decoration: AppDecoration
                                                    .fillAmber30002
                                                    .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderBL24,
                                                    ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .imgRectangle416,
                                                      height: 48.h,
                                                      width: double.maxFinite,
                                                      radius:
                                                          BorderRadius.circular(
                                                            12.h,
                                                          ),
                                                    ),
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .imgRectangle416,
                                                      height: 48.h,
                                                      width: double.maxFinite,
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
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildListgroup1248(BuildContext context) {
    return BlocSelector<VipBloc, VipState, VipModel?>(
      selector: (state) => state.vipModelObj,
      builder: (context, vipModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 10.h);
          },
          itemCount: vipModelObj?.listgroup1248ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Listgroup1248ItemModel model =
                vipModelObj?.listgroup1248ItemList[index] ??
                Listgroup1248ItemModel();
            return Listgroup1248ItemWidget(model);
          },
        );
      },
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
                BlocSelector<VipBloc, VipState, VipModel?>(
                  selector: (state) => state.vipModelObj,
                  builder: (context, vipModelObj) {
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 4.h);
                      },
                      itemCount: vipModelObj?.listlv1OneItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Listlv1OneItemModel model =
                            vipModelObj?.listlv1OneItemList[index] ??
                            Listlv1OneItemModel();
                        return Listlv1OneItemWidget(model);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildColumn100100(
    BuildContext context, {
    required String p100100One,
    required String imageThree,
  }) {
    return Column(
      children: [
        Text(
          p100100One,
          style: CustomTextStyles.titleSmallBlack.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        CustomImageView(
          imagePath: imageThree,
          height: 5.h,
          width: double.maxFinite,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildColumn46100One(
    BuildContext context, {
    required String p46100One,
    required String imageTwo,
  }) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_46".tr,
                style: CustomTextStyles.titleSmallAmberA400,
              ),
              TextSpan(
                text: "lbl3".tr,
                style: CustomTextStyles.titleSmallBlack_1,
              ),
              TextSpan(
                text: "lbl_100".tr,
                style: CustomTextStyles.titleSmallBlack_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        CustomImageView(
          imagePath: imageTwo,
          height: 5.h,
          width: double.maxFinite,
        ),
      ],
    );
  }
}
