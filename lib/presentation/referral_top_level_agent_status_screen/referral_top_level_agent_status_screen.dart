import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/referral_top_level_agent_status_bloc.dart';
import 'models/gridregistratio_item_model.dart';
import 'models/listinvite_one_item_model.dart';
import 'models/referral_top_level_agent_status_model.dart';
import 'models/slidermybenefit_item_model.dart';
import 'widgets/gridregistratio_item_widget.dart';
import 'widgets/listinvite_one_item_widget.dart';
import 'widgets/slidermybenefit_item_widget.dart';

class ReferralTopLevelAgentStatusScreen extends StatelessWidget {
  const ReferralTopLevelAgentStatusScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReferralTopLevelAgentStatusBloc>(
      create:
          (context) => ReferralTopLevelAgentStatusBloc(
            ReferralTopLevelAgentStatusState(
              referralTopLevelAgentStatusModelObj:
                  ReferralTopLevelAgentStatusModel(),
            ),
          )..add(ReferralTopLevelAgentStatusInitialEvent()),
      child: ReferralTopLevelAgentStatusScreen(),
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
                        _buildStackmybenefits(context),
                        SizedBox(height: 4.h),
                        Text(
                          "msg_agent_tier_requirements".tr,
                          style: CustomTextStyles.bodyMediumLightgreenA700
                              .copyWith(decoration: TextDecoration.underline),
                        ),
                        SizedBox(height: 14.h),
                        _buildStacksharewith(context),
                        SizedBox(height: 10.h),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.h,
                            vertical: 14.h,
                          ),
                          decoration: AppDecoration.fs4bg.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector30x20,
                                    height: 30.h,
                                    width: 20.h,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 4.h),
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
                                margin: EdgeInsets.symmetric(horizontal: 40.h),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          width: double.maxFinite,
                                          padding: EdgeInsets.only(right: 16.h),
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
                                                padding: EdgeInsets.only(
                                                  right: 40.h,
                                                ),
                                                child: Text(
                                                  "lbl_today_s_income".tr,
                                                  style:
                                                      CustomTextStyles
                                                          .bodyMediumBluegray400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgProfile,
                                      height: 16.h,
                                      width: 16.h,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12.h),
                              _buildStackregistrati(context),
                              SizedBox(height: 6.h),
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
                            ReferralTopLevelAgentStatusBloc,
                            ReferralTopLevelAgentStatusState,
                            ReferralTopLevelAgentStatusModel?
                          >(
                            selector:
                                (state) =>
                                    state.referralTopLevelAgentStatusModelObj,
                            builder: (
                              context,
                              referralTopLevelAgentStatusModelObj,
                            ) {
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Wrap(
                                  direction: Axis.horizontal,
                                  spacing: 10.h,
                                  children: List.generate(
                                    referralTopLevelAgentStatusModelObj
                                            ?.listinviteOneItemList
                                            .length ??
                                        0,
                                    (index) {
                                      ListinviteOneItemModel model =
                                          referralTopLevelAgentStatusModelObj
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
  Widget _buildStackmybenefits(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 21, sigmaY: 21),
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.h),
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Container(
              height: 240.h,
              width: double.maxFinite,
              decoration: AppDecoration.gradientPurpleACToLimeC.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: BlocBuilder<
                      ReferralTopLevelAgentStatusBloc,
                      ReferralTopLevelAgentStatusState
                    >(
                      builder: (context, state) {
                        return CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 152.h,
                            initialPage: 0,
                            autoPlay: true,
                            viewportFraction: 1.0,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              context
                                  .read<ReferralTopLevelAgentStatusBloc>()
                                  .add(ChangeSliderIndexEvent(value: index));
                            },
                          ),
                          itemCount:
                              state
                                  .referralTopLevelAgentStatusModelObj
                                  ?.slidermybenefitItemList
                                  .length ??
                              0,
                          itemBuilder: (context, index, realIndex) {
                            SlidermybenefitItemModel model =
                                state
                                    .referralTopLevelAgentStatusModelObj
                                    ?.slidermybenefitItemList[index] ??
                                SlidermybenefitItemModel();
                            return SlidermybenefitItemWidget(model);
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 10.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              Text(
                                "lbl_my_agent_tier".tr,
                                style: CustomTextStyles.titleSmall15,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 18.h),
                                padding: EdgeInsets.symmetric(horizontal: 8.h),
                                decoration: AppDecoration.fillDeepPurpleA
                                    .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder10,
                                    ),
                                child: Text(
                                  "lbl_master_agent_i".tr,
                                  textAlign: TextAlign.center,
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
                        SizedBox(height: 16.h),
                        Text(
                          "msg_you_have_reached".tr,
                          style: CustomTextStyles.titleSmallIndigoA10001,
                        ),
                        Spacer(),
                        SizedBox(
                          height: 5.h,
                          child: AnimatedSmoothIndicator(
                            activeIndex: 0,
                            count: 4,
                            effect: ScrollingDotsEffect(
                              spacing: 5,
                              activeDotColor: theme.colorScheme.onPrimary,
                              dotColor: theme.colorScheme.onPrimary.withValues(
                                alpha: 0.3,
                              ),
                              dotHeight: 5.h,
                              dotWidth: 5.h,
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
  Widget _buildStackregistrati(BuildContext context) {
    return SizedBox(
      height: 262.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          BlocSelector<
            ReferralTopLevelAgentStatusBloc,
            ReferralTopLevelAgentStatusState,
            ReferralTopLevelAgentStatusModel?
          >(
            selector: (state) => state.referralTopLevelAgentStatusModelObj,
            builder: (context, referralTopLevelAgentStatusModelObj) {
              return ResponsiveGridListBuilder(
                minItemWidth: 1,
                minItemsPerRow: 2,
                maxItemsPerRow: 2,
                horizontalGridSpacing: 8.h,
                verticalGridSpacing: 8.h,
                builder:
                    (context, items) => ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      children: items,
                    ),
                gridItems: List.generate(
                  referralTopLevelAgentStatusModelObj
                          ?.gridregistratioItemList
                          .length ??
                      0,
                  (index) {
                    GridregistratioItemModel model =
                        referralTopLevelAgentStatusModelObj
                            ?.gridregistratioItemList[index] ??
                        GridregistratioItemModel();
                    return GridregistratioItemWidget(model);
                  },
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.only(bottom: 68.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Container(
                height: 58.h,
                width: 160.h,
                decoration: AppDecoration.gradientPinkToAmber.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Column(
                          spacing: 4,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "msg_bettingrebate_bonus2".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallOnPrimary_3,
                            ),
                            Text(
                              "lbl_599_000_00".tr,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.1,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgJb46x48,
                        height: 46.h,
                        width: 50.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
