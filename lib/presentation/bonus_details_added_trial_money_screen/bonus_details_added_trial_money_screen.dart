import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/bonus_details_added_trial_money_bloc.dart';
import 'models/bonus_details_added_trial_money_model.dart';
import 'models/listdeposit_item_model.dart';
import 'widgets/listdeposit_item_widget.dart';

class BonusDetailsAddedTrialMoneyScreen extends StatelessWidget {
  const BonusDetailsAddedTrialMoneyScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BonusDetailsAddedTrialMoneyBloc>(
      create:
          (context) => BonusDetailsAddedTrialMoneyBloc(
            BonusDetailsAddedTrialMoneyState(
              bonusDetailsAddedTrialMoneyModelObj:
                  BonusDetailsAddedTrialMoneyModel(),
            ),
          )..add(BonusDetailsAddedTrialMoneyInitialEvent()),
      child: BonusDetailsAddedTrialMoneyScreen(),
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
              height: 2932.h,
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
                        _buildStackviewone(context),
                        _buildListdeposit(context),
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
  Widget _buildSharewithyour(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_share_with_your2".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleSmallLightgreenA700,
    );
  }

  /// Section Widget
  Widget _buildStackviewone(BuildContext context) {
    return SizedBox(
      height: 546.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
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
          ),
          Container(
            height: 82.h,
            width: 374.h,
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
          Align(
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
                              imagePath:
                                  ImageConstant.imgArrowLeftBlueGray40012x6,
                              width: 8.h,
                              margin: EdgeInsets.only(left: 15.h),
                            ),
                            title: AppbarSubtitleTwo(
                              text: "lbl_bonus5".tr,
                              margin: EdgeInsets.only(left: 9.h),
                            ),
                            actions: [
                              AppbarTrailingImage(
                                imagePath: ImageConstant.imgLock,
                              ),
                              AppbarSubtitleThree(
                                text: "lbl_1980_00".tr,
                                margin: EdgeInsets.only(left: 8.h),
                              ),
                              AppbarTrailingImage(
                                imagePath: ImageConstant.img1,
                                height: 14.h,
                                width: 16.h,
                                margin: EdgeInsets.only(
                                  left: 11.h,
                                  right: 20.h,
                                ),
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
                                  margin: EdgeInsets.only(
                                    left: 22.h,
                                    top: 38.h,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.img403,
                                  height: 60.h,
                                  width: 62.h,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(
                                    left: 60.h,
                                    top: 54.h,
                                  ),
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
                                            margin: EdgeInsets.only(
                                              bottom: 2.h,
                                            ),
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
                                                  alignment:
                                                      Alignment.bottomRight,
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
                                  margin: EdgeInsets.only(
                                    top: 44.h,
                                    right: 44.h,
                                  ),
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
                                            margin: EdgeInsets.only(
                                              right: 10.h,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: SizedBox(
                                                    height: 64.h,
                                                    width: 126.h,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup13009,
                                                          height: 36.h,
                                                          width:
                                                              double.maxFinite,
                                                          alignment:
                                                              Alignment
                                                                  .bottomCenter,
                                                          margin:
                                                              EdgeInsets.only(
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
                                                  imagePath:
                                                      ImageConstant.img932,
                                                  height: 18.h,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                    bottom: 38.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.img923,
                                                  height: 26.h,
                                                  width: 28.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 20.h,
                                                    bottom: 40.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.img923,
                                                  height: 30.h,
                                                  width: 32.h,
                                                  margin: EdgeInsets.only(
                                                    right: 22.h,
                                                    bottom: 42.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.img928,
                                                  height: 30.h,
                                                  width: 32.h,
                                                  margin: EdgeInsets.only(
                                                    right: 56.h,
                                                    bottom: 42.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.img928,
                                                  height: 30.h,
                                                  width: 32.h,
                                                  margin: EdgeInsets.only(
                                                    right: 40.h,
                                                    bottom: 44.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.img928,
                                                  height: 30.h,
                                                  width: 32.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 70.h,
                                                    bottom: 40.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.img928,
                                                  height: 30.h,
                                                  width: 32.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 60.h,
                                                    bottom: 44.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.img922,
                                                  height: 28.h,
                                                  width: 30.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
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
                                                  decoration:
                                                      AppDecoration.column396,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(height: 2.h),
                                                      Container(
                                                        decoration:
                                                            AppDecoration
                                                                .outlineGreen90023,
                                                        child: Text(
                                                          "lbl_100000_002".tr,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style:
                                                              CustomTextStyles
                                                                  .headlineSmallYellow20010,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.img933,
                                                  height: 26.h,
                                                  width: 26.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                    bottom: 16.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.img933,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
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
                                  margin: EdgeInsets.only(
                                    left: 72.h,
                                    bottom: 18.h,
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 6.h,
                    ),
                    decoration: AppDecoration.outline1.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgInvite132x32,
                                height: 32.h,
                                width: 34.h,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.h,
                                    bottom: 2.h,
                                  ),
                                  child: Text(
                                    "lbl_invite_bonus".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "msg_total_19999_80".tr,
                                style: CustomTextStyles.titleSmallAmberA400_2,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4.h),
                        SizedBox(width: double.maxFinite, child: Divider()),
                        SizedBox(height: 16.h),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 4.h),
                          child: _buildRowpriceFive(
                            context,
                            priceFive: "lbl_99".tr,
                            invitationOne: "msg_invite_registration".tr,
                            priceSix: "lbl_102".tr,
                            bettingrebate: "lbl_invite_deposit".tr,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 4.h),
                          child: _buildRowpriceFive(
                            context,
                            priceFive: "lbl_102".tr,
                            invitationOne: "msg_invitation_qualified".tr,
                            priceSix: "lbl_4900_70".tr,
                            bettingrebate: "lbl_betting_rebate".tr,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_304".tr,
                            style: CustomTextStyles.titleSmallLightgreenA700,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_invitees_bonus".tr,
                            style: CustomTextStyles.titleSmallBluegray400_1,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        _buildSharewithyour(context),
                        SizedBox(height: 8.h),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListdeposit(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: BlocSelector<
        BonusDetailsAddedTrialMoneyBloc,
        BonusDetailsAddedTrialMoneyState,
        BonusDetailsAddedTrialMoneyModel?
      >(
        selector: (state) => state.bonusDetailsAddedTrialMoneyModelObj,
        builder: (context, bonusDetailsAddedTrialMoneyModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.h);
            },
            itemCount:
                bonusDetailsAddedTrialMoneyModelObj
                    ?.listdepositItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              ListdepositItemModel model =
                  bonusDetailsAddedTrialMoneyModelObj
                      ?.listdepositItemList[index] ??
                  ListdepositItemModel();
              return ListdepositItemWidget(model);
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
        spacing: 10,
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
                  padding: EdgeInsets.all(12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClose32x32,
                        height: 32.h,
                        width: 34.h,
                        margin: EdgeInsets.only(top: 4.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h, bottom: 4.h),
                        child: Text(
                          "lbl_exclusive_bonus".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: Text(
                          "lbl_total_9222_00".tr,
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
                    horizontal: 10.h,
                    vertical: 12.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 28.h,
                        width: 36.h,
                        margin: EdgeInsets.only(top: 4.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img28x18,
                              height: 4.h,
                              width: 10.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(left: 4.h, bottom: 4.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img132x66,
                              height: 16.h,
                              width: double.maxFinite,
                              alignment: Alignment.bottomCenter,
                              margin: EdgeInsets.only(bottom: 2.h),
                            ),
                            Container(
                              height: 28.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.img1756x66,
                                    height: 28.h,
                                    width: double.maxFinite,
                                  ),
                                  Container(
                                    height: 24.h,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              right: 10.h,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage381,
                                                  height: 4.h,
                                                  width: 6.h,
                                                  alignment:
                                                      Alignment.centerRight,
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage383,
                                                  height: 4.h,
                                                  width: 4.h,
                                                  margin: EdgeInsets.only(
                                                    right: 2.h,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage382,
                                          height: 4.h,
                                          width: 6.h,
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 10.h),
                                        ),
                                        Container(
                                          height: 16.h,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.img1434x68,
                                                height: 16.h,
                                                width: double.maxFinite,
                                              ),
                                              Container(
                                                decoration:
                                                    AppDecoration
                                                        .outlineBlack90013,
                                                child: Text(
                                                  "lbl_experience".tr,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      CustomTextStyles
                                                          .aaHouDiHeiYellow30006Regular,
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h, bottom: 2.h),
                        child: Text(
                          "msg_experience_bonus2".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 6.h),
                        child: Text(
                          "lbl_total_0_00".tr,
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
                  padding: EdgeInsets.all(12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClose32x32,
                        height: 32.h,
                        width: 34.h,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(bottom: 4.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h, bottom: 4.h),
                        child: Text(
                          "msg_register_handsel".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
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
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Padding(
                  padding: EdgeInsets.all(12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPlayGray9000232x32,
                        height: 32.h,
                        width: 32.h,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(bottom: 4.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h, bottom: 4.h),
                        child: Text(
                          "msg_app_download_bonus2".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h, bottom: 8.h),
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

  /// Common widget
  Widget _buildRowpriceFive(
    BuildContext context, {
    required String priceFive,
    required String invitationOne,
    required String priceSix,
    required String bettingrebate,
  }) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                priceFive,
                style: CustomTextStyles.titleSmallLightgreenA700.copyWith(
                  color: appTheme.lightGreenA700,
                ),
              ),
              Text(
                invitationOne,
                style: CustomTextStyles.titleSmallBluegray400_1.copyWith(
                  color: appTheme.blueGray400,
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              priceSix,
              style: CustomTextStyles.titleSmallLightgreenA700.copyWith(
                color: appTheme.lightGreenA700,
              ),
            ),
            Text(
              bettingrebate,
              style: CustomTextStyles.titleSmallBluegray400_1.copyWith(
                color: appTheme.blueGray400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
