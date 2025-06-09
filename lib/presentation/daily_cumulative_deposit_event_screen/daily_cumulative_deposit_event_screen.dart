import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/daily_cumulative_deposit_event_bloc.dart';
import 'models/daily_cumulative_deposit_event_model.dart';
import 'models/staggerediconvi_item_model.dart';
import 'widgets/staggerediconvi_item_widget.dart';

class DailyCumulativeDepositEventScreen extends StatelessWidget {
  const DailyCumulativeDepositEventScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DailyCumulativeDepositEventBloc>(
      create:
          (context) => DailyCumulativeDepositEventBloc(
            DailyCumulativeDepositEventState(
              dailyCumulativeDepositEventModelObj:
                  DailyCumulativeDepositEventModel(),
            ),
          )..add(DailyCumulativeDepositEventInitialEvent()),
      child: DailyCumulativeDepositEventScreen(),
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
              height: 2244.h,
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.15,
                    child: CustomImageView(
                      imagePath: ImageConstant.img015b2e1a09d09e1174x176,
                      height: 174.h,
                      width: 178.h,
                      radius: BorderRadius.circular(10.h),
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 482.h),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 14.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildRowiconvipone(context),
                        SizedBox(height: 10.h),
                        _buildRowbonusfrom(context),
                        SizedBox(height: 14.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_vip_daily_cumulative".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              TextSpan(
                                text: "lbl_benefits".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        _buildStackviewone(context),
                        SizedBox(height: 12.h),
                        Text(
                          "msg_vip_cumulative_deposit".tr,
                          style: CustomTextStyles.titleSmallLightgreenA700,
                        ),
                        SizedBox(height: 8.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_1_in_our_daily_accumulated".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                              TextSpan(
                                text: "msg_0_00_the_next_day2".tr,
                                style:
                                    CustomTextStyles.labelLargeLightgreenA700_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 6.h),
                        _buildStaggerediconvi(context),
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
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 23.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        width: 8.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "msg_daily_cumulative".tr,
        margin: EdgeInsets.only(left: 9.h),
      ),
      actions: [
        AppbarTrailingImage(imagePath: ImageConstant.imgLock),
        AppbarSubtitleThree(
          text: "lbl_1980_00".tr,
          margin: EdgeInsets.only(left: 8.h),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.img1,
          height: 14.h,
          width: 16.h,
          margin: EdgeInsets.only(left: 11.h, right: 20.h),
        ),
      ],
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildRowiconvipone(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fs2bg.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Column(
                  spacing: 4,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 140.h,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Opacity(
                            opacity: 0.9,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgImage244,
                              height: 140.h,
                              width: double.maxFinite,
                            ),
                          ),
                          SizedBox(
                            height: 120.h,
                            width: 110.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgIconVip1,
                                  height: 56.h,
                                  width: 58.h,
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 14.h),
                                ),
                                SizedBox(
                                  width: double.maxFinite,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "lbl_vip1".tr,
                                        style:
                                            CustomTextStyles.titleSmallBlack900,
                                      ),
                                      SizedBox(height: 42.h),
                                      Text(
                                        "lbl_10_002".tr,
                                        style: theme.textTheme.headlineLarge,
                                      ),
                                      Text(
                                        "lbl_max".tr,
                                        style:
                                            CustomTextStyles.titleSmallBlack900,
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
                    _buildRow(
                      context,
                      priceTwo: "msg_cumulative_deposit3".tr,
                      priceThree: "lbl_get2".tr,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(color: appTheme.gray90001),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 10.h),
                      child: _buildRow(
                        context,
                        priceTwo: "lbl_150".tr,
                        priceThree: "lbl_2_002".tr,
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 10.h),
                      child: _buildRow(
                        context,
                        priceTwo: "lbl_250".tr,
                        priceThree: "lbl_4_002".tr,
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 10.h),
                      child: _buildRow(
                        context,
                        priceTwo: "lbl_5003".tr,
                        priceThree: "lbl_6_00".tr,
                      ),
                    ),
                    SizedBox(height: 6.h),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("lbl_current_vip".tr, style: theme.textTheme.bodySmall),
                SizedBox(height: 2.h),
                Text(
                  "lbl_vip12".tr,
                  style: CustomTextStyles.titleSmallAmberA400_2,
                ),
                SizedBox(height: 14.h),
                Text(
                  "msg_total_bets_placed".tr,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Text("lbl_150_50".tr, style: theme.textTheme.titleSmall),
                      CustomImageView(
                        imagePath: ImageConstant.imgVideoCameraBlueGray400,
                        height: 14.h,
                        width: 14.h,
                        margin: EdgeInsets.only(left: 6.h),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.h),
                Text(
                  "msg_estimated_cashback".tr,
                  style: theme.textTheme.bodySmall,
                ),
                Text("lbl_2_90".tr, style: theme.textTheme.titleSmall),
                SizedBox(height: 20.h),
                CustomElevatedButton(
                  text: "lbl_deposit_now".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles
                          .gradientLightGreenAToLightGreenTL16Decoration,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowbonusfrom(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 20.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img40x50,
            height: 40.h,
            width: 50.h,
            margin: EdgeInsets.only(bottom: 2.h),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: Column(
                spacing: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_bonus_from_yesterday".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  Text(
                    "lbl_4933_70".tr,
                    style: CustomTextStyles.titleMediumAmberA400_1,
                  ),
                ],
              ),
            ),
          ),
          CustomElevatedButton(
            width: 90.h,
            text: "lbl_receive".tr,
            margin: EdgeInsets.only(bottom: 2.h),
            buttonStyle: CustomButtonStyles.none,
            decoration:
                CustomButtonStyles
                    .gradientLightGreenAToLightGreenTL16Decoration,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackviewone(BuildContext context) {
    return SizedBox(
      height: 66.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 46.h,
              width: 344.h,
              decoration: BoxDecoration(
                color: appTheme.green90008,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(6.h),
                  bottomLeft: Radius.circular(2.h),
                  bottomRight: Radius.circular(2.h),
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black900.withValues(alpha: 0.25),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 66.h,
            margin: EdgeInsets.only(right: 10.h),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(right: 58.h),
                  padding: EdgeInsets.only(left: 10.h, top: 12.h, bottom: 12.h),
                  decoration: AppDecoration.column377,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 4.h),
                      Container(
                        decoration: AppDecoration.fs,
                        child: Text(
                          "msg_the_higher_the_level".tr,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallAmberA400_2,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 66.h,
                    width: 78.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img003c43379e03cb1,
                          height: 22.h,
                          width: 52.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img0867343e1b2a94d,
                          height: 66.h,
                          width: 68.h,
                          alignment: Alignment.centerRight,
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

  /// Section Widget
  Widget _buildStaggerediconvi(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: BlocSelector<
        DailyCumulativeDepositEventBloc,
        DailyCumulativeDepositEventState,
        DailyCumulativeDepositEventModel?
      >(
        selector: (state) => state.dailyCumulativeDepositEventModelObj,
        builder: (context, dailyCumulativeDepositEventModelObj) {
          return MasonryGridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 15.h,
            mainAxisSpacing: 15.h,
            itemCount:
                dailyCumulativeDepositEventModelObj
                    ?.staggerediconviItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              StaggerediconviItemModel model =
                  dailyCumulativeDepositEventModelObj
                      ?.staggerediconviItemList[index] ??
                  StaggerediconviItemModel();
              return StaggerediconviItemWidget(model);
            },
          );
        },
      ),
    );
  }

  /// Common widget
  Widget _buildRow(
    BuildContext context, {
    required String priceTwo,
    required String priceThree,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          priceTwo,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
        Text(
          priceThree,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
      ],
    );
  }
}
