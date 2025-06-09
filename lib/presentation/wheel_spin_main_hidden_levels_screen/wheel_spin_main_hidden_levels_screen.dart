import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/wheel_spin_main_hidden_levels_bloc.dart';
import 'models/listspacer_item_model.dart';
import 'models/wheel_spin_main_hidden_levels_model.dart';
import 'wheelspinmain_tab_page.dart';
import 'widgets/listspacer_item_widget.dart';

class WheelSpinMainHiddenLevelsScreen extends StatefulWidget {
  const WheelSpinMainHiddenLevelsScreen({Key? key}) : super(key: key);

  @override
  WheelSpinMainHiddenLevelsScreenState createState() =>
      WheelSpinMainHiddenLevelsScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<WheelSpinMainHiddenLevelsBloc>(
      create:
          (context) => WheelSpinMainHiddenLevelsBloc(
            WheelSpinMainHiddenLevelsState(
              wheelSpinMainHiddenLevelsModelObj:
                  WheelSpinMainHiddenLevelsModel(),
            ),
          )..add(WheelSpinMainHiddenLevelsInitialEvent()),
      child: WheelSpinMainHiddenLevelsScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class WheelSpinMainHiddenLevelsScreenState
    extends State<WheelSpinMainHiddenLevelsScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
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
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                spacing: 14,
                children: [
                  SizedBox(
                    height: 636.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 62.h,
                            width: 374.h,
                            margin: EdgeInsets.only(top: 62.h),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.5, 1),
                                end: Alignment(0.5, 0),
                                colors: [
                                  appTheme.gray90002,
                                  appTheme.gray90002.withValues(alpha: 0),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.85,
                          child: CustomImageView(
                            imagePath: ImageConstant.img556x374,
                            height: 556.h,
                            width: double.maxFinite,
                            margin: EdgeInsets.only(bottom: 12.h),
                          ),
                        ),
                        Container(
                          height: 590.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Opacity(
                                opacity: 0.35,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgF11,
                                  height: 528.h,
                                  width: double.maxFinite,
                                ),
                              ),
                              Container(
                                height: 590.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Opacity(
                                      opacity: 0.35,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgF2586x374,
                                        height: 586.h,
                                        width: double.maxFinite,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 530.h,
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            _buildStackone(context),
                                            _buildColumnonefour(context),
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
                        _buildColumntdr2two(context),
                      ],
                    ),
                  ),
                  _buildRowspinbonus(context),
                  _buildStackreportone(context),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildColumn(context),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(height: 36.h, styleType: Style.bgStyle);
  }

