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
import 'bloc/referral_logged_in_bloc.dart';
import 'models/gridregistratio_item_model.dart';
import 'models/list1306520_item_model.dart';
import 'models/listjunioragent_item_model.dart';
import 'models/listone_item_model.dart';
import 'models/listregistratio_item_model.dart';
import 'models/referral_logged_in_model.dart';
import 'models/slidermyagentti_item_model.dart';
import 'widgets/gridregistratio_item_widget.dart';
import 'widgets/list1306520_item_widget.dart';
import 'widgets/listjunioragent_item_widget.dart';
import 'widgets/listone_item_widget.dart';
import 'widgets/listregistratio_item_widget.dart';
import 'widgets/slidermyagentti_item_widget.dart';

class ReferralLoggedInScreen extends StatelessWidget {
  const ReferralLoggedInScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReferralLoggedInBloc>(
      create:
          (context) => ReferralLoggedInBloc(
            ReferralLoggedInState(
              referralLoggedInModelObj: ReferralLoggedInModel(),
            ),
          )..add(ReferralLoggedInInitialEvent()),
      child: ReferralLoggedInScreen(),
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
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 14.h,
                      right: 12.h,
                    ),
                    child: Column(
                      children: [
                        _buildStackmyagenttie(context),
                        SizedBox(height: 4.h),
                        Text(
                          "msg_agent_tier_requirements".tr,
                          style: CustomTextStyles.bodyMediumLightgreenA700
                              .copyWith(decoration: TextDecoration.underline),
                        ),
                        SizedBox(height: 14.h),
                        _buildStacksharewith(context),
                        SizedBox(height: 10.h),
                        _buildColumnvector(context),
                        SizedBox(height: 10.h),
                        _buildColumnprofile(context),
                        SizedBox(height: 10.h),
                        _buildColumnlineone(context),
                        SizedBox(height: 10.h),
                        _buildColumnprofile1(context),
                        SizedBox(height: 30.h),
                        _buildColumnlogowj93o(context),
                        SizedBox(height: 26.h),
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
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 14.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        spacing: 2,
                                        children: [
                                          Container(
                                            width: double.maxFinite,
                                            margin: EdgeInsets.symmetric(
                                              horizontal: 8.h,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgSubtract,
                                                  height: 20.h,
                                                  width: 22.h,
                                                ),
                                                Spacer(flex: 26),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .img1Black900,
                                                  height: 20.h,
                                                  width: 20.h,
                                                ),
                                                Spacer(flex: 30),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgFrame2131330279,
                                                  height: 20.h,
                                                  width: 22.h,
                                                ),
                                                Spacer(flex: 22),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgLockBlack900,
                                                  height: 20.h,
                                                  width: 22.h,
                                                ),
                                                Spacer(flex: 20),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .img1Black90020x18,
                                                  height: 20.h,
                                                  width: 20.h,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "lbl_invite".tr,
                                                style:
                                                    CustomTextStyles
                                                        .bodySmallOnPrimary_3,
                                              ),
                                              Text(
                                                "lbl_achievement".tr,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                              Text(
                                                "lbl_ranking2".tr,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                              Text(
                                                "lbl_member".tr,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                              Text(
                                                "lbl_report".tr,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                            ],
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle1944,
                                            height: 3.h,
                                            width: 36.h,
                                            radius: BorderRadius.circular(1.h),
                                            alignment: Alignment.centerLeft,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Column(
                                    spacing: 2,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.img120x18,
                                        height: 20.h,
                                        width: 18.h,
                                        margin: EdgeInsets.only(
                                          left: 8.h,
                                          right: 6.h,
                                        ),
                                      ),
                                      Text(
                                        "lbl_bonus3".tr,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 24.h,
                                    child: Column(
                                      spacing: 2,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 20.h,
                                          width: 20.h,
                                          decoration: AppDecoration
                                              .fillBluegray400
                                              .copyWith(
                                                borderRadius:
                                                    BorderRadiusStyle
                                                        .circleBorder10,
                                              ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "lbl6".tr,
                                                style:
                                                    CustomTextStyles
                                                        .labelLargeSFProRoundedGray90007,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "lbl_fqa".tr,
                                          style: theme.textTheme.bodySmall,
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackmyagenttie(BuildContext context) {
    return SizedBox(
      height: 240.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          BlocBuilder<ReferralLoggedInBloc, ReferralLoggedInState>(
            builder: (context, state) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  height: 240.h,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    context.read<ReferralLoggedInBloc>().add(
                      ChangeSliderIndexEvent(value: index),
                    );
                  },
                ),
                itemCount:
                    state
                        .referralLoggedInModelObj
                        ?.slidermyagenttiItemList
                        .length ??
                    0,
                itemBuilder: (context, index, realIndex) {
                  SlidermyagenttiItemModel model =
                      state
                          .referralLoggedInModelObj
                          ?.slidermyagenttiItemList[index] ??
                      SlidermyagenttiItemModel();
                  return SlidermyagenttiItemWidget(model);
                },
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BlocBuilder<ReferralLoggedInBloc, ReferralLoggedInState>(
              builder: (context, state) {
                return Container(
                  height: 5.h,
                  margin: EdgeInsets.only(bottom: 12.h),
                  child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count:
                        state
                            .referralLoggedInModelObj
                            ?.slidermyagenttiItemList
                            .length ??
                        0,
                    axisDirection: Axis.horizontal,
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
                );
              },
            ),
          ),
        ],
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
                          CustomImageView(
                            imagePath: ImageConstant.imgSave,
                            height: 32.h,
                            width: 34.h,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgFacebook,
                            height: 32.h,
                            width: 34.h,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup12060,
                            height: 32.h,
                            width: 34.h,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgTwitter1,
                            height: 32.h,
                            width: 34.h,
                            radius: BorderRadius.circular(16.h),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgLockLightBlue600,
                            height: 32.h,
                            width: 34.h,
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
  Widget _buildColumnvector(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
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
                    style: CustomTextStyles.titleLargeAmberA400,
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
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "lbl_70_577_000_00".tr,
                            style:
                                CustomTextStyles
                                    .headlineMediumArialOnPrimaryBold,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 40.h),
                            child: Text(
                              "lbl_today_s_income".tr,
                              style: CustomTextStyles.bodyMediumBluegray400,
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
          BlocSelector<
            ReferralLoggedInBloc,
            ReferralLoggedInState,
            ReferralLoggedInModel?
          >(
            selector: (state) => state.referralLoggedInModelObj,
            builder: (context, referralLoggedInModelObj) {
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
                  referralLoggedInModelObj?.gridregistratioItemList.length ?? 0,
                  (index) {
                    GridregistratioItemModel model =
                        referralLoggedInModelObj
                            ?.gridregistratioItemList[index] ??
                        GridregistratioItemModel();
                    return GridregistratioItemWidget(model);
                  },
                ),
              );
            },
          ),
          SizedBox(height: 6.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnprofile(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 20.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            VerticalDivider(
                              width: 5.h,
                              thickness: 5.h,
                              color: appTheme.lightGreenA700,
                              indent: 6.h,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "msg_agent_7_major_income".tr.toUpperCase(),
                                style: CustomTextStyles.titleLargeBlack,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: Text(
                              "msg_jbet88_new_referral".tr,
                              style: CustomTextStyles.bodyLargeAmberA400,
                            ),
                          ),
                        ),
                        Text(
                          "msg_enjoy_7_super_commissions".tr,
                          style: CustomTextStyles.bodyLargeBluegray400,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgProfile,
                  height: 16.h,
                  width: 16.h,
                  margin: EdgeInsets.only(top: 8.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 26.h),
          BlocSelector<
            ReferralLoggedInBloc,
            ReferralLoggedInState,
            ReferralLoggedInModel?
          >(
            selector: (state) => state.referralLoggedInModelObj,
            builder: (context, referralLoggedInModelObj) {
              return ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.h);
                },
                itemCount:
                    referralLoggedInModelObj?.listoneItemList.length ?? 0,
                itemBuilder: (context, index) {
                  ListoneItemModel model =
                      referralLoggedInModelObj?.listoneItemList[index] ??
                      ListoneItemModel();
                  return ListoneItemWidget(model);
                },
              );
            },
          ),
          SizedBox(height: 30.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
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
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
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
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
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
                                  decoration: AppDecoration
                                      .gradientLightBlueToBlueA
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
                                              radius: BorderRadius.circular(
                                                1.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPolygon53,
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
                                              imagePath:
                                                  ImageConstant.imgUpload,
                                              height: 22.h,
                                              width: 22.h,
                                              radius: BorderRadius.circular(
                                                1.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPolygon54,
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
                                                BorderRadiusStyle
                                                    .roundedBorder1,
                                          ),
                                      child: Text(
                                        "msg_master_agent_iii".tr,
                                        textAlign: TextAlign.left,
                                        style:
                                            CustomTextStyles
                                                .labelLargeOnPrimary_6,
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
                        SizedBox(height: 2.h),
                        Text(
                          "lbl_level_12".tr,
                          style: CustomTextStyles.labelMediumAmberA400,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_you_get".tr,
                                style: CustomTextStyles.labelMediumBluegray400,
                              ),
                              TextSpan(
                                text: "msg_0_4_form_level".tr,
                                style: CustomTextStyles.labelMediumRed40001,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 14.h),
                        Text(
                          "lbl_level_22".tr,
                          style: CustomTextStyles.labelMediumAmberA400,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_you_get".tr,
                                style: CustomTextStyles.labelMediumBluegray400,
                              ),
                              TextSpan(
                                text: "msg_0_3_form_level".tr,
                                style: CustomTextStyles.labelMediumRed40001,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "lbl_level_32".tr,
                          style: CustomTextStyles.labelMediumAmberA400,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_you_get".tr,
                                style: CustomTextStyles.labelMediumBluegray400,
                              ),
                              TextSpan(
                                text: "msg_0_2_form_level".tr,
                                style: CustomTextStyles.labelMediumRed40001,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 12.h),
                        Text(
                          "lbl_level_42".tr,
                          style: CustomTextStyles.labelMediumAmberA400,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_you_get".tr,
                                style: CustomTextStyles.labelMediumBluegray400,
                              ),
                              TextSpan(
                                text: "msg_0_1_form_level".tr,
                                style: CustomTextStyles.labelMediumRed40001,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
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
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
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
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
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
          ),
          SizedBox(height: 30.h),
          Text("lbl_betting_rebate".tr, style: CustomTextStyles.titleSmall15),
          SizedBox(height: 8.h),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 6.h),
            decoration: AppDecoration.fillGray800.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              spacing: 6,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_agent_tier".tr,
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                      Spacer(),
                      Text(
                        "lbl_lv_1".tr,
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "lbl_lv_2".tr,
                          style: CustomTextStyles.bodyMediumOnPrimary,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 22.h),
                        child: Text(
                          "lbl_lv_3".tr,
                          style: CustomTextStyles.bodyMediumOnPrimary,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 22.h),
                        child: Text(
                          "lbl_lv_4".tr,
                          style: CustomTextStyles.bodyMediumOnPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                BlocSelector<
                  ReferralLoggedInBloc,
                  ReferralLoggedInState,
                  ReferralLoggedInModel?
                >(
                  selector: (state) => state.referralLoggedInModelObj,
                  builder: (context, referralLoggedInModelObj) {
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 2.h);
                      },
                      itemCount:
                          referralLoggedInModelObj
                              ?.listjunioragentItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        ListjunioragentItemModel model =
                            referralLoggedInModelObj
                                ?.listjunioragentItemList[index] ??
                            ListjunioragentItemModel();
                        return ListjunioragentItemWidget(model);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "msg_different_agant".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall!.copyWith(height: 1.33),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnlineone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 22.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                VerticalDivider(
                  width: 5.h,
                  thickness: 5.h,
                  color: appTheme.lightGreenA700,
                ),
                Container(
                  width: 272.h,
                  margin: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "msg_rewards_released".tr.toUpperCase(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleLargeBlack.copyWith(
                      height: 1.10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          BlocSelector<
            ReferralLoggedInBloc,
            ReferralLoggedInState,
            ReferralLoggedInModel?
          >(
            selector: (state) => state.referralLoggedInModelObj,
            builder: (context, referralLoggedInModelObj) {
              return ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 8.h);
                },
                itemCount:
                    referralLoggedInModelObj?.listregistratioItemList.length ??
                    0,
                itemBuilder: (context, index) {
                  ListregistratioItemModel model =
                      referralLoggedInModelObj
                          ?.listregistratioItemList[index] ??
                      ListregistratioItemModel();
                  return ListregistratioItemWidget(model);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnprofile1(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 24.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.circleBorder14,
              ),
              child: Container(
                height: 160.h,
                width: double.maxFinite,
                decoration: AppDecoration.gradientIndigoAToDeepPurple.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder14,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    SizedBox(
                      height: 148.h,
                      width: 172.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage444,
                            height: 108.h,
                            width: double.maxFinite,
                            radius: BorderRadius.circular(12.h),
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(bottom: 10.h),
                          ),
                          Container(
                            height: 148.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage441,
                                  height: 148.h,
                                  width: double.maxFinite,
                                  radius: BorderRadius.circular(12.h),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgProfileOnprimary,
                                  height: 16.h,
                                  width: 18.h,
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 60.h),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(
                          left: 22.h,
                          top: 10.h,
                          right: 22.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_revenue_goals".tr,
                              style: CustomTextStyles.titleLargeBlack_1,
                            ),
                            SizedBox(height: 12.h),
                            Text(
                              "lbl_8_000_00".tr,
                              style: CustomTextStyles.headlineLargeYellowA70001,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_invite2".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  TextSpan(
                                    text: "lbl_12".tr,
                                    style:
                                        CustomTextStyles.titleSmallAmber70001,
                                  ),
                                  TextSpan(
                                    text: "msg_user_to_meet_the".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
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
          SizedBox(height: 10.h),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 6.h),
            decoration: AppDecoration.gradientPinkToBlue.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder14,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 8.h),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 74.h,
                        width: 82.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img920,
                              height: 8.h,
                              width: 12.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 22.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img920,
                              height: 8.h,
                              width: 12.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 28.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img935,
                              height: 10.h,
                              width: 12.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: 28.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage885,
                              height: 68.h,
                              width: double.maxFinite,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 124.h,
                          margin: EdgeInsets.only(left: 12.h, bottom: 6.h),
                          child: Text(
                            "msg_income_calculator".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleLargeBlack_1.copyWith(
                              height: 1.09,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "lbl_99918_000_00".tr,
                  style: CustomTextStyles.headlineLargeYellowA70001,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_invite2".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: "lbl_12".tr,
                            style: CustomTextStyles.titleSmallAmber70001,
                          ),
                          TextSpan(
                            text: "msg_user_to_meet_the".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 28.h),
                SizedBox(
                  width: double.maxFinite,
                  child: SliderTheme(
                    data: SliderThemeData(
                      trackShape: RoundedRectSliderTrackShape(),
                      activeTrackColor: appTheme.yellowA70001,
                      inactiveTrackColor: appTheme.black900.withValues(
                        alpha: 0.2,
                      ),
                      thumbShape: RoundSliderThumbShape(),
                    ),
                    child: Slider(
                      value: 22.34,
                      min: 0.0,
                      max: 100.0,
                      onChanged: (value) {},
                    ),
                  ),
                ),
                SizedBox(height: 14.h),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            "lbl_leaderboard".tr,
            style: CustomTextStyles.titleSmallIndigoA1000115,
          ),
          SizedBox(height: 6.h),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(12.h),
            decoration: AppDecoration.gradientLightBlueAToPurple.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder14,
            ),
            child: Column(
              spacing: 8,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "msg_who_received_the".tr,
                  style: CustomTextStyles.titleSmall15,
                ),
                BlocSelector<
                  ReferralLoggedInBloc,
                  ReferralLoggedInState,
                  ReferralLoggedInModel?
                >(
                  selector: (state) => state.referralLoggedInModelObj,
                  builder: (context, referralLoggedInModelObj) {
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 8.h);
                      },
                      itemCount:
                          referralLoggedInModelObj
                              ?.list1306520ItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        List1306520ItemModel model =
                            referralLoggedInModelObj
                                ?.list1306520ItemList[index] ??
                            List1306520ItemModel();
                        return List1306520ItemWidget(model);
                      },
                    );
                  },
                ),
                SizedBox(height: 4.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnlogowj93o(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 6.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogoWj93128x78,
            height: 28.h,
            width: 80.h,
          ),
          SizedBox(height: 6.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 2.h),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 18.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLogo1,
                          height: 12.h,
                          width: 64.h,
                          alignment: Alignment.bottomLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLogo2,
                          height: 12.h,
                          width: 64.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgJili,
                          height: 12.h,
                          width: 64.h,
                          alignment: Alignment.topCenter,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgYesbingo,
                          height: 12.h,
                          width: 64.h,
                          alignment: Alignment.topLeft,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLogo3,
                  height: 12.h,
                  width: 62.h,
                  alignment: Alignment.bottomCenter,
                ),
                Expanded(
                  child: Container(
                    height: 18.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 12.h,
                          width: 64.h,
                          alignment: Alignment.bottomLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLogo5,
                          height: 12.h,
                          width: 64.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgJdb,
                          height: 12.h,
                          width: 64.h,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 8.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          Container(
            height: 18.h,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 60.h, right: 58.h),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLogo7,
                  height: 12.h,
                  width: 64.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLogo6,
                  height: 12.h,
                  width: 64.h,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 22.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsOnprimary,
                  height: 12.h,
                  width: 64.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 6.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSexybcrt,
                  height: 12.h,
                  width: 64.h,
                  alignment: Alignment.topRight,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFc,
                  height: 12.h,
                  width: 64.h,
                  alignment: Alignment.topLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLogo212x62,
                  height: 12.h,
                  width: 64.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 30.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPg,
                  height: 12.h,
                  width: 64.h,
                  alignment: Alignment.topCenter,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPp2,
                  height: 12.h,
                  width: 64.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(right: 46.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 46.h),
          Text(
            "msg_this_site_offers".tr,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodySmall_1,
          ),
          SizedBox(height: 8.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_emall".tr,
                  style: theme.textTheme.bodySmall,
                ),
                TextSpan(text: " "),
                TextSpan(
                  text: "lbl_wj_gmail_com".tr,
                  style: CustomTextStyles.bodySmallLightgreenA700_1,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomIconButton(
                height: 30.h,
                width: 30.h,
                decoration: IconButtonStyleHelper.none,
                child: CustomImageView(imagePath: ImageConstant.imgMobile),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgUserBlueGray200,
                height: 30.h,
                width: 30.h,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgTrash,
                height: 30.h,
                width: 30.h,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFacebookGray90009,
                height: 30.h,
                width: 30.h,
              ),
              IconButton(
                onPressed: () {},
                constraints: BoxConstraints(minHeight: 30.h, minWidth: 30.h),
                padding: EdgeInsets.zero,
                icon: SizedBox(
                  width: 30.h,
                  height: 30.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imageNotFound,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLogovideo6,
                height: 30.h,
                width: 30.h,
              ),
              CustomIconButton(
                height: 30.h,
                width: 30.h,
                padding: EdgeInsets.all(10.h),
                decoration: IconButtonStyleHelper.fillBlueGray,
                child: CustomImageView(imagePath: ImageConstant.imgLogovideo7),
              ),
            ],
          ),
          SizedBox(height: 24.h),
          Text("msg_2022_wj_gmail_com".tr, style: theme.textTheme.bodySmall),
        ],
      ),
    );
  }
}
