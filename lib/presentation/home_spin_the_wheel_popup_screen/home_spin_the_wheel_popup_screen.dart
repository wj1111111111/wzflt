import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/home_spin_the_wheel_popup_bloc.dart';
import 'models/home_spin_the_wheel_popup_model.dart';

class HomeSpinTheWheelPopupScreen extends StatelessWidget {
  const HomeSpinTheWheelPopupScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeSpinTheWheelPopupBloc>(
      create:
          (context) => HomeSpinTheWheelPopupBloc(
            HomeSpinTheWheelPopupState(
              homeSpinTheWheelPopupModelObj: HomeSpinTheWheelPopupModel(),
            ),
          )..add(HomeSpinTheWheelPopupInitialEvent()),
      child: HomeSpinTheWheelPopupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeSpinTheWheelPopupBloc, HomeSpinTheWheelPopupState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          backgroundColor: appTheme.black900.withValues(alpha: 0.8),
          body: Container(
            width: double.maxFinite,
            height: SizeUtils.height,
            decoration: AppDecoration.fillBlack90010,
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.all(10.h),
                child: Column(
                  spacing: 6,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 522.h,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(left: 4.h, right: 2.h),
                            decoration: AppDecoration
                                .gradientBlueGrayToBluegray80011
                                .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL201,
                                ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _buildStackviewone(context),
                                SizedBox(height: 2.h),
                                Container(
                                  height: 74.h,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 74.h,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          "msg_quick_cash_withdrawl".tr,
                                          style:
                                              CustomTextStyles
                                                  .bodyMediumOnPrimary,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgThumbsUp42x44,
                                                height: 38.h,
                                                width: 40.h,
                                              ),
                                              Text(
                                                "lbl_92_59".tr,
                                                style:
                                                    CustomTextStyles
                                                        .displayMediumArialYellowA40002Black,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 2.h),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 24.h,
                                  ),
                                  decoration: AppDecoration.fillBlueGrayF
                                      .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder10,
                                      ),
                                  width: double.maxFinite,
                                  child: Row(
                                    children: [
                                      Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                        child: Container(
                                          height: 14.h,
                                          width: 182.h,
                                          decoration: AppDecoration
                                              .gradientOrangeToYellowA
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
                                                        .imgSubtractOnprimary6x182,
                                                height: 6.h,
                                                width: double.maxFinite,
                                                alignment: Alignment.topCenter,
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                            horizontal: 6.h,
                                                          ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEditOnprimary,
                                                            height: 14.h,
                                                            width: 12.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEditOnprimary,
                                                            height: 14.h,
                                                            width: 12.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEditOnprimary,
                                                            height: 14.h,
                                                            width: 12.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEditOnprimary,
                                                            height: 14.h,
                                                            width: 12.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEditOnprimary,
                                                            height: 14.h,
                                                            width: 12.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEditOnprimary,
                                                            height: 14.h,
                                                            width: 12.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEditOnprimary,
                                                            height: 14.h,
                                                            width: 12.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEditOnprimary,
                                                            height: 14.h,
                                                            width: 12.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEditOnprimary,
                                                            height: 14.h,
                                                            width: 12.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEditOnprimary,
                                                            height: 14.h,
                                                            width: 12.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEditOnprimary,
                                                            height: 14.h,
                                                            width: 12.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEditOnprimary,
                                                            height: 14.h,
                                                            width: 12.h,
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
                                      Padding(
                                        padding: EdgeInsets.only(left: 6.h),
                                        child: Text(
                                          "lbl_70".tr,
                                          style:
                                              CustomTextStyles
                                                  .labelLargeInterOnPrimarySemiBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_you_still_need".tr,
                                        style:
                                            CustomTextStyles
                                                .bodyMediumBluegray400_1,
                                      ),
                                      TextSpan(
                                        text: "lbl_7_64".tr,
                                        style:
                                            CustomTextStyles
                                                .titleSmallYellowA40002,
                                      ),
                                      TextSpan(text: " "),
                                      TextSpan(
                                        text: "msg_to_withdraw_to_wallet".tr,
                                        style:
                                            CustomTextStyles
                                                .bodyMediumBluegray400_1,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 24.h),
                                CustomElevatedButton(
                                  height: 40.h,
                                  text: "lbl_earn_more_cash".tr,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 10.h,
                                  ),
                                  buttonStyle: CustomButtonStyles.none,
                                  decoration:
                                      CustomButtonStyles
                                          .gradientLightGreenAToLightGreenTL22Decoration,
                                ),
                                SizedBox(height: 168.h),
                              ],
                            ),
                          ),
                          _buildLunbo(context),
                        ],
                      ),
                    ),
                    CustomIconButton(
                      height: 32.h,
                      width: 32.h,
                      padding: EdgeInsets.all(8.h),
                      decoration: IconButtonStyleHelper.fillGrayTL16,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCloseOnprimary20x20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStackviewone(BuildContext context) {
    return SizedBox(
      height: 164.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.circleBorder14,
              ),
              child: Container(
                height: 140.h,
                decoration: AppDecoration.gradientGreenToGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder14,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                      opacity: 0.8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgF1140x344,
                        height: 140.h,
                        width: double.maxFinite,
                        radius: BorderRadius.circular(12.h),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 78.h,
                        width: 344.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 1),
                            end: Alignment(0.5, 0),
                            colors: [
                              appTheme.blueGray80011,
                              appTheme.blueGray80011.withValues(alpha: 0),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 120.h,
            width: 134.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTdr23,
                  height: 78.h,
                  width: 86.h,
                  margin: EdgeInsets.only(bottom: 8.h),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 120.h,
                    margin: EdgeInsets.only(left: 10.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1100,
                          height: 120.h,
                          width: 120.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1104,
                          height: 38.h,
                          width: 42.h,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(right: 8.h, bottom: 18.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "msg_get_500_for_free".tr,
              style: CustomTextStyles.headlineMediumArialOnPrimaryBlack,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLunbo(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 30.h),
        decoration: AppDecoration.column361,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(top: 8.h, bottom: 6.h),
              decoration: AppDecoration.outlineOnPrimary18,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_ai_6".tr,
                    style: CustomTextStyles.labelLargeOnPrimary_5,
                  ),
                  Spacer(flex: 55),
                  Text(
                    "msg_just_received_it".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  Spacer(flex: 44),
                  Text(
                    "lbl_1003".tr,
                    style: CustomTextStyles.labelLargeAmber30004,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16.h, 8.h, 16.h, 6.h),
              decoration: AppDecoration.outlineOnPrimary18,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_md_6".tr,
                    style: CustomTextStyles.labelLargeOnPrimary_5,
                  ),
                  Text(
                    "msg_just_received_it".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  Text(
                    "lbl_1003".tr,
                    style: CustomTextStyles.labelLargeAmber30004,
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.h),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 16.h, right: 18.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_su_0".tr,
                    style: CustomTextStyles.labelLargeOnPrimary_5,
                  ),
                  Text(
                    "msg_just_received_it".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  Text(
                    "lbl_1003".tr,
                    style: CustomTextStyles.labelLargeAmber30004,
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.h),
          ],
        ),
      ),
    );
  }
}
