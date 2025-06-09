import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/bonus_details_bloc.dart';
import 'models/bonus_details_item_model.dart';
import 'models/bonus_details_model.dart';
import 'widgets/bonus_details_item_widget.dart';

class BonusDetailsScreen extends StatelessWidget {
  const BonusDetailsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BonusDetailsBloc>(
      create:
          (context) => BonusDetailsBloc(
            BonusDetailsState(bonusDetailsModelObj: BonusDetailsModel()),
          )..add(BonusDetailsInitialEvent()),
      child: BonusDetailsScreen(),
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
            child: Container(
              height: 2872.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup724Black900,
                    height: 192.h,
                    width: double.maxFinite,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 64.h),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      spacing: 10,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 2578.h,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              _buildStackoneone(context),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 82.h,
                                  width: 374.h,
                                  margin: EdgeInsets.only(top: 256.h),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.5, 0),
                                      end: Alignment(0.5, 0.49),
                                      colors: [
                                        appTheme.gray90002.withValues(alpha: 0),
                                        appTheme.gray90002,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              _buildStackf1one(context),
                              _buildBonusdetails(context),
                            ],
                          ),
                        ),
                        _buildColumncloseone(context),
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
  Widget _buildStackoneone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 328.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.15,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage69,
                height: 328.h,
                width: double.maxFinite,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.img1182x374,
              height: 182.h,
              width: double.maxFinite,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 38.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackf1one(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 350.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgF1350x374,
              height: 350.h,
              width: double.maxFinite,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomAppBar(
                      leadingWidth: 23.h,
                      leading: AppbarLeadingImage(
                        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
                        width: 8.h,
                        margin: EdgeInsets.only(left: 15.h),
                      ),
                      title: AppbarSubtitleTwo(
                        text: "lbl_bonus5".tr,
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
                      styleType: Style.bgFillOnPrimaryContainer,
                    ),
                    Container(
                      height: 212.h,
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img401,
                            height: 80.h,
                            width: 82.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 22.h, top: 38.h),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img403,
                            height: 60.h,
                            width: 62.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 60.h, top: 54.h),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 114.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage58,
                                    height: 114.h,
                                    width: double.maxFinite,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 70.h,
                                      width: 204.h,
                                      margin: EdgeInsets.only(bottom: 2.h),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage278,
                                            height: 70.h,
                                            width: double.maxFinite,
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.img92024x28,
                                            height: 24.h,
                                            width: 30.h,
                                            alignment: Alignment.bottomRight,
                                            margin: EdgeInsets.only(
                                              right: 70.h,
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
                          CustomImageView(
                            imagePath: ImageConstant.img1358x78,
                            height: 58.h,
                            width: 80.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 44.h, right: 44.h),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              height: 176.h,
                              width: 206.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.img1176x204,
                                    height: 176.h,
                                    width: double.maxFinite,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: 138.h,
                                      margin: EdgeInsets.only(right: 10.h),
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: SizedBox(
                                              height: 64.h,
                                              width: 126.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .imgGroup13009,
                                                    height: 36.h,
                                                    width: double.maxFinite,
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    margin: EdgeInsets.only(
                                                      bottom: 8.h,
                                                    ),
                                                  ),
                                                  Text(
                                                    "lbl_total2".tr,
                                                    style:
                                                        CustomTextStyles
                                                            .displayMediumArialOrange5008,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.img932,
                                            height: 18.h,
                                            width: 24.h,
                                            margin: EdgeInsets.only(
                                              bottom: 38.h,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.img923,
                                            height: 26.h,
                                            width: 28.h,
                                            alignment: Alignment.bottomLeft,
                                            margin: EdgeInsets.only(
                                              left: 20.h,
                                              bottom: 40.h,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.img923,
                                            height: 30.h,
                                            width: 32.h,
                                            margin: EdgeInsets.only(
                                              right: 22.h,
                                              bottom: 42.h,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.img928,
                                            height: 30.h,
                                            width: 32.h,
                                            margin: EdgeInsets.only(
                                              right: 56.h,
                                              bottom: 42.h,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.img928,
                                            height: 30.h,
                                            width: 32.h,
                                            margin: EdgeInsets.only(
                                              right: 40.h,
                                              bottom: 44.h,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.img928,
                                            height: 30.h,
                                            width: 32.h,
                                            alignment: Alignment.bottomLeft,
                                            margin: EdgeInsets.only(
                                              left: 70.h,
                                              bottom: 40.h,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.img928,
                                            height: 30.h,
                                            width: 32.h,
                                            alignment: Alignment.bottomLeft,
                                            margin: EdgeInsets.only(
                                              left: 60.h,
                                              bottom: 44.h,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.img922,
                                            height: 28.h,
                                            width: 30.h,
                                            alignment: Alignment.bottomLeft,
                                            margin: EdgeInsets.only(
                                              left: 44.h,
                                              bottom: 44.h,
                                            ),
                                          ),
                                          Container(
                                            width: double.maxFinite,
                                            margin: EdgeInsets.only(
                                              left: 20.h,
                                              right: 4.h,
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              vertical: 26.h,
                                            ),
                                            decoration: AppDecoration.column411,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 2.h),
                                                Container(
                                                  decoration:
                                                      AppDecoration
                                                          .outlineGreen90023,
                                                  child: Text(
                                                    "lbl_100000_002".tr,
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        CustomTextStyles
                                                            .headlineSmallYellow20010,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.img933,
                                            height: 26.h,
                                            width: 26.h,
                                            alignment: Alignment.bottomLeft,
                                            margin: EdgeInsets.only(
                                              bottom: 16.h,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.img933,
                                            height: 26.h,
                                            width: 26.h,
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(
                                              left: 78.h,
                                              top: 52.h,
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
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 2.h),
                              child: Column(
                                spacing: 2,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.img936,
                                    height: 16.h,
                                    width: 18.h,
                                    margin: EdgeInsets.only(right: 2.h),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage275,
                                    height: 48.h,
                                    width: 48.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img93520x18,
                            height: 20.h,
                            width: 20.h,
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(bottom: 14.h),
                          ),
                          Container(
                            decoration: AppDecoration.outlineBlack90014,
                            child: Text(
                              "lbl_bonus_claimed".tr,
                              textAlign: TextAlign.center,
                              style:
                                  CustomTextStyles
                                      .headlineMediumArialLightgreenA70015,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage276,
                            height: 32.h,
                            width: 32.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(left: 72.h, bottom: 18.h),
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
    );
  }

  /// Section Widget
  Widget _buildBonusdetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child:
          BlocSelector<BonusDetailsBloc, BonusDetailsState, BonusDetailsModel?>(
            selector: (state) => state.bonusDetailsModelObj,
            builder: (context, bonusDetailsModelObj) {
              return ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.h);
                },
                itemCount:
                    bonusDetailsModelObj?.bonusDetailsItemList.length ?? 0,
                itemBuilder: (context, index) {
                  BonusDetailsItemModel model =
                      bonusDetailsModelObj?.bonusDetailsItemList[index] ??
                      BonusDetailsItemModel();
                  return BonusDetailsItemWidget(model);
                },
              );
            },
          ),
    );
  }

  /// Section Widget
  Widget _buildColumncloseone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        spacing: 12,
        children: [
          Container(
            decoration: AppDecoration.outline1.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            width: double.maxFinite,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 14.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClose32x32,
                        height: 32.h,
                        width: 34.h,
                      ),
                      Text(
                        "lbl_exclusive_bonus".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      Text(
                        "lbl_total_9222_00".tr,
                        style: CustomTextStyles.titleSmallAmberA400_2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: AppDecoration.outline1.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            width: double.maxFinite,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 14.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClose32x32,
                        height: 32.h,
                        width: 34.h,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.h),
                          child: Text(
                            "msg_register_handsel".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 6.h),
                        child: Text(
                          "lbl_total_125_00".tr,
                          style: CustomTextStyles.titleSmallAmberA400_2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: AppDecoration.outline1.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            width: double.maxFinite,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 4.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 32.h,
                        width: 32.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage1271,
                              height: 32.h,
                              width: 32.h,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.h, top: 6.h),
                                child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(-(-7 / 360)),
                                  child: Text(
                                    "lbl2".tr,
                                    style:
                                        CustomTextStyles.labelLargeAmber20004,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 138.h,
                          margin: EdgeInsets.only(left: 28.h, top: 14.h),
                          child: Text(
                            "msg_phone_verification5".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child: Text(
                          "lbl_total_125_00".tr,
                          style: CustomTextStyles.titleSmallAmberA400_2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
