import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'models/splash_screen_item_model.dart';
import 'widgets/splash_screen_item_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create:
          (context) =>
              SplashBloc(SplashState(splashModelObj: SplashModel()))
                ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimary,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: 798.h,
              decoration: AppDecoration.fs2bg,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img21,
                    height: 798.h,
                    width: double.maxFinite,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 648.h,
                      margin: EdgeInsets.only(top: 16.h),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: 488.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img11,
                                  height: 488.h,
                                  width: double.maxFinite,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    width: 216.h,
                                    margin: EdgeInsets.only(bottom: 26.h),
                                    child: Column(
                                      spacing: 6,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomElevatedButton(
                                          height: 28.h,
                                          text: "lbl_jbet88_com".tr,
                                          buttonStyle:
                                              CustomButtonStyles
                                                  .fillLightGreenATL14,
                                          buttonTextStyle:
                                              CustomTextStyles
                                                  .labelLargeIndigo100,
                                        ),
                                        CustomElevatedButton(
                                          height: 28.h,
                                          text: "lbl_jbet88_ph".tr,
                                          leftIcon: Container(
                                            margin: EdgeInsets.only(
                                              right: 30.h,
                                            ),
                                            child: CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .imgFrameOnprimary,
                                              height: 16.h,
                                              width: 16.h,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          buttonStyle:
                                              CustomButtonStyles
                                                  .fillLightGreenATL14,
                                          buttonTextStyle:
                                              CustomTextStyles
                                                  .labelLargeIndigo10001,
                                        ),
                                        CustomElevatedButton(
                                          height: 28.h,
                                          text: "lbl_jbet88_cc".tr,
                                          leftIcon: Container(
                                            margin: EdgeInsets.only(
                                              right: 30.h,
                                            ),
                                            child: CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .imgFrameOnprimary,
                                              height: 16.h,
                                              width: 16.h,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          buttonStyle:
                                              CustomButtonStyles
                                                  .fillLightGreenATL14,
                                          buttonTextStyle:
                                              CustomTextStyles
                                                  .labelLargeIndigo10001,
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
                              width: 298.h,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgLogoWj932,
                                    height: 50.h,
                                    width: 142.h,
                                  ),
                                  SizedBox(height: 22.h),
                                  Text(
                                    "msg_make_a_million_every".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .titleMediumYellowA70002
                                        .copyWith(height: 1.14),
                                  ),
                                  SizedBox(height: 6.h),
                                  Container(
                                    width: double.maxFinite,
                                    margin: EdgeInsets.only(right: 4.h),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ClipRect(
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 14,
                                                sigmaY: 14,
                                              ),
                                              child: Container(
                                                width: double.maxFinite,
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 4.h,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineOnPrimary7
                                                    .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder10,
                                                    ),
                                                child: Column(
                                                  spacing: 4,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "lbl_qualified_bonus".tr,
                                                      style:
                                                          CustomTextStyles
                                                              .labelLargeYellowA70001,
                                                    ),
                                                    Container(
                                                      decoration:
                                                          AppDecoration
                                                              .outlineTeal,
                                                      child: Text(
                                                        "lbl_1682".tr,
                                                        textAlign:
                                                            TextAlign.right,
                                                        style:
                                                            CustomTextStyles
                                                                .titleMediumLightgreenA400,
                                                      ),
                                                    ),
                                                    SizedBox(height: 4.h),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: ClipRect(
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 14,
                                                sigmaY: 14,
                                              ),
                                              child: Container(
                                                width: double.maxFinite,
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 4.h,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineOnPrimary7
                                                    .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder10,
                                                    ),
                                                child: Column(
                                                  spacing: 4,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "msg_achievement_reward"
                                                          .tr,
                                                      style:
                                                          CustomTextStyles
                                                              .labelLargeYellowA70001,
                                                    ),
                                                    Container(
                                                      decoration:
                                                          AppDecoration
                                                              .outlineTeal,
                                                      child: Text(
                                                        "lbl_888882".tr,
                                                        textAlign:
                                                            TextAlign.right,
                                                        style:
                                                            CustomTextStyles
                                                                .titleMediumLightgreenA400,
                                                      ),
                                                    ),
                                                    SizedBox(height: 4.h),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 18.h),
                                  _buildSplashscreen(context),
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
    );
  }

  /// Section Widget
  Widget _buildSplashscreen(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      width: double.maxFinite,
      child: BlocSelector<SplashBloc, SplashState, SplashModel?>(
        selector: (state) => state.splashModelObj,
        builder: (context, splashModelObj) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 6.h,
              children: List.generate(
                splashModelObj?.splashScreenItemList.length ?? 0,
                (index) {
                  SplashScreenItemModel model =
                      splashModelObj?.splashScreenItemList[index] ??
                      SplashScreenItemModel();
                  return SplashScreenItemWidget(model);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
