import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/top_up_records_withdrawal_rejected_bloc.dart';
import 'models/top_up_records_withdrawal_rejected_model.dart';

class TopUpRecordsWithdrawalRejectedScreen extends StatelessWidget {
  const TopUpRecordsWithdrawalRejectedScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TopUpRecordsWithdrawalRejectedBloc>(
      create:
          (context) => TopUpRecordsWithdrawalRejectedBloc(
            TopUpRecordsWithdrawalRejectedState(
              topUpRecordsWithdrawalRejectedModelObj:
                  TopUpRecordsWithdrawalRejectedModel(),
            ),
          )..add(TopUpRecordsWithdrawalRejectedInitialEvent()),
      child: TopUpRecordsWithdrawalRejectedScreen(),
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
                spacing: 10,
                children: [
                  _buildColumnintersect(context),
                  _buildColumnsubmissio(context),
                  BlocSelector<
                    TopUpRecordsWithdrawalRejectedBloc,
                    TopUpRecordsWithdrawalRejectedState,
                    TextEditingController?
                  >(
                    selector: (state) => state.descriptionController,
                    builder: (context, descriptionController) {
                      return CustomTextFormField(
                        controller: descriptionController,
                        hintText: "msg_dear_we_are_unable".tr,
                        textInputAction: TextInputAction.done,
                        maxLines: 8,
                        contentPadding: EdgeInsets.fromLTRB(
                          8.h,
                          8.h,
                          8.h,
                          12.h,
                        ),
                        borderDecoration: TextFormFieldStyleHelper.fillGray,
                        fillColor: appTheme.gray90001,
                      );
                    },
                  ),
                  SizedBox(height: 60.h),
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
  Widget _buildColumnintersect(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 36.h),
            decoration: AppDecoration.outline1.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              spacing: 6,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIntersect54x54,
                  height: 54.h,
                  width: 56.h,
                  radius: BorderRadius.circular(26.h),
                ),
                SizedBox(
                  width: 148.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 18.h,
                        width: 18.h,
                        margin: EdgeInsets.only(top: 16.h),
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
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "lbl_150_00".tr,
                                    style:
                                        CustomTextStyles
                                            .headlineLargeNotoSansLightgreenA700,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgThumbsUpBlueGray70001,
                                    height: 16.h,
                                    width: 16.h,
                                  ),
                                ],
                              ),
                              Container(
                                width: double.maxFinite,
                                margin: EdgeInsets.symmetric(horizontal: 26.h),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 6.h,
                                      width: 6.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.greenA70005,
                                        borderRadius: BorderRadius.circular(
                                          3.h,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: Text(
                                        "lbl_credited".tr,
                                        style: theme.textTheme.labelLarge,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnsubmissio(BuildContext context) {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowdepositmetho(
                    context,
                    depositmethod: "msg_submission_time".tr,
                    gcashOne: "msg_2023_04_23_11_16_32".tr,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowdepositmetho(
                    context,
                    depositmethod: "lbl_deposit_method".tr,
                    gcashOne: "lbl_gcash".tr,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowdepositmetho(
                    context,
                    depositmethod: "msg_payment_channel".tr,
                    gcashOne: "lbl_gcash_xxxx".tr,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowdepositmetho(
                    context,
                    depositmethod: "lbl_submit_amount".tr,
                    gcashOne: "lbl_150_002".tr,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowdepositmetho(
                    context,
                    depositmethod: "lbl_order_code".tr,
                    gcashOne: "lbl_000000000".tr,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowdepositmetho(
                    context,
                    depositmethod: "lbl_recorded_time".tr,
                    gcashOne: "msg_2023_04_23_11_16_32".tr,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowdepositmetho(
                    context,
                    depositmethod: "lbl_handling_fee".tr,
                    gcashOne: "lbl_1_002".tr,
                  ),
                ),
                Text(
                  "lbl_participate".tr,
                  style: CustomTextStyles.titleSmallBluegray70001,
                ),
                Text(
                  "lbl_remark".tr,
                  style: CustomTextStyles.titleSmallBluegray70001,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildRowdepositmetho(
    BuildContext context, {
    required String depositmethod,
    required String gcashOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          depositmethod,
          style: CustomTextStyles.titleSmallBluegray70001.copyWith(
            color: appTheme.blueGray70001,
          ),
        ),
        Text(
          gcashOne,
          style: CustomTextStyles.labelLarge13_1.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
      ],
    );
  }
}
