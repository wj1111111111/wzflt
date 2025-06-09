import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/deposit_info_3rd_party_success_bloc.dart';
import 'models/deposit_info_3rd_party_success_model.dart';

class DepositInfo3rdPartySuccessScreen extends StatelessWidget {
  const DepositInfo3rdPartySuccessScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DepositInfo3rdPartySuccessBloc>(
      create:
          (context) => DepositInfo3rdPartySuccessBloc(
            DepositInfo3rdPartySuccessState(
              depositInfo3rdPartySuccessModelObj:
                  DepositInfo3rdPartySuccessModel(),
            ),
          )..add(DepositInfo3rdPartySuccessInitialEvent()),
      child: DepositInfo3rdPartySuccessScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      DepositInfo3rdPartySuccessBloc,
      DepositInfo3rdPartySuccessState
    >(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.only(
                        left: 14.h,
                        top: 12.h,
                        right: 14.h,
                      ),
                      child: Column(
                        spacing: 12,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          _buildColumnclockone(context),
                          _buildColumndepositac(context),
                          _buildColumntipsone(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: _buildRowtransaction(context),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 48.h,
      leadingWidth: 21.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        height: 12.h,
        width: 6.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_deposit_record".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildColumnclockone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 12.h),
            decoration: AppDecoration.outline1.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              spacing: 6,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 22.h),
                CustomImageView(
                  imagePath: ImageConstant.imgClockTeal40003,
                  height: 54.h,
                  width: 56.h,
                ),
                SizedBox(
                  width: 124.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 18.h,
                        width: 18.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse25,
                              height: 18.h,
                              width: double.maxFinite,
                              radius: BorderRadius.circular(9.0.h),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 4.h),
                                child: Text(
                                  "lbl2".tr,
                                  style: CustomTextStyles.bodyMediumOnPrimary13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_500002".tr,
                          style:
                              CustomTextStyles
                                  .headlineLargeNotoSansLightgreenA700,
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
    );
  }

  /// Section Widget
  Widget _buildColumndepositac(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 16.h),
            decoration: AppDecoration.outline1.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              spacing: 12,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowdepositamoun(
                    context,
                    depositamount: "msg_deposit_account".tr,
                    price: "lbl_h709394".tr,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowdepositamoun(
                    context,
                    depositamount: "lbl_deposit_amount3".tr,
                    price: "lbl_5_000".tr,
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
  Widget _buildColumntipsone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_tips".tr, style: theme.textTheme.titleMedium),
          Text(
            "msg_after_the_funds".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyMediumBluegray400.copyWith(
              height: 1.29,
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img10,
                  height: 14.h,
                  width: 14.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "msg_customer_service".tr,
                      style: CustomTextStyles.bodyLargeBlue400.copyWith(
                        decoration: TextDecoration.underline,
                      ),
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
  Widget _buildRowtransaction(BuildContext context) {
    return Container(
      height: 98.h,
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.gradientLightGreenToLightgreen800,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: CustomOutlinedButton(
              height: 50.h,
              text: "msg_transaction_record".tr,
              margin: EdgeInsets.only(top: 20.h),
              buttonStyle: CustomButtonStyles.outlineOnPrimaryTL8,
            ),
          ),
          CustomElevatedButton(
            height: 50.h,
            width: 120.h,
            text: "msg_complete_deposit".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientAmberToAmberTL8Decoration,
            buttonTextStyle: theme.textTheme.titleMedium!,
          ),
          Expanded(
            child: CustomOutlinedButton(
              height: 50.h,
              text: "lbl_another".tr,
              buttonStyle: CustomButtonStyles.outlineOnPrimaryTL8,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowdepositamoun(
    BuildContext context, {
    required String depositamount,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          depositamount,
          style: CustomTextStyles.titleSmallBluegray70001.copyWith(
            color: appTheme.blueGray70001,
          ),
        ),
        Spacer(),
        Text(
          price,
          style: CustomTextStyles.labelLarge13_1.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgThumbsUpBlueGray70001,
          height: 12.h,
          width: 14.h,
          margin: EdgeInsets.only(left: 6.h),
        ),
      ],
    );
  }
}
