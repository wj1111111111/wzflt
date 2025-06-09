import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/level_bonus_bloc.dart';
import 'models/level_bonus_model.dart';
import 'models/listfour_one_item_model.dart';
import 'models/listlv1_one_item_model.dart';
import 'models/listvip_one_item_model.dart';
import 'widgets/listfour_one_item_widget.dart';
import 'widgets/listlv1_one_item_widget.dart';
import 'widgets/listvip_one_item_widget.dart';

class LevelBonusScreen extends StatelessWidget {
  const LevelBonusScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LevelBonusBloc>(
      create:
          (context) => LevelBonusBloc(
            LevelBonusState(levelBonusModelObj: LevelBonusModel()),
          )..add(LevelBonusInitialEvent()),
      child: LevelBonusScreen(),
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
                spacing: 12,
                children: [
                  _buildStackclose(context),
                  _buildListfourone(context),
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
  Widget _buildStackclose(BuildContext context) {
    return SizedBox(
      height: 542.h,
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
                      decoration: AppDecoration.gradientOrangeToOrange.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img3,
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
                          imagePath: ImageConstant.img74x344,
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
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 82.h),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 18.h),
              decoration: AppDecoration.gradientGrayToGray90001.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(right: 8.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCloseGray90023,
                          height: 36.h,
                          width: 36.h,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: 260.h,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_jbet882".tr,
                                    style:
                                        CustomTextStyles.titleSmallAmber30002,
                                  ),
                                  TextSpan(
                                    text: "msg_introducing_vip".tr,
                                    style: CustomTextStyles.titleSmallBlack_1,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "msg_event_attendees".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                  SizedBox(height: 10.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_how_to_get_vip_upgrade".tr,
                          style: CustomTextStyles.labelLargeAmber30002_1,
                        ),
                        TextSpan(text: " "),
                        TextSpan(
                          text: "msg_you_can_collect".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img1Onprimary14x12,
                          height: 14.h,
                          width: 12.h,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "msg_event_description".tr,
                              style: CustomTextStyles.titleSmallBlack,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "msg_1_the_vip_level".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelLarge!.copyWith(height: 1.17),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1224,
            height: 32.h,
            width: 12.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 26.h, top: 64.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1224,
            height: 32.h,
            width: 12.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 64.h, right: 26.h),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10.h),
                BlocSelector<LevelBonusBloc, LevelBonusState, LevelBonusModel?>(
                  selector: (state) => state.levelBonusModelObj,
                  builder: (context, levelBonusModelObj) {
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 4.h);
                      },
                      itemCount:
                          levelBonusModelObj?.listvipOneItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        ListvipOneItemModel model =
                            levelBonusModelObj?.listvipOneItemList[index] ??
                            ListvipOneItemModel();
                        return ListvipOneItemWidget(model);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1224,
            height: 38.h,
            width: 12.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 26.h, bottom: 206.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1224,
            height: 38.h,
            width: 12.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(right: 26.h, bottom: 206.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListfourone(BuildContext context) {
    return BlocSelector<LevelBonusBloc, LevelBonusState, LevelBonusModel?>(
      selector: (state) => state.levelBonusModelObj,
      builder: (context, levelBonusModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 10.h);
          },
          itemCount: levelBonusModelObj?.listfourOneItemList.length ?? 0,
          itemBuilder: (context, index) {
            ListfourOneItemModel model =
                levelBonusModelObj?.listfourOneItemList[index] ??
                ListfourOneItemModel();
            return ListfourOneItemWidget(model);
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
                BlocSelector<LevelBonusBloc, LevelBonusState, LevelBonusModel?>(
                  selector: (state) => state.levelBonusModelObj,
                  builder: (context, levelBonusModelObj) {
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 4.h);
                      },
                      itemCount:
                          levelBonusModelObj?.listlv1OneItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Listlv1OneItemModel model =
                            levelBonusModelObj?.listlv1OneItemList[index] ??
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