  /// Section Widget
  Widget _buildStackone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 290.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img14,
              height: 290.h,
              width: double.maxFinite,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 230.h,
                width: 294.h,
                margin: EdgeInsets.only(top: 6.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 138.h,
                        width: 112.h,
                        margin: EdgeInsets.only(top: 36.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFc2,
                              height: 138.h,
                              width: double.maxFinite,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage1108,
                              height: 62.h,
                              width: 64.h,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 12.h),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBaoshi1,
                      height: 140.h,
                      width: 142.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 30.h),
                    ),
                    SizedBox(
                      height: 230.h,
                      width: 186.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage771,
                            height: 230.h,
                            width: double.maxFinite,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img74x74,
                            height: 74.h,
                            width: 76.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 40.h, right: 14.h),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage110084x84,
                      height: 84.h,
                      width: 86.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 44.h, top: 42.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img0ab53a5f627c836,
                      height: 82.h,
                      width: 84.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 8.h, right: 42.h),
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
  Widget _buildColumnonefour(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 14.h, right: 10.h),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 330.h,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 302.h,
                    margin: EdgeInsets.only(left: 18.h, right: 24.h),
                    padding: EdgeInsets.symmetric(horizontal: 6.h),
                    decoration: AppDecoration.stack316,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 290.h,
                          decoration: AppDecoration.stack317,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 146.h,
                                width: 148.h,
                                decoration: AppDecoration
                                    .gradientBlackToBlack900
                                    .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder72,
                                    ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.img94x94,
                                      height: 94.h,
                                      width: 96.h,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 284.h,
                                padding: EdgeInsets.symmetric(horizontal: 10.h),
                                decoration: AppDecoration.stack318,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SizedBox(
                                      height: 76.h,
                                      width: 66.h,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                bottom: 18.h,
                                              ),
                                              decoration:
                                                  AppDecoration
                                                      .outlineBlack9006,
                                              child: Text(
                                                "lbl_12".tr,
                                                textAlign: TextAlign.center,
                                                style:
                                                    CustomTextStyles
                                                        .headlineSmallSFProText,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.maxFinite,
                                            child: Column(
                                              spacing: 18,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .img100000Ispt,
                                                  height: 34.h,
                                                  width: double.maxFinite,
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgFrame2131329923,
                                                  height: 24.h,
                                                  width: double.maxFinite,
                                                  margin: EdgeInsets.symmetric(
                                                    horizontal: 12.h,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 260.h,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            width: double.maxFinite,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 30.h,
                                            ),
                                            child: Column(
                                              spacing: 20,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                  width: double.maxFinite,
                                                  margin: EdgeInsets.symmetric(
                                                    horizontal: 24.h,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                              top: 26.h,
                                                            ),
                                                        child: RotationTransition(
                                                          turns:
                                                              AlwaysStoppedAnimation(
                                                                -(136 / 360),
                                                              ),
                                                          child: Text(
                                                            "lbl_18_00".tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .titleSmall15,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: RotationTransition(
                                                          turns:
                                                              AlwaysStoppedAnimation(
                                                                -(89 / 360),
                                                              ),
                                                          child: Text(
                                                            "lbl18".tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .titleLarge_1,
                                                          ),
                                                        ),
                                                      ),
                                                      RotationTransition(
                                                        turns:
                                                            AlwaysStoppedAnimation(
                                                              -(45 / 360),
                                                            ),
                                                        child: Text(
                                                          "lbl_58_00".tr,
                                                          style:
                                                              CustomTextStyles
                                                                  .titleSmall15,
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
                                                      RotationTransition(
                                                        turns:
                                                            AlwaysStoppedAnimation(
                                                              -(-179 / 360),
                                                            ),
                                                        child: Text(
                                                          "lbl_88_003".tr,
                                                          style:
                                                              CustomTextStyles
                                                                  .titleSmall15,
                                                        ),
                                                      ),
                                                      Text(
                                                        "lbl_17".tr,
                                                        style:
                                                            CustomTextStyles
                                                                .titleSmall15,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: double.maxFinite,
                                                  margin: EdgeInsets.symmetric(
                                                    horizontal: 24.h,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                              top: 10.h,
                                                            ),
                                                        child: RotationTransition(
                                                          turns:
                                                              AlwaysStoppedAnimation(
                                                                -(-134 / 360),
                                                              ),
                                                          child: Text(
                                                            "lbl_38_00".tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .titleSmall15,
                                                          ),
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Align(
                                                        alignment:
                                                            Alignment
                                                                .bottomCenter,
                                                        child: RotationTransition(
                                                          turns:
                                                              AlwaysStoppedAnimation(
                                                                -(-89 / 360),
                                                              ),
                                                          child: Text(
                                                            "lbl_78_00".tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .titleSmall15,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                              left: 22.h,
                                                              bottom: 24.h,
                                                            ),
                                                        child: RotationTransition(
                                                          turns:
                                                              AlwaysStoppedAnimation(
                                                                -(-45 / 360),
                                                              ),
                                                          child: Text(
                                                            "lbl_5000_00".tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .titleSmall15,
                                                          ),
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
                                              spacing: 42,
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: double.maxFinite,
                                                  margin: EdgeInsets.only(
                                                    left: 24.h,
                                                    right: 30.h,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .imgImage42x42,
                                                        height: 42.h,
                                                        width: 44.h,
                                                        margin: EdgeInsets.only(
                                                          top: 28.h,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .imgDownload30x30,
                                                        height: 30.h,
                                                        width: 32.h,
                                                        alignment:
                                                            Alignment.topCenter,
                                                      ),
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .imgImage42x42,
                                                        height: 42.h,
                                                        width: 44.h,
                                                        margin: EdgeInsets.only(
                                                          bottom: 2.h,
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
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .imgImage42x42,
                                                        height: 30.h,
                                                        width: 32.h,
                                                      ),
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .imgImage30x30,
                                                        height: 30.h,
                                                        width: 32.h,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: double.maxFinite,
                                                  margin: EdgeInsets.only(
                                                    left: 24.h,
                                                    right: 28.h,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .imgImage42x42,
                                                        height: 42.h,
                                                        width: 44.h,
                                                        margin: EdgeInsets.only(
                                                          bottom: 28.h,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .imgImage42x42,
                                                        height: 30.h,
                                                        width: 32.h,
                                                        alignment:
                                                            Alignment
                                                                .bottomCenter,
                                                      ),
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .imgImage17,
                                                        height: 42.h,
                                                        width: 44.h,
                                                        margin: EdgeInsets.only(
                                                          top: 2.h,
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
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup2131330076,
                          height: 34.h,
                          width: 26.h,
                          alignment: Alignment.topCenter,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 72.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame2131329917,
                        height: 72.h,
                        width: double.maxFinite,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "lbl_lucky_win".tr,
                                            style:
                                                CustomTextStyles
                                                    .titleMediumSFProTextYellowA70001,
                                          ),
                                          Text(
                                            "lbl_per_day".tr,
                                            style:
                                                CustomTextStyles
                                                    .titleLargeSFProText,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration:
                                            AppDecoration.outlineGray90038,
                                        child: Text(
                                          "lbl_12".tr,
                                          textAlign: TextAlign.center,
                                          style:
                                              CustomTextStyles
                                                  .displayMediumYellow40003,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 2.h),
                                          child: Column(
                                            children: [
                                              Text(
                                                "lbl_free".tr,
                                                style:
                                                    CustomTextStyles
                                                        .titleLargeSFProTextYellowA70001,
                                              ),
                                              Text(
                                                "lbl_spins".tr,
                                                style:
                                                    CustomTextStyles
                                                        .titleMediumSFProTextYellowA70001ExtraBold,
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
              ],
            ),
          ),
          CustomElevatedButton(
            height: 50.h,
            text: "msg_invite_friends_to2".tr,
            margin: EdgeInsets.only(right: 4.h),
            rightIcon: Container(
              margin: EdgeInsets.only(left: 14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSend,
                height: 24.h,
                width: 24.h,
                fit: BoxFit.contain,
              ),
            ),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientGrayToBlueGrayTL24Decoration,
            buttonTextStyle: CustomTextStyles.titleSmall15,
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 50.h, right: 52.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 36.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage26x26,
                          height: 26.h,
                          width: 28.h,
                          alignment: Alignment.topCenter,
                        ),
                        Text(
                          "lbl_ends".tr,
                          style: CustomTextStyles.bodySmallOnPrimary9,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "lbl_event".tr,
                            style: CustomTextStyles.bodySmallOnPrimary9,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: _buildStackgridSeven(
                      context,
                      sixOne: "lbl_023".tr,
                      secOne: "lbl_day".tr,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl7".tr,
                    style: CustomTextStyles.titleMediumBlack18,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: _buildStackgridFive(
                      context,
                      twentyoneOne: "lbl_013".tr,
                      minOne: "lbl_hr".tr,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl7".tr,
                    style: CustomTextStyles.titleMediumBlack18,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: _buildStackgridFive(
                      context,
                      twentyoneOne: "lbl_21".tr,
                      minOne: "lbl_min".tr,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl7".tr,
                    style: CustomTextStyles.titleMediumBlack18,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: _buildStackgridSeven(
                      context,
                      sixOne: "lbl_062".tr,
                      secOne: "lbl_sec".tr,
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
  Widget _buildColumntdr2two(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.h),
        decoration: AppDecoration.gradientYellowAToGreenA700032.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Column(
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTdr23,
                    height: 38.h,
                    width: 42.h,
                    alignment: Alignment.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_992_59".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  Spacer(),
                  CustomElevatedButton(
                    height: 30.h,
                    width: 106.h,
                    text: "lbl_withdraw".tr,
                    margin: EdgeInsets.only(bottom: 2.h),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgTelevisionOnprimary18x18,
                        height: 18.h,
                        width: 18.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientAmberToAmberTL14Decoration,
                    buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
                  ),
                ],
              ),
            ),
            Container(
              decoration: AppDecoration.fillBlack9006.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              width: double.maxFinite,
              child: Row(
                children: [
                  SizedBox(
                    height: 14.h,
                    width: 182.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6.h),
                      child: LinearProgressIndicator(
                        value: 0.07,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          theme.colorScheme.onPrimary.withValues(alpha: 0.42),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_70".tr,
                      style: CustomTextStyles.labelLargeOnPrimary_6,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_withdrawl_to_wallet".tr,
                    style: CustomTextStyles.labelLargeOnPrimary_4,
                  ),
                  TextSpan(
                    text: "lbl_3_07".tr,
                    style: CustomTextStyles.labelLargeYellowA40006,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowspinbonus(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      padding: EdgeInsets.all(2.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.h),
            decoration: AppDecoration.fillBluegray90004.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 4.h),
                Text(
                  "msg_spin_bonus_total".tr,
                  style: theme.textTheme.bodySmall,
                ),
                Text(
                  "lbl_17_288_717_93".tr,
                  style: CustomTextStyles.titleSmallOrange40003,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
              decoration: AppDecoration.fillBluegray90004.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage18,
                    height: 30.h,
                    width: 30.h,
                    radius: BorderRadius.circular(14.h),
                    alignment: Alignment.bottomCenter,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_sanikhan".tr,
                            style: CustomTextStyles.labelLargeOnPrimary_6,
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              children: [
                                Text(
                                  "lbl_win".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "lbl_bnt_27_66".tr,
                                    style:
                                        CustomTextStyles
                                            .labelLargeLightgreenA700,
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
                    imagePath: ImageConstant.imgArrowRightOnprimary,
                    height: 10.h,
                    width: 10.h,
                    margin: EdgeInsets.only(top: 10.h),
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
  Widget _buildStackreportone(BuildContext context) {
    return SizedBox(
      height: 234.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14.h),
            decoration: BoxDecoration(
              color: appTheme.gray90001,
              borderRadius: BorderRadius.circular(10.h),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.h),
              child: TabBar(
                controller: tabviewController,
                labelPadding: EdgeInsets.zero,
                labelColor: appTheme.blueGray400,
                labelStyle: TextStyle(
                  fontSize: 14.fSize,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w400,
                ),
                unselectedLabelColor: theme.colorScheme.onPrimary,
                unselectedLabelStyle: TextStyle(
                  fontSize: 14.fSize,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w700,
                ),
                tabs: [
                  Tab(
                    height: 40,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(right: 6.h),
                      decoration:
                          tabIndex == 0
                              ? BoxDecoration(
                                color: appTheme.gray90001,
                                borderRadius: BorderRadius.circular(10.h),
                              )
                              : BoxDecoration(
                                color: appTheme.blueGray90004,
                                borderRadius: BorderRadius.circular(10.h),
                              ),
                      child: Text("lbl_report2".tr),
                    ),
                  ),
                  Tab(
                    height: 40,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(left: 6.h),
                      decoration:
                          tabIndex == 1
                              ? BoxDecoration(
                                color: appTheme.gray90001,
                                borderRadius: BorderRadius.circular(10.h),
                              )
                              : BoxDecoration(
                                color: appTheme.blueGray90004,
                                borderRadius: BorderRadius.circular(10.h),
                              ),
                      child: Text("lbl_my_invitation".tr),
                    ),
                  ),
                ],
                indicatorColor: Colors.transparent,
                onTap: (index) {
                  tabIndex = index;
                  setState(() {});
                },
              ),
            ),
          ),
          SizedBox(
            height: 208.h,
            child: TabBarView(
              controller: tabviewController,
              children: [
                WheelspinmainTabPage.builder(context),
                WheelspinmainTabPage.builder(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(bottom: 12.h),
            decoration: AppDecoration.outlineBluegray90004.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              spacing: 10,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocSelector<
                  WheelSpinMainHiddenLevelsBloc,
                  WheelSpinMainHiddenLevelsState,
                  WheelSpinMainHiddenLevelsModel?
                >(
                  selector: (state) => state.wheelSpinMainHiddenLevelsModelObj,
                  builder: (context, wheelSpinMainHiddenLevelsModelObj) {
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 8.h);
                      },
                      itemCount:
                          wheelSpinMainHiddenLevelsModelObj
                              ?.listspacerItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        ListspacerItemModel model =
                            wheelSpinMainHiddenLevelsModelObj
                                ?.listspacerItemList[index] ??
                            ListspacerItemModel();
                        return ListspacerItemWidget(model);
                      },
                    );
                  },
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 6.h),
                        child: Text(
                          "lbl_140_090".tr,
                          style:
                              CustomTextStyles
                                  .labelLargeSFProTextOnPrimaryMedium,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: Text(
                            "lbl_1_free_spin".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 4.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "lbl_get3".tr,
                                      style: CustomTextStyles.bodySmall10_1,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgTelevision18x18,
                                      height: 18.h,
                                      width: 18.h,
                                    ),
                                    Text(
                                      "lbl_83_70".tr,
                                      style:
                                          CustomTextStyles
                                              .labelLargeSFProTextOrange40003,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "msg_2023_09_09_19_00_00".tr,
                                style: CustomTextStyles.bodySmall10_1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUserAmberA400048x8,
                        height: 8.h,
                        width: 10.h,
                        margin: EdgeInsets.only(left: 30.h, top: 4.h),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUserAmberA400048x8,
                        height: 8.h,
                        width: 10.h,
                        margin: EdgeInsets.only(left: 24.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup2131329535,
                        height: 8.h,
                        width: 10.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUserAmberA400048x8,
                        height: 8.h,
                        width: 10.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup2131329535,
                        height: 8.h,
                        width: 10.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUserAmberA400048x8,
                        height: 8.h,
                        width: 10.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup2131329535,
                        height: 8.h,
                        width: 10.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUserAmberA400048x8,
                        height: 8.h,
                        width: 10.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup2131329535,
                        height: 8.h,
                        width: 10.h,
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

  /// Common widget
  Widget _buildStackgridSeven(
    BuildContext context, {
    required String sixOne,
    required String secOne,
  }) {
    return SizedBox(
      height: 36.h,
      width: 36.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGridOnprimary,
            height: 36.h,
            width: 36.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  sixOne,
                  style: CustomTextStyles.titleSmallSFProTextBlack.copyWith(
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
                Text(
                  secOne,
                  style: CustomTextStyles.labelSmallOnPrimary.copyWith(
                    color: theme.colorScheme.onPrimary,
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
  Widget _buildStackgridFive(
    BuildContext context, {
    required String twentyoneOne,
    required String minOne,
  }) {
    return SizedBox(
      height: 36.h,
      width: 36.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGridOnprimary,
            height: 36.h,
            width: 36.h,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    twentyoneOne,
                    style: CustomTextStyles.titleSmallSFProTextBlack.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                  Text(
                    minOne,
                    style: CustomTextStyles.labelSmallOnPrimary.copyWith(
                      color: theme.colorScheme.onPrimary,
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
