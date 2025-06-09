import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_four.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/wheel_spin_main_rules_bloc.dart';
import 'models/grid94bdf4d8739_item_model.dart';
import 'models/list94bdf4d8739_item_model.dart';
import 'models/wheel_spin_main_rules_model.dart';
import 'widgets/grid94bdf4d8739_item_widget.dart';
import 'widgets/list94bdf4d8739_item_widget.dart';

class WheelSpinMainRulesScreen extends StatelessWidget {
  const WheelSpinMainRulesScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WheelSpinMainRulesBloc>(
      create:
          (context) => WheelSpinMainRulesBloc(
            WheelSpinMainRulesState(
              wheelSpinMainRulesModelObj: WheelSpinMainRulesModel(),
            ),
          )..add(WheelSpinMainRulesInitialEvent()),
      child: WheelSpinMainRulesScreen(),
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
              height: 3998.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  _buildHorizontalscrol(context),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 4.h, bottom: 24.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildOneone(context),
                        SizedBox(height: 10.h),
                        _buildTwoone(context),
                        SizedBox(height: 16.h),
                        _buildThreeone(context),
                        SizedBox(height: 10.h),
                        _buildThreethree(context),
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
  Widget _buildHorizontalscrol(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
          child: SizedBox(
            height: 488.h,
            width: 432.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 332.h,
                    width: 374.h,
                    margin: EdgeInsets.only(right: 12.h),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          appTheme.lightGreen80005,
                          appTheme.green90019,
                          appTheme.gray90039,
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 374.h,
                    margin: EdgeInsets.only(left: 44.h, right: 12.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img13bfb824593aba1,
                          height: 374.h,
                          width: 374.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img015b2e1a09d09e1306x344,
                          height: 306.h,
                          width: double.maxFinite,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 8.h),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 358.h,
                  width: 318.h,
                  margin: EdgeInsets.only(right: 42.h),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 196.h,
                          width: 252.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 118.h,
                                  width: 96.h,
                                  margin: EdgeInsets.only(top: 30.h),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgFc2,
                                        height: 118.h,
                                        width: double.maxFinite,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage1108,
                                        height: 52.h,
                                        width: 54.h,
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 10.h),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgBaoshi1,
                                height: 118.h,
                                width: 120.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 26.h),
                              ),
                              SizedBox(
                                height: 196.h,
                                width: 158.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage771,
                                      height: 196.h,
                                      width: double.maxFinite,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.img74x74,
                                      height: 64.h,
                                      width: 66.h,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 34.h,
                                        right: 10.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage110084x84,
                                height: 70.h,
                                width: 72.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 36.h, top: 34.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.img0ab53a5f627c836,
                                height: 70.h,
                                width: 72.h,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(top: 6.h, right: 36.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 316.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup2131330042,
                              height: 258.h,
                              width: 260.h,
                            ),
                            Container(
                              height: 316.h,
                              padding: EdgeInsets.all(28.h),
                              decoration: AppDecoration.stack329,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder62,
                                    ),
                                    child: Container(
                                      height: 128.h,
                                      width: 130.h,
                                      decoration: AppDecoration
                                          .gradientBlackToBlack900
                                          .copyWith(
                                            borderRadius:
                                                BorderRadiusStyle
                                                    .roundedBorder62,
                                          ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          SizedBox(
                                            height: 80.h,
                                            width: 82.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.img94x94,
                                                  height: 80.h,
                                                  width: 80.h,
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgLuckSpin,
                                                  height: 42.h,
                                                  width: double.maxFinite,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 32.h,
                                              margin: EdgeInsets.only(
                                                left: 2.h,
                                              ),
                                              child: RotationTransition(
                                                turns: AlwaysStoppedAnimation(
                                                  -(137 / 360),
                                                ),
                                                child: Text(
                                                  "lbl_unknow".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme
                                                      .labelMedium!
                                                      .copyWith(height: 2.00),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                              width: 32.h,
                                              margin: EdgeInsets.only(
                                                right: 8.h,
                                              ),
                                              child: RotationTransition(
                                                turns: AlwaysStoppedAnimation(
                                                  -(-46 / 360),
                                                ),
                                                child: Text(
                                                  "lbl_unknow".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme
                                                      .labelMedium!
                                                      .copyWith(height: 2.00),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                              width: 30.h,
                                              margin: EdgeInsets.only(
                                                bottom: 8.h,
                                              ),
                                              child: RotationTransition(
                                                turns: AlwaysStoppedAnimation(
                                                  -(-27 / 360),
                                                ),
                                                child: Text(
                                                  "lbl_999_99".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme
                                                      .labelMedium!
                                                      .copyWith(height: 2.00),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      width: 12.h,
                                      margin: EdgeInsets.only(top: 54.h),
                                      child: RotationTransition(
                                        turns: AlwaysStoppedAnimation(
                                          -(89 / 360),
                                        ),
                                        child: Text(
                                          "lbl_999_99".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.labelMedium!
                                              .copyWith(height: 2.00),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: 18.h,
                                      margin: EdgeInsets.only(
                                        top: 52.h,
                                        right: 96.h,
                                      ),
                                      child: RotationTransition(
                                        turns: AlwaysStoppedAnimation(
                                          -(70 / 360),
                                        ),
                                        child: Text(
                                          "lbl_unknow".tr,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.labelMedium!
                                              .copyWith(height: 2.00),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      width: 36.h,
                                      margin: EdgeInsets.only(
                                        left: 52.h,
                                        bottom: 76.h,
                                      ),
                                      child: RotationTransition(
                                        turns: AlwaysStoppedAnimation(
                                          -(-157 / 360),
                                        ),
                                        child: Text(
                                          "lbl_unknow".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.labelMedium!
                                              .copyWith(height: 2.00),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      width: 22.h,
                                      margin: EdgeInsets.only(
                                        left: 94.h,
                                        bottom: 26.h,
                                      ),
                                      child: RotationTransition(
                                        turns: AlwaysStoppedAnimation(
                                          -(-112 / 360),
                                        ),
                                        child: Text(
                                          "lbl_unknow".tr,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.labelMedium!
                                              .copyWith(height: 2.00),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: 24.h,
                                      margin: EdgeInsets.only(
                                        top: 72.h,
                                        right: 74.h,
                                      ),
                                      child: RotationTransition(
                                        turns: AlwaysStoppedAnimation(
                                          -(48 / 360),
                                        ),
                                        child: Text(
                                          "lbl_999_99".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.labelMedium!
                                              .copyWith(height: 2.00),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      width: 42.h,
                                      margin: EdgeInsets.only(right: 46.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RotationTransition(
                                            turns: AlwaysStoppedAnimation(
                                              -(22 / 360),
                                            ),
                                            child: Text(
                                              "lbl_one_more".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: theme
                                                  .textTheme
                                                  .labelMedium!
                                                  .copyWith(height: 2.00),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2.h),
                                            child: Text(
                                              "lbl_2000_002".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      height: 44.h,
                                      width: 36.h,
                                      margin: EdgeInsets.only(
                                        left: 56.h,
                                        top: 92.h,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          RotationTransition(
                                            turns: AlwaysStoppedAnimation(
                                              -(158 / 360),
                                            ),
                                            child: Text(
                                              "lbl_2000_002".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme
                                                  .textTheme
                                                  .labelMedium!
                                                  .copyWith(height: 2.00),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                right: 4.h,
                                              ),
                                              child: RotationTransition(
                                                turns: AlwaysStoppedAnimation(
                                                  -(-180 / 360),
                                                ),
                                                child: Text(
                                                  "lbl_1_99".tr,
                                                  style:
                                                      theme
                                                          .textTheme
                                                          .labelMedium,
                                                ),
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
                                      width: 28.h,
                                      margin: EdgeInsets.only(
                                        left: 72.h,
                                        bottom: 72.h,
                                      ),
                                      child: RotationTransition(
                                        turns: AlwaysStoppedAnimation(
                                          -(-135 / 360),
                                        ),
                                        child: Text(
                                          "lbl_999_99".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.labelMedium!
                                              .copyWith(height: 2.00),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: 20.h,
                                      margin: EdgeInsets.only(
                                        right: 98.h,
                                        bottom: 56.h,
                                      ),
                                      child: RotationTransition(
                                        turns: AlwaysStoppedAnimation(
                                          -(-70 / 360),
                                        ),
                                        child: Text(
                                          "lbl_999_99".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.labelMedium!
                                              .copyWith(height: 2.00),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 22.h,
                                      margin: EdgeInsets.only(
                                        left: 96.h,
                                        top: 46.h,
                                      ),
                                      child: RotationTransition(
                                        turns: AlwaysStoppedAnimation(
                                          -(112 / 360),
                                        ),
                                        child: Text(
                                          "lbl_one_more".tr,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.labelMedium!
                                              .copyWith(height: 2.00),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: 8.h,
                                      margin: EdgeInsets.only(bottom: 40.h),
                                      child: RotationTransition(
                                        turns: AlwaysStoppedAnimation(
                                          -(-89 / 360),
                                        ),
                                        child: Text(
                                          "lbl_one_more".tr,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.labelMedium!
                                              .copyWith(height: 2.00),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 96.h,
                                      margin: EdgeInsets.only(
                                        left: 58.h,
                                        top: 6.h,
                                      ),
                                      child: Column(
                                        spacing: 4,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: double.maxFinite,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 3.h,
                                                  width: 3.h,
                                                  margin: EdgeInsets.only(
                                                    left: 44.h,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        theme
                                                            .colorScheme
                                                            .onPrimary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          1.h,
                                                        ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            appTheme
                                                                .orangeA10001,
                                                        spreadRadius: 2.h,
                                                        blurRadius: 2.h,
                                                        offset: Offset(0, 0),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 3.h,
                                                  width: 3.h,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        theme
                                                            .colorScheme
                                                            .onPrimary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          1.h,
                                                        ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            appTheme
                                                                .orangeA10001,
                                                        spreadRadius: 2.h,
                                                        blurRadius: 2.h,
                                                        offset: Offset(0, 0),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 4.h,
                                                  width: 4.h,
                                                  margin: EdgeInsets.only(
                                                    left: 44.h,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          2.h,
                                                        ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment(0.5, 0),
                                                      end: Alignment(0.5, 1),
                                                      colors: [
                                                        appTheme.yellow10005,
                                                        appTheme.amber70005,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 4.h,
                                                  width: 4.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          2.h,
                                                        ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment(0.5, 0),
                                                      end: Alignment(0.5, 1),
                                                      colors: [
                                                        appTheme.yellow10005,
                                                        appTheme.amber70005,
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 3.h,
                                                  width: 3.h,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        theme
                                                            .colorScheme
                                                            .onPrimary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          1.h,
                                                        ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            appTheme
                                                                .orangeA10001,
                                                        spreadRadius: 2.h,
                                                        blurRadius: 2.h,
                                                        offset: Offset(0, 0),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    height: 4.h,
                                                    width: 4.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            2.h,
                                                          ),
                                                      gradient: LinearGradient(
                                                        begin: Alignment(
                                                          0.5,
                                                          0,
                                                        ),
                                                        end: Alignment(0.5, 1),
                                                        colors: [
                                                          appTheme.yellow10005,
                                                          appTheme.amber70005,
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgMargin14x14,
                                                  height: 14.h,
                                                  width: 14.h,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  margin: EdgeInsets.only(
                                                    left: 16.h,
                                                    top: 4.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgTelevision18x18,
                                                  height: 12.h,
                                                  width: 12.h,
                                                  margin: EdgeInsets.only(
                                                    left: 20.h,
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
                                    child: SizedBox(
                                      width: double.maxFinite,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: double.maxFinite,
                                            child: Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: 60.h,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        bottom: 14.h,
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                Alignment
                                                                    .centerRight,
                                                            child: Container(
                                                              height: 3.h,
                                                              width: 3.h,
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    theme
                                                                        .colorScheme
                                                                        .onPrimary,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      1.h,
                                                                    ),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color:
                                                                        appTheme
                                                                            .orangeA10001,
                                                                    spreadRadius:
                                                                        2.h,
                                                                    blurRadius:
                                                                        2.h,
                                                                    offset:
                                                                        Offset(
                                                                          0,
                                                                          0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 4.h,
                                                            width: 4.h,
                                                            decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    2.h,
                                                                  ),
                                                              gradient: LinearGradient(
                                                                begin:
                                                                    Alignment(
                                                                      0.5,
                                                                      0,
                                                                    ),
                                                                end: Alignment(
                                                                  0.5,
                                                                  1,
                                                                ),
                                                                colors: [
                                                                  appTheme
                                                                      .yellow10005,
                                                                  appTheme
                                                                      .amber70005,
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 12.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgClose16x16,
                                                            height: 16.h,
                                                            width: 16.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                  right: 4.h,
                                                                ),
                                                          ),
                                                          SizedBox(
                                                            height: 20.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgB928f94165e972820x20,
                                                            height: 18.h,
                                                            width: 18.h,
                                                            alignment:
                                                                Alignment
                                                                    .centerRight,
                                                            margin:
                                                                EdgeInsets.only(
                                                                  left: 2.h,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment
                                                              .bottomCenter,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                              left: 2.h,
                                                            ),
                                                        child: Column(
                                                          spacing: 38,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Container(
                                                                  height: 4.h,
                                                                  width: 4.h,
                                                                  decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          2.h,
                                                                        ),
                                                                    gradient: LinearGradient(
                                                                      begin:
                                                                          Alignment(
                                                                            0.5,
                                                                            0,
                                                                          ),
                                                                      end:
                                                                          Alignment(
                                                                            0.5,
                                                                            1,
                                                                          ),
                                                                      colors: [
                                                                        appTheme
                                                                            .yellow10005,
                                                                        appTheme
                                                                            .amber70005,
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height: 3.h,
                                                                  width: 3.h,
                                                                  decoration: BoxDecoration(
                                                                    color:
                                                                        theme
                                                                            .colorScheme
                                                                            .onPrimary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          1.h,
                                                                        ),
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        color:
                                                                            appTheme.orangeA10001,
                                                                        spreadRadius:
                                                                            2.h,
                                                                        blurRadius:
                                                                            2.h,
                                                                        offset:
                                                                            Offset(
                                                                              0,
                                                                              0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Container(
                                                                  height: 4.h,
                                                                  width: 4.h,
                                                                  decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          2.h,
                                                                        ),
                                                                    gradient: LinearGradient(
                                                                      begin:
                                                                          Alignment(
                                                                            0.5,
                                                                            0,
                                                                          ),
                                                                      end:
                                                                          Alignment(
                                                                            0.5,
                                                                            1,
                                                                          ),
                                                                      colors: [
                                                                        appTheme
                                                                            .yellow10005,
                                                                        appTheme
                                                                            .amber70005,
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child: Container(
                                                                    height: 3.h,
                                                                    width: 3.h,
                                                                    decoration: BoxDecoration(
                                                                      color:
                                                                          theme
                                                                              .colorScheme
                                                                              .onPrimary,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            1.h,
                                                                          ),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color:
                                                                              appTheme.orangeA10001,
                                                                          spreadRadius:
                                                                              2.h,
                                                                          blurRadius:
                                                                              2.h,
                                                                          offset: Offset(
                                                                            0,
                                                                            0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
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
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPlay12x12,
                                    height: 12.h,
                                    width: 14.h,
                                    alignment: Alignment.bottomCenter,
                                    margin: EdgeInsets.only(bottom: 24.h),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 28.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgThumbsUp16x16,
                                                  height: 16.h,
                                                  width: 16.h,
                                                  alignment: Alignment.center,
                                                ),
                                                Container(
                                                  height: 4.h,
                                                  width: 4.h,
                                                  margin: EdgeInsets.only(
                                                    left: 14.h,
                                                    top: 4.h,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          2.h,
                                                        ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment(0.5, 0),
                                                      end: Alignment(0.5, 1),
                                                      colors: [
                                                        appTheme.yellow10005,
                                                        appTheme.amber70005,
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
                                  CustomImageView(
                                    imagePath: ImageConstant.imgThumbsUp18x18,
                                    height: 18.h,
                                    width: 20.h,
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(
                                      left: 50.h,
                                      top: 48.h,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: SizedBox(
                                      width: double.maxFinite,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: double.maxFinite,
                                            child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 60.h,
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: 22.h,
                                                      ),
                                                      child: Column(
                                                        spacing: 38,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Container(
                                                                height: 3.h,
                                                                width: 3.h,
                                                                decoration: BoxDecoration(
                                                                  color:
                                                                      theme
                                                                          .colorScheme
                                                                          .onPrimary,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        1.h,
                                                                      ),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      color:
                                                                          appTheme
                                                                              .orangeA10001,
                                                                      spreadRadius:
                                                                          2.h,
                                                                      blurRadius:
                                                                          2.h,
                                                                      offset:
                                                                          Offset(
                                                                            0,
                                                                            0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 4.h,
                                                                width: 4.h,
                                                                decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        2.h,
                                                                      ),
                                                                  gradient: LinearGradient(
                                                                    begin:
                                                                        Alignment(
                                                                          0.5,
                                                                          0,
                                                                        ),
                                                                    end:
                                                                        Alignment(
                                                                          0.5,
                                                                          1,
                                                                        ),
                                                                    colors: [
                                                                      appTheme
                                                                          .yellow10005,
                                                                      appTheme
                                                                          .amber70005,
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    Alignment
                                                                        .bottomCenter,
                                                                child: Container(
                                                                  height: 3.h,
                                                                  width: 3.h,
                                                                  decoration: BoxDecoration(
                                                                    color:
                                                                        theme
                                                                            .colorScheme
                                                                            .onPrimary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          1.h,
                                                                        ),
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        color:
                                                                            appTheme.orangeA10001,
                                                                        spreadRadius:
                                                                            2.h,
                                                                        blurRadius:
                                                                            2.h,
                                                                        offset:
                                                                            Offset(
                                                                              0,
                                                                              0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 4.h,
                                                                width: 4.h,
                                                                decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        2.h,
                                                                      ),
                                                                  gradient: LinearGradient(
                                                                    begin:
                                                                        Alignment(
                                                                          0.5,
                                                                          0,
                                                                        ),
                                                                    end:
                                                                        Alignment(
                                                                          0.5,
                                                                          1,
                                                                        ),
                                                                    colors: [
                                                                      appTheme
                                                                          .yellow10005,
                                                                      appTheme
                                                                          .amber70005,
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                              left: 2.h,
                                                            ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgB928f94165e972824x24,
                                                              height: 20.h,
                                                              width: 20.h,
                                                              alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                              margin:
                                                                  EdgeInsets.only(
                                                                    left: 4.h,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              height: 18.h,
                                                            ),
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgMargin16x16,
                                                              height: 14.h,
                                                              width: 16.h,
                                                            ),
                                                            SizedBox(
                                                              height: 20.h,
                                                            ),
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgThumbsUp1,
                                                              height: 18.h,
                                                              width: 20.h,
                                                              alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                              margin:
                                                                  EdgeInsets.only(
                                                                    right: 2.h,
                                                                  ),
                                                            ),
                                                            SizedBox(
                                                              height: 12.h,
                                                            ),
                                                            Container(
                                                              height: 4.h,
                                                              width: 4.h,
                                                              margin:
                                                                  EdgeInsets.only(
                                                                    left: 6.h,
                                                                  ),
                                                              decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      2.h,
                                                                    ),
                                                                gradient: LinearGradient(
                                                                  begin:
                                                                      Alignment(
                                                                        0.5,
                                                                        0,
                                                                      ),
                                                                  end:
                                                                      Alignment(
                                                                        0.5,
                                                                        1,
                                                                      ),
                                                                  colors: [
                                                                    appTheme
                                                                        .yellow10005,
                                                                    appTheme
                                                                        .amber70005,
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 3.h,
                                                              width: 3.h,
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    theme
                                                                        .colorScheme
                                                                        .onPrimary,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      1.h,
                                                                    ),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color:
                                                                        appTheme
                                                                            .orangeA10001,
                                                                    spreadRadius:
                                                                        2.h,
                                                                    blurRadius:
                                                                        2.h,
                                                                    offset:
                                                                        Offset(
                                                                          0,
                                                                          0,
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
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgThumbsUp2,
                                    height: 18.h,
                                    width: 20.h,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(
                                      right: 50.h,
                                      bottom: 48.h,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMargin2,
                                    height: 16.h,
                                    width: 18.h,
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.only(
                                      left: 82.h,
                                      bottom: 30.h,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMargin,
                                    height: 18.h,
                                    width: 20.h,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(
                                      top: 50.h,
                                      right: 50.h,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 64.h),
                                      child: Column(
                                        spacing: 12,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgMargin20x20,
                                            height: 18.h,
                                            width: 20.h,
                                          ),
                                          Container(
                                            height: 4.h,
                                            width: 4.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2.h),
                                              gradient: LinearGradient(
                                                begin: Alignment(0.5, 0),
                                                end: Alignment(0.5, 1),
                                                colors: [
                                                  appTheme.yellow10005,
                                                  appTheme.amber70005,
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMargin22x22,
                                    height: 18.h,
                                    width: 20.h,
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.only(
                                      left: 52.h,
                                      bottom: 52.h,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 30.h,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgMargin1,
                                                  height: 16.h,
                                                  width: 16.h,
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                    height: 4.h,
                                                    width: 4.h,
                                                    margin: EdgeInsets.only(
                                                      left: 12.h,
                                                      bottom: 2.h,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            2.h,
                                                          ),
                                                      gradient: LinearGradient(
                                                        begin: Alignment(
                                                          0.5,
                                                          0,
                                                        ),
                                                        end: Alignment(0.5, 1),
                                                        colors: [
                                                          appTheme.yellow10005,
                                                          appTheme.amber70005,
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
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 3.h,
                                      width: 3.h,
                                      margin: EdgeInsets.only(
                                        top: 24.h,
                                        right: 58.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary,
                                        borderRadius: BorderRadius.circular(
                                          1.h,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: appTheme.orangeA10001,
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      height: 3.h,
                                      width: 3.h,
                                      margin: EdgeInsets.only(
                                        right: 24.h,
                                        bottom: 58.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary,
                                        borderRadius: BorderRadius.circular(
                                          1.h,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: appTheme.orangeA10001,
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      height: 3.h,
                                      width: 3.h,
                                      margin: EdgeInsets.only(
                                        right: 58.h,
                                        bottom: 26.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary,
                                        borderRadius: BorderRadius.circular(
                                          1.h,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: appTheme.orangeA10001,
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: 52.h,
                                      margin: EdgeInsets.only(bottom: 6.h),
                                      child: Column(
                                        spacing: 4,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            width: double.maxFinite,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 4.h,
                                                  width: 4.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          2.h,
                                                        ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment(0.5, 0),
                                                      end: Alignment(0.5, 1),
                                                      colors: [
                                                        appTheme.yellow10005,
                                                        appTheme.amber70005,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 4.h,
                                                  width: 4.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          2.h,
                                                        ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment(0.5, 0),
                                                      end: Alignment(0.5, 1),
                                                      colors: [
                                                        appTheme.yellow10005,
                                                        appTheme.amber70005,
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 3.h,
                                                  width: 3.h,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        theme
                                                            .colorScheme
                                                            .onPrimary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          1.h,
                                                        ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            appTheme
                                                                .orangeA10001,
                                                        spreadRadius: 2.h,
                                                        blurRadius: 2.h,
                                                        offset: Offset(0, 0),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 3.h,
                                                  width: 3.h,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        theme
                                                            .colorScheme
                                                            .onPrimary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          1.h,
                                                        ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            appTheme
                                                                .orangeA10001,
                                                        spreadRadius: 2.h,
                                                        blurRadius: 2.h,
                                                        offset: Offset(0, 0),
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
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: 3.h,
                                      width: 3.h,
                                      margin: EdgeInsets.only(
                                        left: 58.h,
                                        bottom: 24.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary,
                                        borderRadius: BorderRadius.circular(
                                          1.h,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: appTheme.orangeA10001,
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      height: 3.h,
                                      width: 3.h,
                                      margin: EdgeInsets.only(
                                        left: 24.h,
                                        top: 60.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary,
                                        borderRadius: BorderRadius.circular(
                                          1.h,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: appTheme.orangeA10001,
                                            spreadRadius: 2.h,
                                            blurRadius: 2.h,
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: 4.h,
                                      width: 4.h,
                                      margin: EdgeInsets.only(
                                        left: 64.h,
                                        bottom: 32.h,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          2.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            appTheme.yellow10005,
                                            appTheme.amber70005,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      height: 4.h,
                                      width: 4.h,
                                      margin: EdgeInsets.only(
                                        left: 34.h,
                                        top: 64.h,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          2.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            appTheme.yellow10005,
                                            appTheme.amber70005,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroup2131330062,
                                    height: 28.h,
                                    width: 22.h,
                                    alignment: Alignment.bottomCenter,
                                    margin: EdgeInsets.only(bottom: 82.h),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.img81,
                                    height: 258.h,
                                    width: 258.h,
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
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 322.h,
                    margin: EdgeInsets.only(left: 44.h, right: 12.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img322x374,
                          height: 322.h,
                          width: double.maxFinite,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(top: 20.h),
                            padding: EdgeInsets.symmetric(horizontal: 14.h),
                            child: Column(
                              spacing: 34,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomAppBar(
                                  height: 22.h,
                                  leadingWidth: 14.h,
                                  leading: AppbarLeadingImage(
                                    imagePath:
                                        ImageConstant.imgArrowLeftOnprimary,
                                    height: 14.h,
                                  ),
                                  centerTitle: true,
                                  title: AppbarSubtitle(
                                    text: "lbl_lucky_spin2".tr,
                                  ),
                                  actions: [
                                    AppbarTrailingImage(
                                      imagePath:
                                          ImageConstant.imgInboxOnprimary,
                                      height: 18.h,
                                      width: 18.h,
                                    ),
                                    AppbarSubtitleFour(
                                      text: "lbl_rule".tr,
                                      margin: EdgeInsets.only(left: 6.h),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 60.h,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 12.h,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          height: 24.h,
                                          width: 200.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.deepOrangeA40001,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration:
                                            AppDecoration.outlineBlack90072,
                                        child: Text(
                                          "msg_tips_for_inviting_friends".tr,
                                          textAlign: TextAlign.center,
                                          style:
                                              CustomTextStyles
                                                  .headlineLargeSAFOnPrimary,
                                        ),
                                      ),
                                      Container(
                                        height: 60.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                              decoration:
                                                  AppDecoration
                                                      .outlineBlack9007,
                                              child: Text(
                                                "msg_tips_for_inviting".tr,
                                                textAlign: TextAlign.center,
                                                style:
                                                    CustomTextStyles
                                                        .headlineLargeSAFOnPrimary,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                height: 30.h,
                                                margin: EdgeInsets.only(
                                                  left: 4.h,
                                                  right: 6.h,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                        height: 24.h,
                                                        width: 194.h,
                                                        margin: EdgeInsets.only(
                                                          right: 2.h,
                                                        ),
                                                        decoration: BoxDecoration(
                                                          color:
                                                              appTheme
                                                                  .deepOrangeA40001,
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Expanded(
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineBlack9007,
                                                                child: Text(
                                                                  "lbl_friends_to_get"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .headlineLargeSAFOnPrimary,
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: Container(
                                                                  margin:
                                                                      EdgeInsets.only(
                                                                        left:
                                                                            6.h,
                                                                      ),
                                                                  decoration:
                                                                      AppDecoration
                                                                          .outlineBlack9007,
                                                                  child: Text(
                                                                    "lbl2".tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        CustomTextStyles
                                                                            .headlineLargeSAFYellow30004,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                margin:
                                                                    EdgeInsets.only(
                                                                      left: 2.h,
                                                                    ),
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineBlack9007,
                                                                child: Text(
                                                                  "lbl_5002".tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .headlineLargeSAFYellow30004,
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
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 110.h,
                  margin: EdgeInsets.only(left: 30.h, bottom: 70.h),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img60247024a38f18f,
                        height: 102.h,
                        width: 100.h,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 70.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img60247024a38f18f94x90,
                        height: 102.h,
                        width: 100.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 72.h),
                      ),
                      Container(
                        height: 102.h,
                        width: 100.h,
                        margin: EdgeInsets.only(bottom: 2.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img60247024a38f18f,
                              height: 102.h,
                              width: double.maxFinite,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup2131329458,
                              height: 14.h,
                              width: 26.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(left: 12.h, bottom: 8.h),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img60247024a38f18f94x90,
                        height: 102.h,
                        width: 100.h,
                        alignment: Alignment.bottomLeft,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgC4950f6b1abbb18,
                        height: 18.h,
                        width: 110.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 92.h, bottom: 4.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgC4950f6b1abbb1814x84,
                        height: 18.h,
                        width: 110.h,
                        margin: EdgeInsets.only(right: 92.h, bottom: 2.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSettingsBlueGray100,
                        height: 20.h,
                        width: 34.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 68.h, bottom: 12.h),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img10016294x60,
                  height: 94.h,
                  width: 62.h,
                  margin: EdgeInsets.only(right: 12.h, bottom: 108.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img100161116x110,
                  height: 116.h,
                  width: 112.h,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 106.h),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 44.h,
                    right: 12.h,
                    bottom: 56.h,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 44.h),
                  decoration: AppDecoration.gradientGrayToGray90002,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLogoWj93246x128,
                        height: 38.h,
                        width: 112.h,
                      ),
                      SizedBox(height: 12.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOneone(BuildContext context) {
    return Container(
      height: 308.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 4.h),
              padding: EdgeInsets.only(left: 26.h, top: 26.h, bottom: 26.h),
              decoration: AppDecoration.gradientGrayToBluegray90035.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder24,
              ),
              child: Column(
                spacing: 12,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.h),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 164.h,
                      child: Text(
                        "msg_download_the_app".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallSFProText_2,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage1164,
                    height: 164.h,
                    width: 102.h,
                    radius: BorderRadius.circular(14.h),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              spacing: 54,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 54.h,
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 46.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 36.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle34624870,
                              height: 36.h,
                              width: 44.h,
                              alignment: Alignment.centerLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle34624871,
                              height: 36.h,
                              width: 38.h,
                              alignment: Alignment.centerRight,
                            ),
                            CustomElevatedButton(
                              height: 32.h,
                              width: 204.h,
                              text: "lbl_download_app2".tr,
                              buttonStyle: CustomButtonStyles.none,
                              decoration:
                                  CustomButtonStyles
                                      .gradientYellowAToAmberDecoration,
                              buttonTextStyle:
                                  CustomTextStyles.bodyLargeAaHouDiHei,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 8.h),
                          decoration: AppDecoration.outlineGray90040,
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(-(-9 / 360)),
                            child: Text(
                              "lbl_12".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.displayLargeSAFOnPrimary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img10016256x54,
                        height: 56.h,
                        width: 56.h,
                        alignment: Alignment.bottomCenter,
                      ),
                      SizedBox(
                        height: 198.h,
                        width: 208.h,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img60247024a38f18f94x90,
                              height: 56.h,
                              width: 56.h,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 164.h,
                                margin: EdgeInsets.only(right: 30.h),
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage164x158,
                                      height: 164.h,
                                      width: 160.h,
                                      radius: BorderRadius.circular(14.h),
                                      alignment: Alignment.centerLeft,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.img94bdf4d8739c965,
                                      height: 40.h,
                                      width: 42.h,
                                      margin: EdgeInsets.only(bottom: 16.h),
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwoone(BuildContext context) {
    return Container(
      height: 300.h,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 30.h),
            decoration: AppDecoration.gradientGrayToBluegray90035.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder24,
            ),
            child: Column(
              spacing: 18,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4.h),
                Text(
                  "msg_complete_phone_number".tr,
                  style: CustomTextStyles.titleSmallSFProText_2,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1164164x100,
                        height: 164.h,
                        width: 100.h,
                        radius: BorderRadius.circular(14.h),
                        margin: EdgeInsets.only(left: 18.h),
                      ),
                      Expanded(
                        child: Container(
                          height: 164.h,
                          margin: EdgeInsets.only(left: 12.h),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: 164.h,
                                  margin: EdgeInsets.only(right: 18.h),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage21,
                                        height: 164.h,
                                        width: double.maxFinite,
                                        radius: BorderRadius.circular(14.h),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          width: double.maxFinite,
                                          margin: EdgeInsets.only(bottom: 38.h),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 6.h,
                                          ),
                                          child: Column(
                                            spacing: 6,
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                height: 20.h,
                                                width: 40.h,
                                                margin: EdgeInsets.only(
                                                  right: 6.h,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        3.h,
                                                      ),
                                                  border: Border.all(
                                                    color: appTheme.yellowA400,
                                                    width: 0.96.h,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 28.h,
                                                width: 144.h,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        3.h,
                                                      ),
                                                  border: Border.all(
                                                    color: appTheme.yellowA400,
                                                    width: 0.96.h,
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
                              CustomImageView(
                                imagePath: ImageConstant.img94bdf4d8739c965,
                                height: 40.h,
                                width: 42.h,
                                margin: EdgeInsets.only(bottom: 16.h),
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
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 54.h,
              width: 262.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 46.h,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle34624870,
                          height: 44.h,
                          width: 54.h,
                          alignment: Alignment.centerLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle34624871,
                          height: 44.h,
                          width: 48.h,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 4.h,
                              vertical: 12.h,
                            ),
                            decoration: AppDecoration.gradientYellowAToAmber,
                            child: Text(
                              "msg_phone_verification3".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeAaHouDiHei,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 6.h),
                      decoration: AppDecoration.outlineGray900401,
                      child: RotationTransition(
                        turns: AlwaysStoppedAnimation(-(-9 / 360)),
                        child: Text(
                          "lbl_22".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.displayMediumSAFOnPrimary,
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
  Widget _buildThreeone(BuildContext context) {
    return Container(
      height: 1958.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 10.h, right: 20.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 6.h),
            padding: EdgeInsets.symmetric(vertical: 32.h),
            decoration: AppDecoration.gradientGrayToBluegray90035.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    "msg_tip_the_more_friends".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleSmallSFProTextYellow70005,
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 46.h, right: 50.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VerticalDivider(
                        width: 2.h,
                        thickness: 2.h,
                        color: appTheme.lightGreenA700,
                        indent: 10.h,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_step_1".tr,
                                style: CustomTextStyles.titleMediumSFProText_1,
                              ),
                              SizedBox(height: 8.h),
                              Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text(
                                  "msg_click_the_button2".tr,
                                  style: CustomTextStyles.bodySmallOnPrimary_3,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text(
                                  "msg_invite_friends".tr,
                                  style:
                                      CustomTextStyles
                                          .labelLargeSFProTextYellow70005SemiBold,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Container(
                                height: 208.h,
                                width: double.maxFinite,
                                margin: EdgeInsets.only(left: 16.h),
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage1153,
                                      height: 178.h,
                                      width: double.maxFinite,
                                      radius: BorderRadius.circular(14.h),
                                      alignment: Alignment.topCenter,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.img94bdf4d8739c965,
                                      height: 58.h,
                                      width: 60.h,
                                      margin: EdgeInsets.only(right: 2.h),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                "lbl_step_2".tr,
                                style: CustomTextStyles.titleMediumSFProText_1,
                              ),
                              SizedBox(height: 6.h),
                              Container(
                                width: 186.h,
                                margin: EdgeInsets.only(left: 16.h),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_in_the_sharing_popup".tr,
                                        style:
                                            CustomTextStyles
                                                .bodySmallOnPrimary_1,
                                      ),
                                      TextSpan(
                                        text: "lbl_tg_fb_whatsapp".tr,
                                        style:
                                            CustomTextStyles
                                                .labelLargeSFProTextYellow70005,
                                      ),
                                      TextSpan(
                                        text: "msg_to_share_it_on".tr,
                                        style:
                                            CustomTextStyles
                                                .bodySmallOnPrimary_1,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 296.h,
                    width: 208.h,
                    margin: EdgeInsets.only(right: 48.h),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1154,
                          height: 260.h,
                          width: double.maxFinite,
                          radius: BorderRadius.circular(14.h),
                          alignment: Alignment.topCenter,
                        ),
                        Container(
                          height: 86.h,
                          width: 206.h,
                          margin: EdgeInsets.only(bottom: 44.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.h),
                            border: Border.all(
                              color: appTheme.amberA70004,
                              width: 3.h,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img94bdf4d8739c965,
                          height: 58.h,
                          width: 60.h,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(right: 50.h),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Container(
                  height: 618.h,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 22.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          spacing: 10,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.h,
                                vertical: 2.h,
                              ),
                              decoration: AppDecoration.gradientYellowAToOrange
                                  .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder10,
                                  ),
                              child: Text(
                                "lbl_whatsapp2".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelMediumPink90002,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20.h),
                              child: BlocSelector<
                                WheelSpinMainRulesBloc,
                                WheelSpinMainRulesState,
                                WheelSpinMainRulesModel?
                              >(
                                selector:
                                    (state) => state.wheelSpinMainRulesModelObj,
                                builder: (context, wheelSpinMainRulesModelObj) {
                                  return ResponsiveGridListBuilder(
                                    minItemWidth: 1,
                                    minItemsPerRow: 2,
                                    maxItemsPerRow: 2,
                                    horizontalGridSpacing: 10.h,
                                    verticalGridSpacing: 16.h,
                                    builder:
                                        (context, items) => ListView(
                                          shrinkWrap: true,
                                          padding: EdgeInsets.zero,
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          children: items,
                                        ),
                                    gridItems: List.generate(
                                      wheelSpinMainRulesModelObj
                                              ?.grid94bdf4d8739ItemList
                                              .length ??
                                          0,
                                      (index) {
                                        Grid94bdf4d8739ItemModel model =
                                            wheelSpinMainRulesModelObj
                                                ?.grid94bdf4d8739ItemList[index] ??
                                            Grid94bdf4d8739ItemModel();
                                        return Grid94bdf4d8739ItemWidget(model);
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img94bdf4d8739c965,
                        height: 32.h,
                        width: 34.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 124.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img94bdf4d8739c965,
                        height: 32.h,
                        width: 34.h,
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 22.h),
                    padding: EdgeInsets.symmetric(horizontal: 6.h),
                    decoration: AppDecoration.gradientYellowAToOrange.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: AppDecoration.outlineAmberA4002,
                          child: Text(
                            "lbl_telegram2".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumPink90002,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: appTheme.lightGreen80006,
                              width: 2.26.h,
                            ),
                            borderRadius: BorderRadiusStyle.circleBorder10,
                          ),
                          child: Container(
                            height: 194.h,
                            decoration: AppDecoration.outlineLightgreen80006
                                .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder10,
                                ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage194x140,
                                  height: 194.h,
                                  width: double.maxFinite,
                                  radius: BorderRadius.circular(10.h),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.img94bdf4d8739c965,
                                  height: 32.h,
                                  width: 34.h,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(
                                    right: 32.h,
                                    bottom: 70.h,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: appTheme.lightGreen80006,
                              width: 2.26.h,
                            ),
                            borderRadius: BorderRadiusStyle.circleBorder10,
                          ),
                          child: Container(
                            height: 194.h,
                            decoration: AppDecoration.outlineLightgreen80006
                                .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder10,
                                ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage26,
                                  height: 194.h,
                                  width: double.maxFinite,
                                  radius: BorderRadius.circular(10.h),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.img94bdf4d8739c965,
                                  height: 32.h,
                                  width: 34.h,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(
                                    right: 32.h,
                                    bottom: 70.h,
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
                SizedBox(height: 24.h),
                Container(
                  height: 222.h,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 22.h, right: 8.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          spacing: 10,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.h,
                                vertical: 2.h,
                              ),
                              decoration: AppDecoration.gradientYellowAToOrange
                                  .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder10,
                                  ),
                              child: Text(
                                "lbl_facebook2".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelMediumPink90002,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 12.h),
                              width: double.maxFinite,
                              child: BlocSelector<
                                WheelSpinMainRulesBloc,
                                WheelSpinMainRulesState,
                                WheelSpinMainRulesModel?
                              >(
                                selector:
                                    (state) => state.wheelSpinMainRulesModelObj,
                                builder: (context, wheelSpinMainRulesModelObj) {
                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Wrap(
                                      direction: Axis.horizontal,
                                      spacing: 10.h,
                                      children: List.generate(
                                        wheelSpinMainRulesModelObj
                                                ?.list94bdf4d8739ItemList
                                                .length ??
                                            0,
                                        (index) {
                                          List94bdf4d8739ItemModel model =
                                              wheelSpinMainRulesModelObj
                                                  ?.list94bdf4d8739ItemList[index] ??
                                              List94bdf4d8739ItemModel();
                                          return List94bdf4d8739ItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img94bdf4d8739c965,
                        height: 32.h,
                        width: 34.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 46.h),
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
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 52.h,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 40.h, right: 36.h),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 46.h,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle34624870,
                              height: 44.h,
                              width: 54.h,
                              alignment: Alignment.centerLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle34624871,
                              height: 44.h,
                              width: 48.h,
                            ),
                            CustomElevatedButton(
                              height: 42.h,
                              width: 174.h,
                              text: "msg_invite_friends_withdraw".tr,
                              buttonStyle: CustomButtonStyles.none,
                              decoration:
                                  CustomButtonStyles
                                      .gradientYellowAToAmber1Decoration,
                              buttonTextStyle:
                                  CustomTextStyles
                                      .bodyMediumAaHouDiHeiOnPrimary,
                              alignment: Alignment.topCenter,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 8.h),
                          decoration: AppDecoration.outlineGray900401,
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(-(-9 / 360)),
                            child: Text(
                              "lbl_3".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.displayMediumSAFOnPrimary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgB90731b4a8036db,
                  height: 72.h,
                  width: 74.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThreethree(BuildContext context) {
    return Container(
      height: 986.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h, right: 10.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 956.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 14.h, right: 10.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 30.h,
                  ),
                  decoration: AppDecoration.gradientGrayToBluegray90035
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "msg_the_prompt_below".tr,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallSFProText_2,
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        height: 120.h,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 22.h, right: 6.h),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 120.h,
                                margin: EdgeInsets.only(right: 20.h),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage1158,
                                      height: 120.h,
                                      width: double.maxFinite,
                                      radius: BorderRadius.circular(14.h),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        width: double.maxFinite,
                                        margin: EdgeInsets.only(
                                          left: 8.h,
                                          top: 8.h,
                                          right: 8.h,
                                        ),
                                        child: Column(
                                          spacing: 16,
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 34.h,
                                              width: 118.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4.h),
                                                border: Border.all(
                                                  color: appTheme.yellowA400,
                                                  width: 3.h,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                height: 22.h,
                                                width: 46.h,
                                                margin: EdgeInsets.only(
                                                  right: 66.h,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        4.h,
                                                      ),
                                                  border: Border.all(
                                                    color: appTheme.yellowA400,
                                                    width: 3.h,
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
                            CustomImageView(
                              imagePath: ImageConstant.img94bdf4d8739c965,
                              height: 58.h,
                              width: 60.h,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 36.h),
                      Container(
                        height: 328.h,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 22.h, right: 10.h),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage1159,
                              height: 328.h,
                              width: double.maxFinite,
                              radius: BorderRadius.circular(14.h),
                              alignment: Alignment.centerLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img94bdf4d8739c96558x58,
                              height: 58.h,
                              width: 60.h,
                              margin: EdgeInsets.only(bottom: 14.h),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 28.h),
                      Text(
                        "msg_after_the_platform".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallSFProText_2,
                      ),
                      SizedBox(height: 238.h),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 276.h,
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.img60247024a38f18f,
                                          height: 94.h,
                                          width: 92.h,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage1160,
                                          height: 228.h,
                                          width: 244.h,
                                          radius: BorderRadius.circular(14.h),
                                          alignment: Alignment.topRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgBonusLuckySpinDad264d8,
                                  height: 50.h,
                                  width: 50.h,
                                  alignment: Alignment.bottomCenter,
                                  margin: EdgeInsets.only(bottom: 4.h),
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
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 54.h,
              width: 262.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 46.h,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle34624870,
                          height: 44.h,
                          width: 54.h,
                          alignment: Alignment.centerLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle34624871,
                          height: 44.h,
                          width: 48.h,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 4.h),
                            decoration: AppDecoration.gradientYellowAToAmber,
                            child: Text(
                              "msg_check_withdrawal".tr,
                              textAlign: TextAlign.center,
                              style:
                                  CustomTextStyles
                                      .bodyMediumAaHouDiHeiOnPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 6.h),
                      decoration: AppDecoration.outlineGray900401,
                      child: RotationTransition(
                        turns: AlwaysStoppedAnimation(-(-9 / 360)),
                        child: Text(
                          "lbl_4".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.displayMediumSAFOnPrimary,
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
}
