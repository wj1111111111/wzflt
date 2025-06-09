import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/lottery_withdrawal_pending_review_bloc.dart';
import 'models/lottery_withdrawal_pending_review_model.dart';

class LotteryWithdrawalPendingReviewScreen extends StatelessWidget {
  const LotteryWithdrawalPendingReviewScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LotteryWithdrawalPendingReviewBloc>(
      create:
          (context) => LotteryWithdrawalPendingReviewBloc(
            LotteryWithdrawalPendingReviewState(
              lotteryWithdrawalPendingReviewModelObj:
                  LotteryWithdrawalPendingReviewModel(),
            ),
          )..add(LotteryWithdrawalPendingReviewInitialEvent()),
      child: LotteryWithdrawalPendingReviewScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      LotteryWithdrawalPendingReviewBloc,
      LotteryWithdrawalPendingReviewState
    >(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          backgroundColor: theme.colorScheme.onPrimary,
          body: Container(
            width: double.maxFinite,
            height: SizeUtils.height,
            decoration: AppDecoration.fillOnPrimary3,
            child: SafeArea(
              child: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                  child: Container(
                    height: SizeUtils.height,
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 74.h,
                    ),
                    decoration: AppDecoration.fillBlack9004,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.h,
                            vertical: 22.h,
                          ),
                          decoration: AppDecoration
                              .gradientBlueGrayToBluegray80011
                              .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL201,
                              ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 20.h),
                              _buildRowwithdrawal(context),
                              SizedBox(height: 2.h),
                              _buildRowwithdrawal1(context),
                              SizedBox(height: 10.h),
                              _buildStackwaitingfor(context),
                              SizedBox(height: 24.h),
                              CustomElevatedButton(
                                height: 40.h,
                                text: "msg_confirm_withdrawal".tr,
                                buttonStyle: CustomButtonStyles.none,
                                decoration:
                                    CustomButtonStyles
                                        .gradientAmberAToOrangeDecoration,
                              ),
                              SizedBox(height: 10.h),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_tips".tr,
                                          style:
                                              CustomTextStyles
                                                  .bodyMediumOnPrimary_2,
                                        ),
                                        TextSpan(
                                          text: "msg_after_clicking_confirm".tr,
                                          style:
                                              CustomTextStyles
                                                  .bodyMediumBluegray400_1,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: 122.h,
                            width: 300.h,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage360,
                                  height: 78.h,
                                  width: 138.h,
                                  alignment: Alignment.topCenter,
                                ),
                                Container(
                                  height: 78.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage540,
                                        height: 78.h,
                                        width: double.maxFinite,
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 10.h),
                                          child: Text(
                                            "msg_congratulations2".tr,
                                            style:
                                                theme.textTheme.headlineMedium,
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
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRowwithdrawal(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_withdrawal_account".tr,
            style: CustomTextStyles.bodyMediumBluegray400,
          ),
          Text(
            "lbl_9409303930".tr,
            style: CustomTextStyles.bodyMediumBluegray400,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowwithdrawal1(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_withdrawal_method".tr,
            style: CustomTextStyles.bodyMediumBluegray400,
          ),
          Text(
            "lbl_account_wallet".tr,
            style: CustomTextStyles.bodyMediumBluegray400,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackwaitingfor(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.symmetric(horizontal: 2.h),
        color: appTheme.blueGray90033,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.circleBorder14,
        ),
        child: Container(
          height: 194.h,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 8.h),
          decoration: AppDecoration.fillBluegray90033.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder14,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 236.h,
                margin: EdgeInsets.only(top: 8.h, bottom: 14.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "msg_waiting_for_withdrawal".tr,
                      style: CustomTextStyles.titleLarge_1,
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame2131330434,
                          height: 40.h,
                          width: 40.h,
                        ),
                        Text(
                          "lbl_500_00".tr,
                          style: CustomTextStyles.titleLargeYellowA40002,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 126.h,
                  width: 128.h,
                  margin: EdgeInsets.only(top: 18.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage744,
                        height: 126.h,
                        width: 126.h,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 40.h,
                          width: 32.h,
                          margin: EdgeInsets.only(right: 20.h, bottom: 18.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 30.h,
                                  width: 30.h,
                                  margin: EdgeInsets.only(top: 2.h),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.h),
                                    gradient: LinearGradient(
                                      begin: Alignment(0.5, 0),
                                      end: Alignment(0.5, 1),
                                      colors: [
                                        appTheme.yellow50004,
                                        appTheme.amber70006,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "lbl19".tr,
                                style:
                                    CustomTextStyles
                                        .headlineMediumCalistogaOnPrimary,
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
    );
  }
}
