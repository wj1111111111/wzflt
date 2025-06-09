import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/top_up_records_category_filter_bloc.dart';
import 'models/top_up_records_category_filter_model.dart';

class TopUpRecordsCategoryFilterScreen extends StatelessWidget {
  const TopUpRecordsCategoryFilterScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TopUpRecordsCategoryFilterBloc>(
      create:
          (context) => TopUpRecordsCategoryFilterBloc(
            TopUpRecordsCategoryFilterState(
              topUpRecordsCategoryFilterModelObj:
                  TopUpRecordsCategoryFilterModel(),
            ),
          )..add(TopUpRecordsCategoryFilterInitialEvent()),
      child: TopUpRecordsCategoryFilterScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      TopUpRecordsCategoryFilterBloc,
      TopUpRecordsCategoryFilterState
    >(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildColumnarrowleft(context),
                  SizedBox(
                    height: 686.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        _buildColumngcash(context),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                            left: 18.h,
                            top: 6.h,
                            right: 18.h,
                          ),
                          decoration: AppDecoration.fillBlack9007,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              _buildColumnall(context),
                              SizedBox(height: 556.h),
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
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnarrowleft(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: AppDecoration.fs10bg,
      child: Column(
        spacing: 30,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            height: 22.h,
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
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 42.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("lbl_order".tr, style: theme.textTheme.titleSmall),
                CustomImageView(
                  imagePath: ImageConstant.imgUserOnprimary10x16,
                  height: 10.h,
                  width: 18.h,
                  radius: BorderRadius.circular(2.h),
                  margin: EdgeInsets.only(left: 2.h),
                ),
                Spacer(flex: 50),
                Text(
                  "lbl_way".tr,
                  style: CustomTextStyles.titleSmallBluegray400_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFavoriteBlueGray70001,
                  height: 10.h,
                  width: 18.h,
                  radius: BorderRadius.circular(2.h),
                  margin: EdgeInsets.only(left: 4.h),
                ),
                Spacer(flex: 49),
                Text(
                  "lbl_today".tr,
                  style: CustomTextStyles.titleSmallBluegray400_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFavoriteBlueGray70001,
                  height: 10.h,
                  width: 18.h,
                  radius: BorderRadius.circular(2.h),
                  margin: EdgeInsets.only(left: 4.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumngcash(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 14.h, top: 18.h, right: 14.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: _buildRowgcashOne(
                context,
                gcashOne: "lbl_gcash".tr,
                priceOne: "lbl_200_002".tr,
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_2023_05_12_12_33_56".tr,
                    style: CustomTextStyles.labelLargeBluegray200,
                  ),
                  Spacer(),
                  Container(
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                      color: appTheme.greenA70005,
                      borderRadius: BorderRadius.circular(3.h),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_credited".tr,
                      style: CustomTextStyles.labelLargeBluegray200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              width: double.maxFinite,
              child: Divider(color: appTheme.gray90009.withValues(alpha: 0.2)),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              width: double.maxFinite,
              child: _buildRowgcashOne(
                context,
                gcashOne: "lbl_gcash".tr,
                priceOne: "lbl_100_002".tr,
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_2023_05_12_12_33_56".tr,
                    style: CustomTextStyles.labelLargeBluegray200,
                  ),
                  Spacer(),
                  Container(
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                      color: appTheme.purpleA40001,
                      borderRadius: BorderRadius.circular(3.h),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_cancelled".tr,
                      style: CustomTextStyles.labelLargeBluegray200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              width: double.maxFinite,
              child: Divider(color: appTheme.gray90009.withValues(alpha: 0.2)),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_gcash".tr,
                          style: CustomTextStyles.titleSmallBluegray200_1,
                        ),
                        Text(
                          "msg_2023_05_12_12_33_56".tr,
                          style: CustomTextStyles.labelLargeBluegray200,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 152.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "lbl_300_002".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 6.h,
                                width: 6.h,
                                margin: EdgeInsets.only(top: 4.h),
                                decoration: BoxDecoration(
                                  color: appTheme.yellow90001,
                                  borderRadius: BorderRadius.circular(3.h),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text(
                                    "lbl_in_progress".tr,
                                    style:
                                        CustomTextStyles.labelLargeBluegray200,
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
            SizedBox(height: 34.h),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_gcash".tr,
                          style: CustomTextStyles.titleSmallBluegray200_1,
                        ),
                        Text(
                          "msg_2023_05_12_12_33_56".tr,
                          style: CustomTextStyles.labelLargeBluegray200,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text("lbl_260_00".tr, style: theme.textTheme.titleMedium),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 6.h,
                            width: 6.h,
                            margin: EdgeInsets.only(top: 4.h),
                            decoration: BoxDecoration(
                              color: appTheme.redA70004,
                              borderRadius: BorderRadius.circular(3.h),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_rejected".tr,
                              style: CustomTextStyles.labelLargeBluegray200,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              width: double.maxFinite,
              child: Divider(color: appTheme.gray90009.withValues(alpha: 0.2)),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAll(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 40.h,
        text: "lbl_all".tr,
        buttonStyle: CustomButtonStyles.fillLightGreenATL4,
      ),
    );
  }

  /// Section Widget
  Widget _buildSuccess(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 40.h,
        text: "lbl_success".tr,
        buttonStyle: CustomButtonStyles.fillGrayTL8,
        buttonTextStyle: CustomTextStyles.titleSmallBluegray200_1,
      ),
    );
  }

  /// Section Widget
  Widget _buildClosed(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 40.h,
        text: "lbl_closed".tr,
        buttonStyle: CustomButtonStyles.fillGrayTL8,
        buttonTextStyle: CustomTextStyles.titleSmallBluegray200_1,
      ),
    );
  }

  /// Section Widget
  Widget _buildFail(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 40.h,
        text: "lbl_fail".tr,
        buttonStyle: CustomButtonStyles.fillGrayTL8,
        buttonTextStyle: CustomTextStyles.titleSmallBluegray200_1,
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnall(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
      decoration: AppDecoration.fs2bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAll(context),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 10.h,
                  ),
                  decoration: AppDecoration.fs4bg.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "lbl_reviewed".tr,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleSmallBluegray200_1,
                  ),
                ),
                _buildSuccess(context),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 8.h),
                  decoration: AppDecoration.fs4bg.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Text(
                    "lbl_processing".tr,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleSmallBluegray200_1,
                  ),
                ),
                _buildClosed(context),
                _buildFail(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowgcashOne(
    BuildContext context, {
    required String gcashOne,
    required String priceOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          gcashOne,
          style: CustomTextStyles.titleSmallBluegray200_1.copyWith(
            color: appTheme.blueGray200,
          ),
        ),
        Text(
          priceOne,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }
}
