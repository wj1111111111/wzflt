import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/weekly_rebate_eligible_bloc.dart';
import 'models/listlv1_one_item_model.dart';
import 'models/listthree_one_item_model.dart';
import 'models/weekly_rebate_eligible_model.dart';
import 'widgets/listlv1_one_item_widget.dart';
import 'widgets/listthree_one_item_widget.dart';

class WeeklyRebateEligibleScreen extends StatelessWidget {
  const WeeklyRebateEligibleScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WeeklyRebateEligibleBloc>(
      create:
          (context) => WeeklyRebateEligibleBloc(
            WeeklyRebateEligibleState(
              weeklyRebateEligibleModelObj: WeeklyRebateEligibleModel(),
            ),
          )..add(WeeklyRebateEligibleInitialEvent()),
      child: WeeklyRebateEligibleScreen(),
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
              padding: EdgeInsets.only(left: 14.h, top: 4.h, right: 14.h),
              child: Column(
                spacing: 10,
                children: [
                  _buildStack(context),
                  _buildListthreeone(context),
                  _buildColumnupgradevi(context),
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
        text: "lbl_vip".tr,
        margin: EdgeInsets.only(left: 9.h),
      ),
      actions: [
        AppbarTrailingImage(imagePath: ImageConstant.imgLock),
        AppbarSubtitleThree(
          text: "lbl_19800_00".tr,
          margin: EdgeInsets.only(left: 8.h),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.img114x16,
          height: 14.h,
          width: 16.h,
          margin: EdgeInsets.only(left: 11.h, right: 20.h),
        ),
      ],
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return SizedBox(
      height: 706.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 74.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.maxFinite,
                      decoration: AppDecoration.gradientTealAToOrange.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img370x344,
                            height: 70.h,
                            width: double.maxFinite,
                            radius: BorderRadius.circular(8.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 74.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img8,
                          height: 74.h,
                          width: double.maxFinite,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCloseOnprimary,
                          height: 24.h,
                          width: 34.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 16.h),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.only(top: 80.h),
              color: appTheme.blueGray90016,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: appTheme.blueGray90012, width: 1.h),
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Container(
                height: 370.h,
                decoration: AppDecoration.outlineBluegray900122.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Opacity(
                      opacity: 0.1,
                      child: CustomImageView(
                        imagePath: ImageConstant.img015b2e1a09d09e1,
                        height: 174.h,
                        width: 178.h,
                        radius: BorderRadius.circular(8.h),
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(bottom: 22.h),
                      padding: EdgeInsets.symmetric(horizontal: 4.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomOutlinedButton(
                            text: "lbl_claim_now".tr,
                            buttonStyle: CustomButtonStyles.none,
                            decoration:
                                CustomButtonStyles
                                    .gradientAmberToAmberDecoration,
                          ),
                          SizedBox(height: 8.h),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 14.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgClockBlueGray400,
                                  height: 12.h,
                                  width: 12.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text(
                                    "msg_claim_settlement".tr,
                                    style:
                                        CustomTextStyles
                                            .titleSmallBluegray400_1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Text(
                                "msg_2023_11_13_06_00".tr,
                                style: CustomTextStyles.titleSmallBluegray400_1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 24.h, right: 34.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_upcoming".tr,
                                style: CustomTextStyles.titleMediumBlack_1,
                              ),
                              TextSpan(
                                text: "lbl_cashback_amount".tr,
                                style: CustomTextStyles.titleMediumAmber30002,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp42x44,
                      height: 42.h,
                      width: 46.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 10.h, top: 12.h),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 204.h,
                        margin: EdgeInsets.only(top: 52.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: double.maxFinite,
                                margin: EdgeInsets.only(left: 4.h, right: 6.h),
                                decoration: AppDecoration.fillGray90027
                                    .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderBL5,
                                    ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: double.maxFinite,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 10.h,
                                      ),
                                      decoration: AppDecoration
                                          .outlineGreen90007
                                          .copyWith(
                                            borderRadius:
                                                BorderRadiusStyle
                                                    .customBorderBL5,
                                          ),
                                      child: Column(
                                        spacing: 2,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 14.h),
                                          SizedBox(
                                            height: 28.h,
                                            width: double.maxFinite,
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        "lbl_your_level3"
                                                                            .tr,
                                                                    style:
                                                                        CustomTextStyles
                                                                            .titleSmallBlack_1,
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        "lbl_v4"
                                                                            .tr,
                                                                    style:
                                                                        CustomTextStyles
                                                                            .titleSmallAmberA400,
                                                                  ),
                                                                ],
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                            ),
                                                            RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        "lbl_13_cashback"
                                                                            .tr,
                                                                    style:
                                                                        CustomTextStyles
                                                                            .titleSmallLightgreenA700_1,
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        "lbl_max_20"
                                                                            .tr,
                                                                    style:
                                                                        theme
                                                                            .textTheme
                                                                            .labelLarge,
                                                                  ),
                                                                ],
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgV4,
                                                  height: 28.h,
                                                  width: 30.h,
                                                  margin: EdgeInsets.only(
                                                    left: 90.h,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "msg_statistics_time".tr,
                                            style:
                                                CustomTextStyles
                                                    .labelLargeLightblue500,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 2.h),
                                  ],
                                ),
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
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10.h,
                                          ),
                                          decoration: AppDecoration.row149,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  spacing: 2,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 18.h,
                                                      width: 156.h,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          RichText(
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      "lbl_expected_to_win"
                                                                          .tr,
                                                                  style:
                                                                      theme
                                                                          .textTheme
                                                                          .titleSmall,
                                                                ),
                                                                TextSpan(
                                                                  text: " ",
                                                                ),
                                                                TextSpan(
                                                                  text: "    ",
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      "lbl_453"
                                                                          .tr,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .titleSmallYellow50002,
                                                                ),
                                                              ],
                                                            ),
                                                            textAlign:
                                                                TextAlign.left,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgB928f94165e9728,
                                                            height: 16.h,
                                                            width: 18.h,
                                                            alignment:
                                                                Alignment
                                                                    .centerRight,
                                                            margin:
                                                                EdgeInsets.only(
                                                                  right: 26.h,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      "msg_next_update_amount_2023_01_02"
                                                          .tr,
                                                      style:
                                                          CustomTextStyles
                                                              .labelLargeLightblue500,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .imgGroup120051,
                                                height: 64.h,
                                                width: 72.h,
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
                            Container(
                              height: 46.h,
                              width: 334.h,
                              decoration: BoxDecoration(
                                color: appTheme.green90008,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(6.h),
                                  bottomLeft: Radius.circular(2.h),
                                  bottomRight: Radius.circular(2.h),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.black900.withValues(
                                      alpha: 0.25,
                                    ),
                                    spreadRadius: 2.h,
                                    blurRadius: 2.h,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 278.h,
                                margin: EdgeInsets.only(left: 4.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 12.h,
                                ),
                                decoration: AppDecoration.column150,
                                child: Column(
                                  spacing: 6,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 16.h,
                                      width: 194.h,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            decoration: AppDecoration.fs,
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "lbl_you_will_win".tr,
                                                    style:
                                                        theme
                                                            .textTheme
                                                            .titleMedium,
                                                  ),
                                                  TextSpan(
                                                    text: "lbl8".tr,
                                                    style:
                                                        CustomTextStyles
                                                            .titleMediumYellow50002_1,
                                                  ),
                                                ],
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .imgB928f94165e9728,
                                            height: 16.h,
                                            width: 18.h,
                                            alignment: Alignment.centerRight,
                                            margin: EdgeInsets.only(
                                              right: 80.h,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: AppDecoration.fs,
                                      child: Text(
                                        "msg_cashback_this_week".tr,
                                        textAlign: TextAlign.left,
                                        style:
                                            CustomTextStyles
                                                .labelLargeOnPrimary_6,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 66.h,
                                width: 78.h,
                                margin: EdgeInsets.only(right: 6.h),
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.img003c43379e03cb1,
                                      height: 22.h,
                                      width: 52.h,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.img0867343e1b2a94d,
                                      height: 66.h,
                                      width: 68.h,
                                      alignment: Alignment.centerRight,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 52.h,
                                width: 52.h,
                                margin: EdgeInsets.only(top: 44.h),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgDa058ed88b650d8,
                                      height: 52.h,
                                      width: double.maxFinite,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant
                                              .imgSettingsOnprimary10x34,
                                      height: 10.h,
                                      width: 36.h,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 18.h,
                                        right: 4.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 20.h,
                                width: 36.h,
                                margin: EdgeInsets.only(left: 126.h, top: 82.h),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: appTheme.redA700,
                                    width: 1.h,
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
                      child: Container(
                        margin: EdgeInsets.only(top: 60.h),
                        padding: EdgeInsets.symmetric(horizontal: 26.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup1224,
                              height: 32.h,
                              width: 12.h,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup1224,
                              height: 32.h,
                              width: 12.h,
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
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
            decoration: AppDecoration.gradientGrayToGray90001.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              spacing: 2,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 14.h,
                        width: 12.h,
                        margin: EdgeInsets.only(top: 2.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgTelevision,
                              height: 14.h,
                              width: 12.h,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: 8.h,
                                margin: EdgeInsets.only(top: 2.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgVectorBlueGray90011,
                                      height: 1.h,
                                      width: double.maxFinite,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant
                                              .imgVectorBlueGray900111x6,
                                      height: 1.h,
                                      width: double.maxFinite,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant
                                              .imgVectorBlueGray900111x6,
                                      height: 1.h,
                                      width: double.maxFinite,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_terms_and_rules".tr,
                            style: CustomTextStyles.titleSmallBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_1_the_weekly_cashback".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: "msg_cashback_collection".tr,
                        style: CustomTextStyles.labelLargeBlue400_1,
                      ),
                      TextSpan(
                        text: "msg_next_monday_00_00".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: "msg_maximum_cashback".tr,
                        style: CustomTextStyles.labelLargeBlue400_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                  maxLines: 13,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1224,
            height: 32.h,
            width: 12.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 26.h, bottom: 230.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1224,
            height: 32.h,
            width: 12.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(right: 26.h, bottom: 230.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListthreeone(BuildContext context) {
    return BlocSelector<
      WeeklyRebateEligibleBloc,
      WeeklyRebateEligibleState,
      WeeklyRebateEligibleModel?
    >(
      selector: (state) => state.weeklyRebateEligibleModelObj,
      builder: (context, weeklyRebateEligibleModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 8.h);
          },
          itemCount:
              weeklyRebateEligibleModelObj?.listthreeOneItemList.length ?? 0,
          itemBuilder: (context, index) {
            ListthreeOneItemModel model =
                weeklyRebateEligibleModelObj?.listthreeOneItemList[index] ??
                ListthreeOneItemModel();
            return ListthreeOneItemWidget(model);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnupgradevi(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 38.h,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle568,
                  height: 38.h,
                  width: double.maxFinite,
                  radius: BorderRadius.vertical(bottom: Radius.circular(6.h)),
                ),
                Container(
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "msg_upgrade_vip_requirements".tr,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  decoration: AppDecoration.fs1.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL5,
                  ),
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 34.h,
                        margin: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "lbl_vip_level".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.labelLargeOnPrimaryBlack_1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: appTheme.lightGreen9007f,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClose20x34,
                              height: 20.h,
                              width: 36.h,
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              child: Text(
                                "lbl_deposit_amount".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeOnPrimary_6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: appTheme.lightGreen9007f,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 4.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img8411641,
                                  height: 16.h,
                                  width: 22.h,
                                  margin: EdgeInsets.only(right: 14.h),
                                ),
                                Text(
                                  "lbl_bet_amount".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.labelLargeOnPrimary_6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: appTheme.lightGreen9007f,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(horizontal: 4.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img20x26,
                                height: 20.h,
                                width: 28.h,
                                margin: EdgeInsets.only(right: 10.h),
                              ),
                              Text(
                                "lbl_upgrade_bonus".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeOnPrimary_6,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.h,
                          color: appTheme.lightGreen9007f,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBn01,
                              height: 20.h,
                              width: 28.h,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "lbl_weekly_cashback".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeOnPrimary_6,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                BlocSelector<
                  WeeklyRebateEligibleBloc,
                  WeeklyRebateEligibleState,
                  WeeklyRebateEligibleModel?
                >(
                  selector: (state) => state.weeklyRebateEligibleModelObj,
                  builder: (context, weeklyRebateEligibleModelObj) {
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 4.h);
                      },
                      itemCount:
                          weeklyRebateEligibleModelObj
                              ?.listlv1OneItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        Listlv1OneItemModel model =
                            weeklyRebateEligibleModelObj
                                ?.listlv1OneItemList[index] ??
                            Listlv1OneItemModel();
                        return Listlv1OneItemWidget(model);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
}
