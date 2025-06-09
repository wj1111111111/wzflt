import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_rating_bar.dart';
import 'bloc/coupon_system_condition_display_bloc.dart';
import 'models/coupon_system_condition_display_model.dart';
import 'models/listhot_one_item_model.dart';
import 'widgets/listhot_one_item_widget.dart';

class CouponSystemConditionDisplayScreen extends StatelessWidget {
  const CouponSystemConditionDisplayScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CouponSystemConditionDisplayBloc>(
      create:
          (context) => CouponSystemConditionDisplayBloc(
            CouponSystemConditionDisplayState(
              couponSystemConditionDisplayModelObj:
                  CouponSystemConditionDisplayModel(),
            ),
          )..add(CouponSystemConditionDisplayInitialEvent()),
      child: CouponSystemConditionDisplayScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                spacing: 10,
                children: [
                  SizedBox(
                    height: 888.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        _buildStack877aca258c(context),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: SizeUtils.height,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    width: double.maxFinite,
                                    margin: EdgeInsets.only(
                                      right: 12.h,
                                      bottom: 46.h,
                                    ),
                                    child: Column(
                                      spacing: 16,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        _buildRow3b4bde395738(context),
                                        _buildListhotone(context),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: SizeUtils.height,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      _buildColumnlogowj93o(context),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: SizedBox(
                                          width: double.maxFinite,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [_buildRowromax(context)],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 90.h,
                                          margin: EdgeInsets.only(
                                            right: 16.h,
                                            bottom: 26.h,
                                          ),
                                          decoration:
                                              AppDecoration.outlineBlack900,
                                          child: Text(
                                            "lbl_lucky_coming".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style:
                                                CustomTextStyles
                                                    .labelLargeNotoSans,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          height: 50.h,
                                          width: 52.h,
                                          margin: EdgeInsets.only(
                                            right: 16.h,
                                            bottom: 2.h,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgUserLightGreenA700,
                                                height: 50.h,
                                                width: 50.h,
                                              ),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "lbl_993".tr,
                                                  style:
                                                      CustomTextStyles
                                                          .bodySmallInterOnPrimary,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 56.h,
                                          width: 58.h,
                                          margin: EdgeInsets.only(bottom: 22.h),
                                          decoration: AppDecoration
                                              .fillBluegray90021
                                              .copyWith(
                                                borderRadius:
                                                    BorderRadiusStyle
                                                        .roundedBorder30,
                                              ),
                                          child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup13043,
                                                height: 48.h,
                                                width: double.maxFinite,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      ClipRect(
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 8,
                                            sigmaY: 8,
                                          ),
                                          child: Container(
                                            width: double.maxFinite,
                                            padding: EdgeInsets.symmetric(
                                              vertical: 8.h,
                                            ),
                                            decoration: AppDecoration.outline6,
                                            child: Column(
                                              spacing: 4,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                _buildStackonethree(context),
                                                _buildColumnpriceone(context),
                                                _buildColumnprice(context),
                                                _buildColumnsuccessfu1(context),
                                                SizedBox(height: 50.h),
                                              ],
                                            ),
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
                        Container(
                          height: 88.h,
                          width: 90.h,
                          margin: EdgeInsets.only(right: 16.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgJdbSlot092,
                                height: 88.h,
                                width: 88.h,
                                radius: BorderRadius.circular(4.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgFrame1003,
                                height: 18.h,
                                width: 36.h,
                                alignment: Alignment.topLeft,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 88.h,
                          width: 90.h,
                          margin: EdgeInsets.only(right: 112.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img461000,
                                height: 88.h,
                                width: 88.h,
                                radius: BorderRadius.circular(4.h),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: double.maxFinite,
                                  child: Column(
                                    spacing: 16,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgFrame1003,
                                        height: 18.h,
                                        width: 36.h,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 14.h,
                                          width: 14.h,
                                          margin: EdgeInsets.only(right: 12.h),
                                          decoration: BoxDecoration(
                                            color: appTheme.red500,
                                            borderRadius: BorderRadius.circular(
                                              6.h,
                                            ),
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
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 88.h,
                            width: 90.h,
                            margin: EdgeInsets.only(left: 76.h),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img471000,
                                  height: 88.h,
                                  width: 88.h,
                                  radius: BorderRadius.circular(4.h),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgFrame1003,
                                  height: 18.h,
                                  width: 36.h,
                                  alignment: Alignment.topLeft,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 62.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.h,
                              vertical: 4.h,
                            ),
                            decoration: AppDecoration.fs15.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL81,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img336x36,
                                  height: 32.h,
                                  width: 34.h,
                                ),
                                Text(
                                  "lbl_egame".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                                SizedBox(height: 4.h),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 4.h,
                            ),
                            decoration: AppDecoration.fs15.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL81,
                            ),
                            child: Column(
                              spacing: 4,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img636x36,
                                  height: 32.h,
                                  width: 32.h,
                                ),
                                Text(
                                  "lbl_sport".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildRowspacertwo(context),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildColumnmembers(context),
    );
  }

  /// Section Widget
  Widget _buildDownload(BuildContext context) {
    return CustomElevatedButton(
      height: 32.h,
      width: 96.h,
      text: "lbl_download".tr,
      margin: EdgeInsets.only(top: 18.h),
      buttonTextStyle: CustomTextStyles.titleSmallNotoSansLightgreen800,
      alignment: Alignment.bottomCenter,
    );
  }

  /// Section Widget
  Widget _buildStack877aca258c(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 68.h,
        decoration: AppDecoration.gradientLightGreenAToLightgreen8001,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.4,
              child: CustomImageView(
                imagePath: ImageConstant.img877aca258c7f461,
                height: 68.h,
                width: double.maxFinite,
              ),
            ),
            Container(
              height: 68.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  SizedBox(
                    height: 68.h,
                    width: 280.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: 0.4,
                          child: CustomImageView(
                            imagePath: ImageConstant.img877aca258c7f46168x278,
                            height: 68.h,
                            width: double.maxFinite,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.maxFinite,
                              margin: EdgeInsets.symmetric(horizontal: 12.h),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.img112,
                                    height: 50.h,
                                    width: 50.h,
                                    radius: BorderRadius.circular(8.h),
                                  ),
                                  Expanded(
                                    child: Column(
                                      spacing: 2,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 128.h,
                                          child: Text(
                                            "msg_many_benefits_for".tr
                                                .toUpperCase(),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .labelLargeOnPrimary_6
                                                .copyWith(height: 1.17),
                                          ),
                                        ),
                                        CustomRatingBar(initialRating: 5),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: double.maxFinite,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildDownload(context),
                                  Container(
                                    height: 26.h,
                                    width: 26.h,
                                    margin: EdgeInsets.only(left: 4.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: 14.h,
                                            width: 14.h,
                                            margin: EdgeInsets.only(
                                              top: 4.h,
                                              right: 2.h,
                                            ),
                                            decoration: BoxDecoration(
                                              color: appTheme.lightGreen800,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant
                                                  .imgCloseLightGreen400,
                                          height: 26.h,
                                          width: 26.h,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRow3b4bde395738(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14.h),
      padding: EdgeInsets.all(6.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder14,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img3b4bde395738f0c18x24,
            height: 18.h,
            width: 26.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl6".tr,
                    style: CustomTextStyles.bodyMediumLightgreenA700_1,
                  ),
                  TextSpan(
                    text: "msg_the_recharge_of".tr,
                    style: CustomTextStyles.titleSmallLightgreenA700_1,
                  ),
                  TextSpan(
                    text: "lbl_e".tr,
                    style: CustomTextStyles.bodyMediumLightgreenA700_1,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 16.h,
            width: 18.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "lbl_the_recharge".tr,
                style: CustomTextStyles.titleSmallLightgreenA700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListhotone(BuildContext context) {
    return BlocSelector<
      CouponSystemConditionDisplayBloc,
      CouponSystemConditionDisplayState,
      CouponSystemConditionDisplayModel?
    >(
      selector: (state) => state.couponSystemConditionDisplayModelObj,
      builder: (context, couponSystemConditionDisplayModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 4.h);
          },
          itemCount:
              couponSystemConditionDisplayModelObj?.listhotOneItemList.length ??
              0,
          itemBuilder: (context, index) {
            ListhotOneItemModel model =
                couponSystemConditionDisplayModelObj
                    ?.listhotOneItemList[index] ??
                ListhotOneItemModel();
            return ListhotOneItemWidget(model);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDeposittwo(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_deposit".tr,
        leftIcon: Container(
          margin: EdgeInsets.only(right: 6.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgShare,
            height: 10.h,
            width: 16.h,
            fit: BoxFit.contain,
          ),
        ),
        buttonStyle: CustomButtonStyles.none,
        decoration:
            CustomButtonStyles.gradientLightGreenAToLightGreenTL2Decoration,
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnlogowj93o(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 14.h, top: 76.h, right: 14.h),
        child: Column(
          spacing: 6,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 28.h,
                      width: 80.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLogoWj93128x78,
                            height: 28.h,
                            width: double.maxFinite,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgLogoWj93128x78,
                            height: 28.h,
                            width: double.maxFinite,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgLock,
                    height: 16.h,
                    width: 16.h,
                    margin: EdgeInsets.only(bottom: 4.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_1980_00".tr,
                      style: CustomTextStyles.titleMediumAmberA400_1,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img1,
                    height: 14.h,
                    width: 18.h,
                    margin: EdgeInsets.only(left: 20.h, bottom: 4.h),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 36.h,
                      vertical: 8.h,
                    ),
                    decoration: AppDecoration.fs9.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevisionOnprimary,
                          height: 10.h,
                          width: 16.h,
                        ),
                        Text(
                          "lbl_withdrawal".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                  _buildDeposittwo(context),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgMaskGroup130x344,
              height: 130.h,
              width: double.maxFinite,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowromax(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 26.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50.h,
                decoration: AppDecoration.outlineBlack900,
                child: Text(
                  "lbl_roma_x".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeNotoSans,
                ),
              ),
              Container(
                width: 88.h,
                decoration: AppDecoration.outlineBlack900,
                child: Text(
                  "lbl_diamond_party".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeNotoSans,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBind(BuildContext context) {
    return CustomElevatedButton(
      width: 76.h,
      text: "lbl_bind".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientAmberAToOrangeTL6Decoration,
    );
  }

  /// Section Widget
  Widget _buildVerify(BuildContext context) {
    return CustomElevatedButton(
      width: 76.h,
      text: "lbl_verify".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientAmberAToOrangeTL6Decoration,
    );
  }

  /// Section Widget
  Widget _buildShare(BuildContext context) {
    return CustomElevatedButton(
      width: 76.h,
      text: "lbl_share".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientAmberAToOrangeTL6Decoration,
    );
  }

  /// Section Widget
  Widget _buildStackonethree(BuildContext context) {
    return SizedBox(
      height: 402.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img1402x374,
            height: 402.h,
            width: double.maxFinite,
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 118.h,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 14.h, right: 6.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 6.h),
                        child: CustomIconButton(
                          height: 32.h,
                          width: 32.h,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.none,
                          alignment: Alignment.topRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCloseGray400,
                          ),
                        ),
                      ),
                      Container(
                        height: 118.h,
                        margin: EdgeInsets.only(right: 8.h),
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
                              height: 70.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage2370x306,
                                    height: 70.h,
                                    width: double.maxFinite,
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 38.h,
                                      width: 164.h,
                                      margin: EdgeInsets.only(top: 4.h),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Text(
                                            "lbl_ticket_event2".tr,
                                            style:
                                                CustomTextStyles
                                                    .headlineMediumGray90041,
                                          ),
                                          Text(
                                            "lbl_ticket_event2".tr,
                                            style:
                                                theme.textTheme.headlineMedium,
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
                    ],
                  ),
                ),
                Text(
                  "msg_complete_the_task".tr,
                  style: CustomTextStyles.titleSmallYellow20008Black,
                ),
                Container(
                  margin: EdgeInsets.only(left: 28.h, right: 26.h),
                  decoration: AppDecoration.fillBluegray20099.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 12.h,
                        width: 34.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.h),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              appTheme.yellowA20005,
                              appTheme.orange70007,
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.h),
                        child: Text(
                          "lbl_10_003".tr,
                          style: CustomTextStyles.labelLargeOnPrimary_6,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Container(
                  decoration: AppDecoration.outline21.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  width: double.maxFinite,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.h,
                          vertical: 12.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "msg_link_a_withdrawal".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary,
                            ),
                            _buildBind(context),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                Container(
                  decoration: AppDecoration.outline21.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  width: double.maxFinite,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.h,
                          vertical: 12.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 6.h),
                                child: Text(
                                  "msg_verify_mobile_number".tr,
                                  style: CustomTextStyles.bodyMediumOnPrimary,
                                ),
                              ),
                            ),
                            _buildVerify(context),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                SizedBox(
                  width: double.maxFinite,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                      child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(horizontal: 14.h),
                        decoration: AppDecoration.outline21.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 10.h),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 4.h),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "msg_share_to_specific".tr,
                                              style:
                                                  CustomTextStyles
                                                      .bodyMediumOnPrimary_2,
                                            ),
                                            TextSpan(text: " "),
                                            TextSpan(
                                              text: "lbl_10".tr,
                                              style:
                                                  CustomTextStyles
                                                      .bodyMediumLightgreenA40002,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  _buildShare(context),
                                ],
                              ),
                            ),
                            SizedBox(height: 6.h),
                            Container(
                              decoration: AppDecoration.fillBluegray90099
                                  .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 12.h,
                                    width: 12.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6.h),
                                      gradient: LinearGradient(
                                        begin: Alignment(0.5, 0),
                                        end: Alignment(0.5, 1),
                                        colors: [
                                          appTheme.yellowA20005,
                                          appTheme.orange70007,
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 4.h),
                                    child: Text(
                                      "lbl_03".tr,
                                      style:
                                          CustomTextStyles
                                              .labelLargeOnPrimary_6,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "lbl_0_10".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ],
                        ),
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
  Widget _buildDepositthree(BuildContext context) {
    return CustomElevatedButton(
      width: 76.h,
      text: "lbl_deposit".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientAmberAToOrangeTL6Decoration,
    );
  }

  /// Section Widget
  Widget _buildColumnpriceone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            decoration: AppDecoration.outline21.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 160.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_amount_to_deposit_after".tr,
                                style: CustomTextStyles.bodyMediumOnPrimary_2,
                              ),
                              TextSpan(
                                text: "lbl_9992".tr,
                                style:
                                    CustomTextStyles.bodyMediumLightgreenA40002,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      _buildDepositthree(context),
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
                Container(
                  decoration: AppDecoration.fillBluegray90099.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 12.h,
                        width: 12.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.h),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              appTheme.yellowA20005,
                              appTheme.orange70007,
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: Text(
                          "lbl_105".tr,
                          style: CustomTextStyles.labelLargeOnPrimary_6,
                        ),
                      ),
                    ],
                  ),
                ),
                Text("lbl_0_999".tr, style: theme.textTheme.titleSmall),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGoplay(BuildContext context) {
    return CustomElevatedButton(
      width: 76.h,
      text: "lbl_go_play".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientAmberAToOrangeTL6Decoration,
    );
  }

  /// Section Widget
  Widget _buildColumnprice(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            decoration: AppDecoration.outline21.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 8.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: _buildColumnsuccessfu(
                            context,
                            successfully: "msg_current_valid_bet2".tr,
                            priceSix: "msg_after_claiming_the2".tr,
                          ),
                        ),
                      ),
                      _buildGoplay(context),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Container(
                  decoration: AppDecoration.fillBluegray90099.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 12.h,
                        width: 110.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.h),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              appTheme.yellowA20005,
                              appTheme.orange70007,
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: Text(
                          "lbl_204".tr,
                          style: CustomTextStyles.labelLargeOnPrimary_6,
                        ),
                      ),
                    ],
                  ),
                ),
                Text("lbl_0_999".tr, style: theme.textTheme.titleSmall),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInvite(BuildContext context) {
    return CustomElevatedButton(
      width: 76.h,
      text: "lbl_invite4".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientAmberAToOrangeTL6Decoration,
    );
  }

  /// Section Widget
  Widget _buildColumnsuccessfu1(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            decoration: AppDecoration.outline21.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: _buildColumnsuccessfu(
                            context,
                            successfully: "msg_successfully_registers2".tr,
                            priceSix: "msg_after_claiming_the4".tr,
                          ),
                        ),
                      ),
                      _buildInvite(context),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Container(
                  decoration: AppDecoration.fillBluegray90099.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 12.h,
                        width: 12.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.h),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              appTheme.yellowA20005,
                              appTheme.orange70007,
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: Text(
                          "lbl_03".tr,
                          style: CustomTextStyles.labelLargeOnPrimary_6,
                        ),
                      ),
                    ],
                  ),
                ),
                Text("lbl_0_999".tr, style: theme.textTheme.titleSmall),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowspacertwo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Spacer(),
          Container(
            width: 52.h,
            decoration: AppDecoration.outlineBlack900,
            child: Text(
              "lbl_roma_x".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeNotoSans,
            ),
          ),
          Container(
            width: 90.h,
            margin: EdgeInsets.only(left: 28.h),
            decoration: AppDecoration.outlineBlack900,
            child: Text(
              "lbl_diamond_party".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeNotoSans,
            ),
          ),
          Container(
            width: 90.h,
            margin: EdgeInsets.only(left: 8.h),
            decoration: AppDecoration.outlineBlack900,
            child: Text(
              "lbl_lucky_coming".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeNotoSans,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnmembers(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      decoration: AppDecoration.fs3qbg,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(bottom: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgNavHome22x24,
                      height: 42.h,
                      width: 42.h,
                    ),
                    Text(
                      "lbl_home".tr,
                      style: CustomTextStyles.labelLargeLightgreenA700,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child: _buildColumnhome(
                    context,
                    imageEleven: ImageConstant.imgNavDeposit25x26,
                    homeOne: "lbl_deposit".tr,
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_invite4".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(
                  width: 94.h,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 42.h,
                        width: 54.h,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup13061,
                              height: 42.h,
                              width: 44.h,
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgThumbsUpSecondarycontainer,
                              height: 10.h,
                              width: 26.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 8.h),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 18.h),
                        child: Text(
                          "lbl_spin2".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: _buildColumnhome(
                    context,
                    imageEleven: ImageConstant.imgGroup13046,
                    homeOne: "lbl_teams".tr,
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
  Widget _buildColumnhome(
    BuildContext context, {
    required String imageEleven,
    required String homeOne,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: imageEleven,
          height: 42.h,
          width: 42.h,
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(left: 2.h),
        ),
        Text(
          homeOne,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildColumnsuccessfu(
    BuildContext context, {
    required String successfully,
    required String priceSix,
  }) {
    return Column(
      spacing: 2,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "msg_successfully_registers".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(text: " "),
              TextSpan(
                text: "lbl_10".tr,
                style: CustomTextStyles.titleSmallLightgreenA40002,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "msg_after_claiming_the3".tr,
                style: CustomTextStyles.bodyMediumOnPrimary_2,
              ),
              TextSpan(text: " "),
              TextSpan(
                text: "lbl_9992".tr,
                style: CustomTextStyles.bodyMediumLightgreenA40002,
              ),
            ],
          ),
          textAlign: TextAlign.left,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
