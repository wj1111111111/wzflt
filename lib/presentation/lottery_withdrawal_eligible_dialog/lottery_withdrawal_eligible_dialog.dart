import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/lottery_withdrawal_eligible_bloc.dart';
import 'models/lottery_withdrawal_eligible_model.dart'; // ignore_for_file: must_be_immutable

class LotteryWithdrawalEligibleDialog extends StatelessWidget {
  const LotteryWithdrawalEligibleDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LotteryWithdrawalEligibleBloc>(
      create:
          (context) => LotteryWithdrawalEligibleBloc(
            LotteryWithdrawalEligibleState(
              lotteryWithdrawalEligibleModelObj:
                  LotteryWithdrawalEligibleModel(),
            ),
          )..add(LotteryWithdrawalEligibleInitialEvent()),
      child: LotteryWithdrawalEligibleDialog(),
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
              SizedBox(height: 2.h),
              _buildStackquickcash(context),
              SizedBox(height: 40.h),
              CustomElevatedButton(
                height: 40.h,
                text: "msg_withdraw_money_to".tr,
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                buttonStyle: CustomButtonStyles.none,
                decoration: CustomButtonStyles.gradientAmberAToOrangeDecoration,
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ],
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
  Widget _buildStackquickcash(BuildContext context) {
    return Container(
      height: 246.h,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "msg_quick_cash_withdrawl".tr,
              style: CustomTextStyles.bodyMediumOnPrimary,
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              spacing: 6,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 6.h, right: 4.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        spacing: 2,
                        children: [
                          Text(
                            "msg_withdrawal_account".tr,
                            style: CustomTextStyles.bodyMediumBluegray400,
                          ),
                          Text(
                            "msg_withdrawal_method".tr,
                            style: CustomTextStyles.bodyMediumBluegray400,
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          spacing: 4,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "lbl_9409303930".tr,
                              style: CustomTextStyles.bodyMediumBluegray400,
                            ),
                            Text(
                              "lbl_account_wallet".tr,
                              style: CustomTextStyles.bodyMediumBluegray400,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.zero,
                    color: appTheme.blueGray90033,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder14,
                    ),
                    child: Container(
                      height: 124.h,
                      width: double.maxFinite,
                      decoration: AppDecoration.fillBluegray90033.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder14,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img3124x316,
                            height: 124.h,
                            width: double.maxFinite,
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: Column(
                              spacing: 12,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomIconButton(
                                  height: 66.h,
                                  width: 66.h,
                                  padding: EdgeInsets.all(16.h),
                                  decoration:
                                      IconButtonStyleHelper.fillLightGreenATL32,
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant
                                            .imgCheckmarkOnprimary66x66,
                                  ),
                                ),
                                Text(
                                  "msg_withdrawal_request".tr,
                                  style: CustomTextStyles.bodyMediumBluegray400,
                                ),
                              ],
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
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 8.h),
                    padding: EdgeInsets.symmetric(horizontal: 46.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgThumbsUp42x44,
                          height: 38.h,
                          width: 40.h,
                        ),
                        Text(
                          "lbl_500_00".tr,
                          style:
                              CustomTextStyles
                                  .displayMediumArialYellowA40002Black,
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
}
