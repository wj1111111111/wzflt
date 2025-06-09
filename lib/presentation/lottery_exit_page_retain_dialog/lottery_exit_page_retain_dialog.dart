import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/lottery_exit_page_retain_bloc.dart';
import 'models/lottery_exit_page_retain_model.dart'; // ignore_for_file: must_be_immutable

class LotteryExitPageRetainDialog extends StatelessWidget {
  const LotteryExitPageRetainDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LotteryExitPageRetainBloc>(
      create:
          (context) => LotteryExitPageRetainBloc(
            LotteryExitPageRetainState(
              lotteryExitPageRetainModelObj: LotteryExitPageRetainModel(),
            ),
          )..add(LotteryExitPageRetainInitialEvent()),
      child: LotteryExitPageRetainDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          decoration: AppDecoration.gradientBlueGrayToBluegray80011.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL201,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildStackviewone(context),
              SizedBox(height: 18.h),
              Text(
                "msg_invite_friends_to4".tr,
                style: CustomTextStyles.bodyMediumBluegray400,
              ),
              SizedBox(height: 4.h),
              _buildColumnthumbsup(context),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 28.h,
                  width: 100.h,
                  margin: EdgeInsets.only(right: 10.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTelevisionRedA20001,
                        height: 28.h,
                        width: double.maxFinite,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgMaskGroup22x22,
                                      height: 22.h,
                                      width: 22.h,
                                      alignment: Alignment.center,
                                    ),
                                    Text(
                                      "lbl_get_bonus".tr,
                                      style:
                                          CustomTextStyles
                                              .labelLargeOnPrimary_6,
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
              CustomElevatedButton(
                height: 40.h,
                text: "msg_share_with_friends".tr,
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles
                        .gradientLightGreenAToLightGreenTL22Decoration,
              ),
              SizedBox(height: 12.h),
              Text(
                "msg_give_up_the_withdrawal".tr,
                style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 14.h),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStackviewone(BuildContext context) {
    return SizedBox(
      height: 228.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
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
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 120.h,
              width: 134.h,
              margin: EdgeInsets.only(top: 22.h),
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
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 62.h),
            child: Text(
              "msg_get_500_for_free".tr,
              style: CustomTextStyles.headlineMediumArialOnPrimaryBlack,
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("lbl_lucky_you".tr, style: theme.textTheme.displaySmall),
                Text(
                  "lbl_151361146".tr,
                  style: CustomTextStyles.titleMediumLightgreenA700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnthumbsup(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      decoration: AppDecoration.fillBluegray90033.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUp42x44,
                height: 32.h,
                width: 34.h,
              ),
              Text(
                "lbl_92_36".tr,
                style: CustomTextStyles.displayMediumArialYellowA40002Black_1,
              ),
            ],
          ),
          Container(
            decoration: AppDecoration.fillBlueGrayF.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            width: double.maxFinite,
            child: Row(
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Container(
                    height: 14.h,
                    width: 182.h,
                    decoration: AppDecoration.gradientOrangeToYellowA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSubtractOnprimary6x182,
                          height: 6.h,
                          width: double.maxFinite,
                          alignment: Alignment.topCenter,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEditOnprimary,
                                      height: 14.h,
                                      width: 12.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEditOnprimary,
                                      height: 14.h,
                                      width: 12.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEditOnprimary,
                                      height: 14.h,
                                      width: 12.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEditOnprimary,
                                      height: 14.h,
                                      width: 12.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEditOnprimary,
                                      height: 14.h,
                                      width: 12.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEditOnprimary,
                                      height: 14.h,
                                      width: 12.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEditOnprimary,
                                      height: 14.h,
                                      width: 12.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEditOnprimary,
                                      height: 14.h,
                                      width: 12.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEditOnprimary,
                                      height: 14.h,
                                      width: 12.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEditOnprimary,
                                      height: 14.h,
                                      width: 12.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEditOnprimary,
                                      height: 14.h,
                                      width: 12.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEditOnprimary,
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
                    style: CustomTextStyles.labelLargeInterOnPrimarySemiBold,
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
                  style: CustomTextStyles.bodyMediumBluegray400_1,
                ),
                TextSpan(
                  text: "lbl_7_64".tr,
                  style: CustomTextStyles.titleSmallYellowA40002,
                ),
                TextSpan(text: " "),
                TextSpan(
                  text: "msg_to_withdraw_to_wallet".tr,
                  style: CustomTextStyles.bodyMediumBluegray400_1,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
