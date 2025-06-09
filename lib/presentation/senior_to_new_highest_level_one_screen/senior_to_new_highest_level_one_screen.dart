import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/senior_to_new_highest_level_one_bloc.dart';
import 'models/listinvite_one_item_model.dart';
import 'models/listjunior_item_model.dart';
import 'models/listregistratio_item_model.dart';
import 'models/senior_to_new_highest_level_one_model.dart';
import 'models/slidermybenefit_item_model.dart';
import 'widgets/listinvite_one_item_widget.dart';
import 'widgets/listjunior_item_widget.dart';
import 'widgets/listregistratio_item_widget.dart';
import 'widgets/slidermybenefit_item_widget.dart';

class SeniorToNewHighestLevelOneScreen extends StatelessWidget {
  const SeniorToNewHighestLevelOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SeniorToNewHighestLevelOneBloc>(
      create:
          (context) => SeniorToNewHighestLevelOneBloc(
            SeniorToNewHighestLevelOneState(
              seniorToNewHighestLevelOneModelObj:
                  SeniorToNewHighestLevelOneModel(),
            ),
          )..add(SeniorToNewHighestLevelOneInitialEvent()),
      child: SeniorToNewHighestLevelOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildStacklogowj93on(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 14.h),
                    child: Column(
                      children: [
                        SizedBox(height: 14.h),
                        _buildColumnmyagentti(context),
                        SizedBox(height: 38.h),
                        _buildStacksharewith(context),
                        SizedBox(height: 10.h),
                        SizedBox(
                          height: 1690.h,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: double.maxFinite,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.h,
                                    vertical: 14.h,
                                  ),
                                  decoration: AppDecoration.fillBluegray80003
                                      .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder10,
                                      ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgVector30x20,
                                            height: 30.h,
                                            width: 20.h,
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                top: 4.h,
                                              ),
                                              child: Text(
                                                "lbl_today".tr,
                                                style:
                                                    CustomTextStyles
                                                        .titleLargeAmberA400,
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgVector1,
                                            height: 30.h,
                                            width: 20.h,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: double.maxFinite,
                                        margin: EdgeInsets.symmetric(
                                          horizontal: 40.h,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                  width: double.maxFinite,
                                                  padding: EdgeInsets.only(
                                                    right: 16.h,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        "lbl_70_577_000_00".tr,
                                                        style:
                                                            CustomTextStyles
                                                                .headlineMediumArialOnPrimaryBold,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                              right: 40.h,
                                                            ),
                                                        child: Text(
                                                          "lbl_today_s_income"
                                                              .tr,
                                                          style:
                                                              CustomTextStyles
                                                                  .bodyMediumIndigoA10001,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgProfile,
                                              height: 16.h,
                                              width: 16.h,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 12.h),
                                      _buildListregistratio(context),
                                      SizedBox(height: 74.h),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4.h,
                                  vertical: 28.h,
                                ),
                                decoration: AppDecoration.fillBluegray80004
                                    .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder10,
                                    ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildRowline(context),
                                    SizedBox(height: 16.h),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 26.h),
                                        child: Text(
                                          "msg_jilitaka_new_referral".tr,
                                          style:
                                              CustomTextStyles
                                                  .titleMediumAmberA400_1,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "msg_enjoy_7_super_commissions".tr,
                                      style:
                                          CustomTextStyles
                                              .titleMediumIndigoA10001,
                                    ),
                                    SizedBox(height: 26.h),
                                    _buildRowonefour(context),
                                    SizedBox(height: 10.h),
                                    _buildRowtwoone(context),
                                    SizedBox(height: 10.h),
                                    _buildRowthreeone(context),
                                    SizedBox(height: 10.h),
                                    _buildRowfourone(context),
                                    SizedBox(height: 10.h),
                                    _buildRowfiveone(context),
                                    SizedBox(height: 10.h),
                                    _buildRowsixone(context),
                                    SizedBox(height: 10.h),
                                    _buildRowsevenone(context),
                                    SizedBox(height: 30.h),
                                    _buildRowa1one(context),
                                    SizedBox(height: 30.h),
                                    Text(
                                      "lbl_betting_rebate".tr,
                                      style: CustomTextStyles.titleSmall15,
                                    ),
                                    SizedBox(height: 8.h),
                                    _buildColumnjunior(context),
                                    SizedBox(height: 10.h),
                                    Text(
                                      "msg_different_agant".tr,
                                      style:
                                          CustomTextStyles
                                              .bodySmallIndigoA10001,
                                    ),
                                    SizedBox(height: 6.h),
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStacklogowj93on(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(right: 6.h),
              child: CustomAppBar(
                height: 48.h,
                title: SizedBox(
                  width: double.maxFinite,
                  child: AppbarTitleImage(
                    imagePath: ImageConstant.imgLogoWj931,
                    height: 28.h,
                    width: 124.h,
                    margin: EdgeInsets.only(left: 15.h),
                  ),
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
              ),
            ),
          ),
          Container(
            height: 60.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 60.h,
                  width: 374.h,
                  decoration: BoxDecoration(color: appTheme.gray90007),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 14.h),
                    child: Column(
                      spacing: 4,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.maxFinite,
                          child: BlocSelector<
                            SeniorToNewHighestLevelOneBloc,
                            SeniorToNewHighestLevelOneState,
                            SeniorToNewHighestLevelOneModel?
                          >(
                            selector:
                                (state) =>
                                    state.seniorToNewHighestLevelOneModelObj,
                            builder: (
                              context,
                              seniorToNewHighestLevelOneModelObj,
                            ) {
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Wrap(
                                  direction: Axis.horizontal,
                                  spacing: 10.h,
                                  children: List.generate(
                                    seniorToNewHighestLevelOneModelObj
                                            ?.listinviteOneItemList
                                            .length ??
                                        0,
                                    (index) {
                                      ListinviteOneItemModel model =
                                          seniorToNewHighestLevelOneModelObj
                                              ?.listinviteOneItemList[index] ??
                                          ListinviteOneItemModel();
                                      return ListinviteOneItemWidget(model);
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle1944,
                          height: 3.h,
                          width: 36.h,
                          radius: BorderRadius.circular(1.h),
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
  Widget _buildColumnmyagentti(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 21, sigmaY: 21),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.gradientYellowAToPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 14.h),
                  child: Row(
                    children: [
                      Text(
                        "lbl_my_agent_tier".tr,
                        style: CustomTextStyles.titleSmall15,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 18.h),
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        decoration: AppDecoration.fillOrange.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder10,
                        ),
                        child: Text(
                          "lbl_master_agent_i".tr,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.labelLargeOnPrimary_6,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgInbox,
                        height: 16.h,
                        width: 16.h,
                        margin: EdgeInsets.only(left: 8.h),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSettingsYellow20001,
                        height: 10.h,
                        width: 16.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_team_count".tr,
                          style: CustomTextStyles.labelLargeYellow20001,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 20.h),
                          decoration: AppDecoration.fillBlack900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 110.h,
                                decoration: AppDecoration.fillOrange.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "lbl_4_10".tr,
                                      style: CustomTextStyles.labelMedium10,
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
                SizedBox(height: 4.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCloseBlack900,
                        height: 12.h,
                        width: 18.h,
                        alignment: Alignment.topCenter,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "lbl_team_betting".tr,
                          style: CustomTextStyles.labelLargeYellow20001,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 14.h),
                          decoration: AppDecoration.fillBlack900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 124.h,
                                decoration: AppDecoration.fillOrange.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "lbl_500_1000".tr,
                                      style: CustomTextStyles.labelMedium10,
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
                SizedBox(height: 2.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGrid,
                        height: 10.h,
                        width: 18.h,
                        alignment: Alignment.topCenter,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "lbl_team_deposit".tr,
                          style: CustomTextStyles.labelLargeYellow20001,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 12.h),
                          decoration: AppDecoration.fillBlack900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 170.h,
                                padding: EdgeInsets.symmetric(horizontal: 44.h),
                                decoration: AppDecoration.fillOrange.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "lbl_900_1000".tr,
                                      style: CustomTextStyles.labelMedium10,
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
                SizedBox(height: 14.h),
                SizedBox(
                  height: 280.h,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: BlocBuilder<
                          SeniorToNewHighestLevelOneBloc,
                          SeniorToNewHighestLevelOneState
                        >(
                          builder: (context, state) {
                            return CarouselSlider.builder(
                              options: CarouselOptions(
                                height: 280.h,
                                initialPage: 0,
                                autoPlay: true,
                                viewportFraction: 1.0,
                                scrollDirection: Axis.horizontal,
                                onPageChanged: (index, reason) {
                                  context
                                      .read<SeniorToNewHighestLevelOneBloc>()
                                      .add(
                                        ChangeSliderIndexEvent(value: index),
                                      );
                                },
                              ),
                              itemCount:
                                  state
                                      .seniorToNewHighestLevelOneModelObj
                                      ?.slidermybenefitItemList
                                      .length ??
                                  0,
                              itemBuilder: (context, index, realIndex) {
                                SlidermybenefitItemModel model =
                                    state
                                        .seniorToNewHighestLevelOneModelObj
                                        ?.slidermybenefitItemList[index] ??
                                    SlidermybenefitItemModel();
                                return SlidermybenefitItemWidget(model);
                              },
                            );
                          },
                        ),
                      ),
                      BlocBuilder<
                        SeniorToNewHighestLevelOneBloc,
                        SeniorToNewHighestLevelOneState
                      >(
                        builder: (context, state) {
                          return SizedBox(
                            height: 5.h,
                            child: AnimatedSmoothIndicator(
                              activeIndex: state.sliderIndex,
                              count:
                                  state
                                      .seniorToNewHighestLevelOneModelObj
                                      ?.slidermybenefitItemList
                                      .length ??
                                  0,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 5,
                                activeDotColor: theme.colorScheme.onPrimary,
                                dotColor: theme.colorScheme.onPrimary
                                    .withValues(alpha: 0.3),
                                dotHeight: 5.h,
                                dotWidth: 5.h,
                              ),
                            ),
                          );
                        },
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
  Widget _buildStacksharewith(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.zero,
        color: appTheme.gray90001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Container(
          height: 168.h,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 4.h),
          decoration: AppDecoration.fs4bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img23653621,
                height: 62.h,
                width: 64.h,
                alignment: Alignment.topLeft,
              ),
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "msg_share_with_friends".tr,
                          style: CustomTextStyles.titleMedium18,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgUserOnprimary,
                          height: 18.h,
                          width: 18.h,
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 6.h,
                              ),
                              decoration: AppDecoration.outlineLightgreenA700
                                  .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Text(
                                      "msg_http_www_jbet".tr,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          CustomTextStyles
                                              .bodyMediumLightgreenA700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomIconButton(
                            height: 34.h,
                            width: 34.h,
                            padding: EdgeInsets.all(6.h),
                            decoration: IconButtonStyleHelper.fillLightGreenA,
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgThumbsUpOnprimary34x34,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 26.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img6afbb433afc026d,
                            height: 32.h,
                            width: 34.h,
                          ),
                          CustomIconButton(
                            height: 32.h,
                            width: 32.h,
                            decoration: IconButtonStyleHelper.none,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgSaveLightBlue600,
                            ),
                          ),
                          CustomIconButton(
                            height: 32.h,
                            width: 32.h,
                            decoration: IconButtonStyleHelper.none,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFacebookIndigo600,
                            ),
                          ),
                          CustomIconButton(
                            height: 32.h,
                            width: 32.h,
                            decoration: IconButtonStyleHelper.none,
                            child: CustomImageView(
                              imagePath: ImageConstant.img1Green50001,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgTwitter1,
                            height: 32.h,
                            width: 34.h,
                            radius: BorderRadius.circular(16.h),
                          ),
                          CustomIconButton(
                            height: 32.h,
                            width: 32.h,
                            decoration: IconButtonStyleHelper.none,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgLockLightBlue60032x32,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildListregistratio(BuildContext context) {
    return BlocSelector<
      SeniorToNewHighestLevelOneBloc,
      SeniorToNewHighestLevelOneState,
      SeniorToNewHighestLevelOneModel?
    >(
      selector: (state) => state.seniorToNewHighestLevelOneModelObj,
      builder: (context, seniorToNewHighestLevelOneModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 10.h);
          },
          itemCount:
              seniorToNewHighestLevelOneModelObj
                  ?.listregistratioItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            ListregistratioItemModel model =
                seniorToNewHighestLevelOneModelObj
                    ?.listregistratioItemList[index] ??
                ListregistratioItemModel();
            return ListregistratioItemWidget(model);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRowline(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        VerticalDivider(
          width: 5.h,
          thickness: 5.h,
          color: appTheme.lightBlueA70001,
        ),
        Text(
          "msg_agent_7_major_income".tr.toUpperCase(),
          style: CustomTextStyles.titleLargeBlack_1,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRowonefour(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: AppDecoration.outline5.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Row(
            children: [
              Container(
                height: 60.h,
                width: 62.h,
                decoration: AppDecoration.column84,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("lbl_12".tr, style: theme.textTheme.titleLarge),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_each_registration".tr,
                        style: CustomTextStyles.titleSmall15_1,
                      ),
                      TextSpan(
                        text: "lbl_23".tr,
                        style: CustomTextStyles.titleSmallAmberA40015,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowtwoone(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: AppDecoration.outline5.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Row(
            children: [
              Container(
                height: 60.h,
                width: 62.h,
                decoration: AppDecoration.column85,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("lbl_22".tr, style: theme.textTheme.titleLarge),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_each_deposit_bonus".tr,
                        style: CustomTextStyles.titleSmall15_1,
                      ),
                      TextSpan(
                        text: "lbl_53".tr,
                        style: CustomTextStyles.titleSmallAmberA40015,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowthreeone(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: AppDecoration.outline5.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Row(
            children: [
              Container(
                height: 60.h,
                width: 62.h,
                decoration: AppDecoration.column86,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("lbl_3".tr, style: theme.textTheme.titleLarge),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_maximum_achievement".tr,
                        style: CustomTextStyles.titleSmall15_1,
                      ),
                      TextSpan(
                        text: "lbl_88882".tr,
                        style: CustomTextStyles.titleSmallAmberA40015,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowfourone(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: AppDecoration.outline5.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Row(
            children: [
              Container(
                height: 60.h,
                width: 62.h,
                decoration: AppDecoration.column87,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("lbl_4".tr, style: theme.textTheme.titleLarge),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_agent_ranking_rewards".tr,
                        style: CustomTextStyles.titleSmall15_1,
                      ),
                      TextSpan(
                        text: "lbl_89992".tr,
                        style: CustomTextStyles.titleSmallAmberA40015,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowfiveone(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: AppDecoration.outline5.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60.h,
                width: 62.h,
                decoration: AppDecoration.column88,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("lbl_52".tr, style: theme.textTheme.titleLarge),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_qualified_bonuses".tr,
                        style: CustomTextStyles.titleSmall15_1,
                      ),
                      TextSpan(
                        text: "lbl_582".tr,
                        style: CustomTextStyles.titleSmallAmberA40015,
                      ),
                      TextSpan(
                        text: "msg_per_qualified_user".tr,
                        style: CustomTextStyles.titleSmall15_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowsixone(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: AppDecoration.outline5.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Row(
            children: [
              Container(
                height: 60.h,
                width: 62.h,
                decoration: AppDecoration.column89,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("lbl_6".tr, style: theme.textTheme.titleLarge),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_up_to_1_1".tr,
                        style: CustomTextStyles.titleSmallAmberA40015,
                      ),
                      TextSpan(
                        text: "lbl_deposit_rebate2".tr,
                        style: CustomTextStyles.titleSmall15_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowsevenone(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: AppDecoration.outline5.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Row(
            children: [
              Container(
                height: 60.h,
                width: 62.h,
                decoration: AppDecoration.column90,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("lbl_7".tr, style: theme.textTheme.titleLarge),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_1".tr,
                        style: CustomTextStyles.titleSmallAmberA40015,
                      ),
                      TextSpan(
                        text: "msg_betting_rebate_in".tr,
                        style: CustomTextStyles.titleSmall15_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowa1one(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: 80.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 34.h,
                  width: 36.h,
                  margin: EdgeInsets.only(right: 12.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage44,
                        height: 34.h,
                        width: 34.h,
                        radius: BorderRadius.circular(16.h),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 12.h,
                          height: 10.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.fillAmber.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "lbl_a1".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.arialOnPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPlus,
                  height: 16.h,
                  width: 38.h,
                  margin: EdgeInsets.only(right: 10.h),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 24.h,
                        width: 22.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage622x22,
                              height: 22.h,
                              width: 22.h,
                              radius: BorderRadius.circular(10.h),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                width: 12.h,
                                height: 10.h,
                                alignment: Alignment.center,
                                decoration: AppDecoration.red.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Text(
                                  "lbl_b1".tr,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.arialOnPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 24.h,
                        width: 22.h,
                        margin: EdgeInsets.only(left: 12.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage22x22,
                              height: 22.h,
                              width: 22.h,
                              radius: BorderRadius.circular(10.h),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                width: 12.h,
                                height: 10.h,
                                alignment: Alignment.center,
                                decoration: AppDecoration.red.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Text(
                                  "lbl_b2".tr,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.arialOnPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 10.h,
                          height: 10.h,
                          alignment: Alignment.center,
                          decoration: AppDecoration.green1.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "lbl_c1".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.arialOnPrimary,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 34.h,
                        width: 48.h,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPlus,
                              height: 22.h,
                              width: 38.h,
                              alignment: Alignment.topCenter,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage12x12,
                              height: 12.h,
                              width: 14.h,
                              radius: BorderRadius.circular(6.h),
                              alignment: Alignment.bottomLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage1,
                              height: 12.h,
                              width: 14.h,
                              radius: BorderRadius.circular(6.h),
                            ),
                            Container(
                              width: 12.h,
                              height: 10.h,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(right: 8.h),
                              decoration: AppDecoration.green1.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: Text(
                                "lbl_c2".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.arialOnPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 40.h,
                        width: 30.h,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPlus,
                              height: 28.h,
                              width: 20.h,
                              alignment: Alignment.topCenter,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage2,
                              height: 12.h,
                              width: 14.h,
                              radius: BorderRadius.circular(6.h),
                              alignment: Alignment.bottomLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage3,
                              height: 12.h,
                              width: 14.h,
                              radius: BorderRadius.circular(6.h),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 40.h,
                        width: 30.h,
                        margin: EdgeInsets.only(left: 4.h),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPlus,
                              height: 28.h,
                              width: 20.h,
                              alignment: Alignment.topCenter,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage4,
                              height: 12.h,
                              width: 14.h,
                              radius: BorderRadius.circular(6.h),
                              alignment: Alignment.bottomLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage5,
                              height: 12.h,
                              width: 14.h,
                              radius: BorderRadius.circular(6.h),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Container(
                        width: 10.h,
                        height: 10.h,
                        alignment: Alignment.center,
                        decoration: AppDecoration.fillLightBlueA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "lbl_d1".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.arialOnPrimary,
                        ),
                      ),
                      Container(
                        width: 10.h,
                        height: 10.h,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 8.h),
                        decoration: AppDecoration.fillLightBlueA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "lbl_d2".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.arialOnPrimary,
                        ),
                      ),
                      Container(
                        width: 10.h,
                        height: 10.h,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 8.h),
                        decoration: AppDecoration.fillLightBlueA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "lbl_d3".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.arialOnPrimary,
                        ),
                      ),
                      Container(
                        width: 10.h,
                        height: 10.h,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 8.h),
                        decoration: AppDecoration.fillLightBlueA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "lbl_d4".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.arialOnPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: Column(
                  children: [
                    SizedBox(
                      height: 54.h,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 40.h,
                              width: 42.h,
                              decoration: AppDecoration.gradientLightBlueToBlueA
                                  .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20,
                                  ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_you".tr,
                                    style: CustomTextStyles.titleSmallBlack,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 24.h,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                    height: 22.h,
                                    width: 24.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgClose,
                                          height: 22.h,
                                          width: 22.h,
                                          radius: BorderRadius.circular(1.h),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPolygon53,
                                          height: 4.h,
                                          width: 7.h,
                                          alignment: Alignment.topRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    height: 22.h,
                                    width: 24.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgUpload,
                                          height: 22.h,
                                          width: 22.h,
                                          radius: BorderRadius.circular(1.h),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPolygon54,
                                          height: 4.h,
                                          width: 7.h,
                                          alignment: Alignment.topLeft,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 6.h,
                                    vertical: 2.h,
                                  ),
                                  decoration: AppDecoration.fillAmber70001
                                      .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder1,
                                      ),
                                  child: Text(
                                    "msg_master_agent_iii".tr,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.labelLargeOnPrimary_6,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: theme.colorScheme.onPrimary,
                        ),
                        VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ],
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      "lbl_level_12".tr,
                      style: CustomTextStyles.labelMediumAmberA400,
                    ),
                    SizedBox(height: 4.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_you_get".tr,
                            style: CustomTextStyles.labelMediumIndigoA1000110,
                          ),
                          TextSpan(
                            text: "msg_0_4_form_level".tr,
                            style: CustomTextStyles.labelMediumRed40001,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: theme.colorScheme.onPrimary,
                        ),
                        VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      "lbl_level_22".tr,
                      style: CustomTextStyles.labelMediumAmberA400,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(color: appTheme.indigoA10001),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_you_get".tr,
                            style: CustomTextStyles.labelMediumIndigoA1000110,
                          ),
                          TextSpan(
                            text: "msg_0_3_form_level".tr,
                            style: CustomTextStyles.labelMediumRed40001,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: theme.colorScheme.onPrimary,
                        ),
                        VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      "lbl_level_32".tr,
                      style: CustomTextStyles.labelMediumAmberA400,
                    ),
                    SizedBox(height: 4.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_you_get".tr,
                            style: CustomTextStyles.labelMediumIndigoA1000110,
                          ),
                          TextSpan(
                            text: "msg_0_2_form_level".tr,
                            style: CustomTextStyles.labelMediumRed40001,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: theme.colorScheme.onPrimary,
                        ),
                        VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      "lbl_level_42".tr,
                      style: CustomTextStyles.labelMediumAmberA400,
                    ),
                    SizedBox(height: 6.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_you_get".tr,
                            style: CustomTextStyles.labelMediumIndigoA1000110,
                          ),
                          TextSpan(
                            text: "msg_0_1_form_level".tr,
                            style: CustomTextStyles.labelMediumRed40001,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 80.h,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 34.h,
                    width: 36.h,
                    margin: EdgeInsets.only(left: 12.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage37,
                          height: 34.h,
                          width: 34.h,
                          radius: BorderRadius.circular(16.h),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 12.h,
                            height: 10.h,
                            alignment: Alignment.center,
                            decoration: AppDecoration.fillAmber.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Text(
                              "lbl_a2".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.arialOnPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPlus,
                  height: 16.h,
                  width: 38.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 12.h),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 24.h,
                        width: 22.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage15,
                              height: 22.h,
                              width: 22.h,
                              radius: BorderRadius.circular(10.h),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                width: 12.h,
                                height: 10.h,
                                alignment: Alignment.center,
                                decoration: AppDecoration.red.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Text(
                                  "lbl_b3".tr,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.arialOnPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 24.h,
                        width: 22.h,
                        margin: EdgeInsets.only(left: 12.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage8,
                              height: 22.h,
                              width: 22.h,
                              radius: BorderRadius.circular(10.h),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                width: 12.h,
                                height: 10.h,
                                alignment: Alignment.center,
                                decoration: AppDecoration.red.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Text(
                                  "lbl_b4".tr,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.arialOnPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 8.h),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 10.h,
                          height: 10.h,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 8.h),
                          decoration: AppDecoration.green1.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "lbl_c1".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.arialOnPrimary,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 34.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPlus,
                                height: 22.h,
                                width: 38.h,
                                alignment: Alignment.topCenter,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage9,
                                height: 12.h,
                                width: 14.h,
                                radius: BorderRadius.circular(6.h),
                                alignment: Alignment.bottomLeft,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage10,
                                height: 12.h,
                                width: 14.h,
                                radius: BorderRadius.circular(6.h),
                              ),
                              Container(
                                width: 12.h,
                                height: 10.h,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(right: 8.h),
                                decoration: AppDecoration.green1.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: Text(
                                  "lbl_c2".tr,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.arialOnPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 40.h,
                        width: 30.h,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPlus,
                              height: 28.h,
                              width: 20.h,
                              alignment: Alignment.topCenter,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage11,
                              height: 12.h,
                              width: 14.h,
                              radius: BorderRadius.circular(6.h),
                              alignment: Alignment.bottomLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage12,
                              height: 12.h,
                              width: 14.h,
                              radius: BorderRadius.circular(6.h),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 40.h,
                        width: 30.h,
                        margin: EdgeInsets.only(left: 4.h),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPlus,
                              height: 28.h,
                              width: 20.h,
                              alignment: Alignment.topCenter,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage13,
                              height: 12.h,
                              width: 14.h,
                              radius: BorderRadius.circular(6.h),
                              alignment: Alignment.bottomLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage14,
                              height: 12.h,
                              width: 14.h,
                              radius: BorderRadius.circular(6.h),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 10.h,
                        height: 10.h,
                        alignment: Alignment.center,
                        decoration: AppDecoration.fillLightBlueA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "lbl_d5".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.arialOnPrimary,
                        ),
                      ),
                      Container(
                        width: 10.h,
                        height: 10.h,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 8.h),
                        decoration: AppDecoration.fillLightBlueA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "lbl_d6".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.arialOnPrimary,
                        ),
                      ),
                      Container(
                        width: 10.h,
                        height: 10.h,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 8.h),
                        decoration: AppDecoration.fillLightBlueA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "lbl_d7".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.arialOnPrimary,
                        ),
                      ),
                      Container(
                        width: 10.h,
                        height: 10.h,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 8.h),
                        decoration: AppDecoration.fillLightBlueA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Text(
                          "lbl_d8".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.arialOnPrimary,
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
    );
  }

  /// Section Widget
  Widget _buildColumnjunior(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 8.h),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.h),
          BlocSelector<
            SeniorToNewHighestLevelOneBloc,
            SeniorToNewHighestLevelOneState,
            SeniorToNewHighestLevelOneModel?
          >(
            selector: (state) => state.seniorToNewHighestLevelOneModelObj,
            builder: (context, seniorToNewHighestLevelOneModelObj) {
              return ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 6.h);
                },
                itemCount:
                    seniorToNewHighestLevelOneModelObj
                        ?.listjuniorItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  ListjuniorItemModel model =
                      seniorToNewHighestLevelOneModelObj
                          ?.listjuniorItemList[index] ??
                      ListjuniorItemModel();
                  return ListjuniorItemWidget(model);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
