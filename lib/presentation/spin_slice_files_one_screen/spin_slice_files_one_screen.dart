import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_five.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_title_image_one.dart';
import '../../widgets/app_bar/appbar_trailing_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_rating_bar.dart';
import 'bloc/spin_slice_files_one_bloc.dart';
import 'models/list123123_item_model.dart';
import 'models/spin_slice_files_one_model.dart';
import 'widgets/list123123_item_widget.dart';

class SpinSliceFilesOneScreen extends StatelessWidget {
  const SpinSliceFilesOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SpinSliceFilesOneBloc>(
      create:
          (context) => SpinSliceFilesOneBloc(
            SpinSliceFilesOneState(
              spinSliceFilesOneModelObj: SpinSliceFilesOneModel(),
            ),
          )..add(SpinSliceFilesOneInitialEvent()),
      child: SpinSliceFilesOneScreen(),
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
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                spacing: 10,
                children: [
                  SizedBox(
                    height: 888.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: _buildAppbar(context),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: SizeUtils.height,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                _buildColumnlogowj93o(context),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: 292.h,
                                    margin: EdgeInsets.only(right: 12.h),
                                    child: Column(
                                      spacing: 10,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant.img56x94,
                                              height: 56.h,
                                              width: 94.h,
                                              radius: BorderRadius.circular(
                                                4.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant.img20,
                                              height: 56.h,
                                              width: 94.h,
                                              radius: BorderRadius.circular(
                                                4.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVip56x94,
                                              height: 56.h,
                                              width: 94.h,
                                              radius: BorderRadius.circular(
                                                4.h,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: double.maxFinite,
                                          margin: EdgeInsets.only(
                                            left: 4.h,
                                            right: 2.h,
                                          ),
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
                                                      Container(
                                                        height: 88.h,
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgTelevisionYellowA70003,
                                                              height: 18.h,
                                                              width: 36.h,
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                            ),
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgTelevisionGray90002,
                                                              height: 88.h,
                                                              width: 88.h,
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .imgTelevisionYellowA70003,
                                                        height: 18.h,
                                                        width: 36.h,
                                                      ),
                                                      Opacity(
                                                        opacity: 0.2,
                                                        child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgLogoWj93128x78,
                                                          height: 20.h,
                                                          width:
                                                              double.maxFinite,
                                                          margin:
                                                              EdgeInsets.symmetric(
                                                                horizontal:
                                                                    16.h,
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
                                        Container(
                                          width: double.maxFinite,
                                          margin: EdgeInsets.only(
                                            left: 4.h,
                                            right: 2.h,
                                          ),
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
                                                    AppDecoration
                                                        .outlineBlack900,
                                                child: Text(
                                                  "lbl_super_ace".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                      right: 16.h,
                                      bottom: 180.h,
                                    ),
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
                                                imagePath:
                                                    ImageConstant.imgBaccarat1,
                                                height: 88.h,
                                                width: 88.h,
                                                radius: BorderRadius.circular(
                                                  4.h,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: SizedBox(
                                                  width: double.maxFinite,
                                                  child: Column(
                                                    spacing: 42,
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
                                                            Alignment.center,
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
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: 88.h,
                                    width: 90.h,
                                    margin: EdgeInsets.only(
                                      right: 16.h,
                                      bottom: 52.h,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.img441000,
                                          height: 88.h,
                                          width: 88.h,
                                          radius: BorderRadius.circular(4.h),
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                            width: double.maxFinite,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: SizedBox(
                                                    width: 52.h,
                                                    child: Divider(
                                                      color:
                                                          appTheme.green90013,
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgTelevisionAmberA40003,
                                                  height: 18.h,
                                                  width: 36.h,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    width: 186.h,
                                    margin: EdgeInsets.only(
                                      left: 76.h,
                                      bottom: 154.h,
                                    ),
                                    child: Column(
                                      spacing: 10,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
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
                                                decoration:
                                                    AppDecoration
                                                        .outlineBlack900,
                                                child: Text(
                                                  "lbl_roma_x".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      CustomTextStyles
                                                          .labelLargeNotoSans,
                                                ),
                                              ),
                                              Container(
                                                width: 88.h,
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
                                      bottom: 52.h,
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
                                    height: 88.h,
                                    width: 90.h,
                                    margin: EdgeInsets.only(
                                      left: 76.h,
                                      bottom: 52.h,
                                    ),
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
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                    width: double.maxFinite,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [_buildRowromaxone(context)],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    width: 90.h,
                                    margin: EdgeInsets.only(
                                      right: 16.h,
                                      bottom: 154.h,
                                    ),
                                    decoration: AppDecoration.outlineBlack900,
                                    child: Text(
                                      "lbl_lucky_coming".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style:
                                          CustomTextStyles.labelLargeNotoSans,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    width: 90.h,
                                    margin: EdgeInsets.only(
                                      right: 16.h,
                                      bottom: 26.h,
                                    ),
                                    decoration: AppDecoration.outlineBlack900,
                                    child: Text(
                                      "lbl_lucky_coming".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style:
                                          CustomTextStyles.labelLargeNotoSans,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: 50.h,
                                    width: 52.h,
                                    margin: EdgeInsets.only(
                                      right: 16.h,
                                      bottom: 2.h,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant
                                                  .imgUserLightGreenA700,
                                          height: 50.h,
                                          width: 50.h,
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "lbl_993".tr,
                                            style:
                                                CustomTextStyles
                                                    .bodySmallInterOnPrimary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup11853,
                                  height: 50.h,
                                  width: 52.h,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(
                                    right: 16.h,
                                    bottom: 152.h,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 226.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                    ),
                                    decoration: AppDecoration.fs15.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL81,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.img136x36,
                                          height: 32.h,
                                          width: 32.h,
                                        ),
                                        Text(
                                          "lbl_live".tr,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 166.h),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 2.h),
                                        CustomImageView(
                                          imagePath: ImageConstant.img536x36,
                                          height: 32.h,
                                          width: 34.h,
                                        ),
                                        Text(
                                          "lbl_bingo2".tr,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgForwardAmberA400,
                                  height: 14.h,
                                  width: 10.h,
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 62.h),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: 68.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 18.h,
                                    ),
                                    decoration: AppDecoration.fs15.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL81,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgFire,
                                          height: 32.h,
                                          width: double.maxFinite,
                                        ),
                                        Text(
                                          "lbl_hot".tr,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 46.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                    ),
                                    decoration: AppDecoration.fs15.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL81,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.img736x36,
                                          height: 32.h,
                                          width: 32.h,
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
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12.h,
                                    ),
                                    decoration: AppDecoration.fs9.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL81,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.img12,
                                          height: 32.h,
                                          width: 34.h,
                                        ),
                                        Text(
                                          "lbl_collect".tr,
                                          style:
                                              CustomTextStyles
                                                  .labelLargeBluegray90007,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 286.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                    ),
                                    decoration: AppDecoration.fs15.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL81,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.img10733643587,
                                          height: 32.h,
                                          width: 32.h,
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
                                    margin: EdgeInsets.only(bottom: 106.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                    ),
                                    decoration: AppDecoration.fs15.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL81,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.img236x36,
                                          height: 32.h,
                                          width: 32.h,
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
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 56.h,
                                    width: 58.h,
                                    margin: EdgeInsets.only(bottom: 22.h),
                                    decoration: AppDecoration.fillBluegray90021
                                        .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder30,
                                        ),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgGroup13043,
                                          height: 48.h,
                                          width: double.maxFinite,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 8,
                                      sigmaY: 8,
                                    ),
                                    child: Container(
                                      height: SizeUtils.height,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 14.h,
                                      ),
                                      decoration: AppDecoration.outline6,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height: 472.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgF1414x374,
                                                  height: 414.h,
                                                  width: double.maxFinite,
                                                ),
                                                Container(
                                                  height: 472.h,
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .imgF2472x374,
                                                        height: 472.h,
                                                        width: double.maxFinite,
                                                      ),
                                                      _buildColumnviewone(
                                                        context,
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
                                                spacing: 82,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  SizedBox(
                                                    height: 534.h,
                                                    width: double.maxFinite,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment
                                                              .bottomCenter,
                                                      children: [
                                                        _buildStackonesix(
                                                          context,
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage360,
                                                          height: 78.h,
                                                          width: 138.h,
                                                          alignment:
                                                              Alignment
                                                                  .topCenter,
                                                        ),
                                                        _buildStackticketeven(
                                                          context,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                top: 6.h,
                                                                right: 26.h,
                                                              ),
                                                          child: CustomIconButton(
                                                            height: 32.h,
                                                            width: 32.h,
                                                            padding:
                                                                EdgeInsets.all(
                                                                  8.h,
                                                                ),
                                                            decoration:
                                                                IconButtonStyleHelper
                                                                    .none,
                                                            alignment:
                                                                Alignment
                                                                    .topRight,
                                                            child: CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgCloseGray400,
                                                            ),
                                                          ),
                                                        ),
                                                        _buildStackonenine(
                                                          context,
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgYellow30007,
                                                          height: 210.h,
                                                          width: 298.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                bottom: 18.h,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  _buildList123123(context),
                                                ],
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
                        Container(
                          height: 88.h,
                          width: 90.h,
                          margin: EdgeInsets.only(right: 16.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgJdbSlot092,
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
                          margin: EdgeInsets.only(right: 112.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img461000,
                                height: 88.h,
                                width: 88.h,
                                radius: BorderRadius.circular(4.h),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: double.maxFinite,
                                  child: Column(
                                    spacing: 16,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgFrame1003,
                                        height: 18.h,
                                        width: 36.h,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 14.h,
                                          width: 14.h,
                                          margin: EdgeInsets.only(right: 12.h),
                                          decoration: BoxDecoration(
                                            color: appTheme.red500,
                                            borderRadius: BorderRadius.circular(
                                              6.h,
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
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 88.h,
                            width: 90.h,
                            margin: EdgeInsets.only(left: 76.h),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img471000,
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
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 62.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.h,
                              vertical: 4.h,
                            ),
                            decoration: AppDecoration.fs15.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL81,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img336x36,
                                  height: 32.h,
                                  width: 34.h,
                                ),
                                Text(
                                  "lbl_egame".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                                SizedBox(height: 4.h),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 4.h,
                            ),
                            decoration: AppDecoration.fs15.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL81,
                            ),
                            child: Column(
                              spacing: 4,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img636x36,
                                  height: 32.h,
                                  width: 32.h,
                                ),
                                Text(
                                  "lbl_sport".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildRowspacertwo(context),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildColumnmembers(context),
    );
  }

  /// Section Widget
  Widget _buildAppbar(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomAppBar(
        height: 68.h,
        title: SizedBox(
          height: 68.h,
          width: 278.h,
          child: Stack(
            children: [
              AppbarTitleImage(
                imagePath: ImageConstant.img877aca258c7f46168x278,
                height: 68.h,
                width: 278.h,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.h, right: 84.h),
                    child: Row(
                      children: [
                        AppbarTitleImageOne(
                          imagePath: ImageConstant.img112,
                          height: 50.h,
                          width: 50.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            top: 1.h,
                            bottom: 4.h,
                          ),
                          child: Column(
                            children: [
                              AppbarSubtitleFive(
                                text: "msg_many_benefits_for".tr.toUpperCase(),
                              ),
                              SizedBox(height: 2.h),
                              Padding(
                                padding: EdgeInsets.only(right: 44.h),
                                child: CustomRatingBar(initialRating: 5),
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
        ),
        actions: [
          AppbarTrailingButton(),
          Container(
            height: 26.h,
            width: 26.h,
            margin: EdgeInsets.only(left: 5.h),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 14.h,
                    width: 14.h,
                    margin: EdgeInsets.fromLTRB(9.h, 4.h, 3.h, 8.h),
                    decoration: BoxDecoration(color: appTheme.lightGreen800),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseLightGreen400,
                  height: 26.h,
                  width: 26.h,
                ),
              ],
            ),
          ),
        ],
        styleType: Style.bgGradientnamelightgreenA70001namelightgreen800,
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
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 28.h,
                      width: 80.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLogoWj93128x78,
                            height: 28.h,
                            width: double.maxFinite,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgLogoWj93128x78,
                            height: 28.h,
                            width: double.maxFinite,
                          ),
                        ],
                      ),
                    ),
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
                      "lbl_1980_00".tr,
                      style: CustomTextStyles.titleMediumAmberA400_1,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img1,
                    height: 14.h,
                    width: 18.h,
                    margin: EdgeInsets.only(left: 20.h, bottom: 4.h),
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
              imagePath: ImageConstant.imgMaskGroup130x344,
              height: 130.h,
              width: double.maxFinite,
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
                    imagePath: ImageConstant.img3b4bde395738f0c18x24,
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
  Widget _buildRowromaxone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 26.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50.h,
                decoration: AppDecoration.outlineBlack900,
                child: Text(
                  "lbl_roma_x".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeNotoSans,
                ),
              ),
              Container(
                width: 88.h,
                decoration: AppDecoration.outlineBlack900,
                child: Text(
                  "lbl_diamond_party".tr,
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
  Widget _buildColumnviewone(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 42.h, bottom: 22.h),
        child: Column(
          spacing: 12,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 282.h,
              margin: EdgeInsets.only(left: 4.h),
              decoration: AppDecoration.fillBluegray20099.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 12.h,
                    width: 34.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.h),
                      gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [appTheme.yellowA20005, appTheme.orange70007],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8.h),
                    child: Text(
                      "lbl_10_003".tr,
                      style: CustomTextStyles.labelLargeOnPrimary_6,
                    ),
                  ),
                ],
              ),
            ),
            CustomOutlinedButton(
              height: 40.h,
              width: 290.h,
              text: "lbl_claim2".tr,
              buttonStyle: CustomButtonStyles.none,
              decoration:
                  CustomButtonStyles.gradientAmberToOrangeTL20Decoration,
              buttonTextStyle: CustomTextStyles.titleMediumBlack,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackonesix(BuildContext context) {
    return Container(
      height: 402.h,
      margin: EdgeInsets.only(bottom: 44.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img1402x374,
            height: 402.h,
            width: double.maxFinite,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 96.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "msg_you_can_obtain_18".tr,
                    style: CustomTextStyles.titleMediumYellow20008,
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    "lbl_remaining_time".tr,
                    style: CustomTextStyles.labelLargeOnPrimary_6,
                  ),
                  SizedBox(
                    width: 158.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 40.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGridOnprimary,
                                  height: 40.h,
                                  width: 40.h,
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "lbl_013".tr,
                                        style:
                                            CustomTextStyles.titleMediumBlack18,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 4.h),
                                        child: Text(
                                          "lbl_hr".tr,
                                          style: CustomTextStyles.labelMedium10,
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
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 4.h),
                            child: Text(
                              "lbl7".tr,
                              style: CustomTextStyles.titleMediumBlack18,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 40.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGridOnprimary,
                                  height: 40.h,
                                  width: 40.h,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "lbl_21".tr,
                                        style:
                                            CustomTextStyles.titleMediumBlack18,
                                      ),
                                      Text(
                                        "lbl_min".tr,
                                        style: CustomTextStyles.labelMedium10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 4.h),
                            child: Text(
                              "lbl7".tr,
                              style: CustomTextStyles.titleMediumBlack18,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 40.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGridOnprimary,
                                  height: 40.h,
                                  width: 40.h,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "lbl_062".tr,
                                        style:
                                            CustomTextStyles.titleMediumBlack18,
                                      ),
                                      Text(
                                        "lbl_sec".tr,
                                        style: CustomTextStyles.labelMedium10,
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackticketeven(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 70.h,
        margin: EdgeInsets.only(left: 34.h, top: 48.h, right: 34.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage2370x306,
              height: 70.h,
              width: double.maxFinite,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 38.h,
                width: 164.h,
                margin: EdgeInsets.only(top: 4.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Text(
                      "lbl_ticket_event2".tr,
                      style: CustomTextStyles.headlineMediumGray90041,
                    ),
                    Text(
                      "lbl_ticket_event2".tr,
                      style: theme.textTheme.headlineMedium,
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
  Widget _buildStackonenine(BuildContext context) {
    return Container(
      height: 328.h,
      margin: EdgeInsets.symmetric(horizontal: 36.h),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img1214x300,
            height: 214.h,
            width: double.maxFinite,
            alignment: Alignment.topCenter,
          ),
          Container(
            height: 250.h,
            margin: EdgeInsets.only(left: 20.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img121,
                  height: 250.h,
                  width: double.maxFinite,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgZhizhen1,
                          height: 98.h,
                          width: 118.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img1366x68,
                          height: 66.h,
                          width: 70.h,
                          radius: BorderRadius.circular(32.h),
                          margin: EdgeInsets.only(left: 24.h),
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
  Widget _buildList123123(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.h),
      decoration: AppDecoration.fillBlack9007.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: BlocSelector<
        SpinSliceFilesOneBloc,
        SpinSliceFilesOneState,
        SpinSliceFilesOneModel?
      >(
        selector: (state) => state.spinSliceFilesOneModelObj,
        builder: (context, spinSliceFilesOneModelObj) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.h),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 8.h);
            },
            itemCount:
                spinSliceFilesOneModelObj?.list123123ItemList.length ?? 0,
            itemBuilder: (context, index) {
              List123123ItemModel model =
                  spinSliceFilesOneModelObj?.list123123ItemList[index] ??
                  List123123ItemModel();
              return List123123ItemWidget(model);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRowspacertwo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
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
    );
  }

  /// Section Widget
  Widget _buildColumnmembers(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      decoration: AppDecoration.fs3qbg,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(bottom: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgNavHome22x24,
                      height: 42.h,
                      width: 42.h,
                    ),
                    Text(
                      "lbl_home".tr,
                      style: CustomTextStyles.labelLargeLightgreenA700,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child: _buildColumnhome(
                    context,
                    image: ImageConstant.imgNavDeposit25x26,
                    homeOne: "lbl_deposit".tr,
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_invite4".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(
                  width: 94.h,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 42.h,
                        width: 54.h,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup13061,
                              height: 42.h,
                              width: 44.h,
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgThumbsUpSecondarycontainer,
                              height: 10.h,
                              width: 26.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 8.h),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 18.h),
                        child: Text(
                          "lbl_spin2".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: _buildColumnhome(
                    context,
                    image: ImageConstant.imgGroup13046,
                    homeOne: "lbl_teams".tr,
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
  Widget _buildColumnhome(
    BuildContext context, {
    required String image,
    required String homeOne,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: image,
          height: 42.h,
          width: 42.h,
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(left: 2.h),
        ),
        Text(
          homeOne,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
      ],
    );
  }
}
