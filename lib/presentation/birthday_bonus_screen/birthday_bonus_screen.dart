import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/birthday_bonus_bloc.dart';
import 'models/birthday_bonus_model.dart';
import 'models/listlv1_one_item_model.dart';
import 'models/listthree_one_item_model.dart';
import 'widgets/listlv1_one_item_widget.dart';
import 'widgets/listthree_one_item_widget.dart';

class BirthdayBonusScreen extends StatelessWidget {
  const BirthdayBonusScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BirthdayBonusBloc>(
      create:
          (context) => BirthdayBonusBloc(
            BirthdayBonusState(birthdayBonusModelObj: BirthdayBonusModel()),
          )..add(BirthdayBonusInitialEvent()),
      child: BirthdayBonusScreen(),
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
              padding: EdgeInsets.only(left: 14.h, top: 6.h, right: 14.h),
              child: Column(
                spacing: 16,
                children: [
                  _buildStackthreeone(context),
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
  Widget _buildStackthreeone(BuildContext context) {
    return SizedBox(
      height: 544.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: BlocSelector<
              BirthdayBonusBloc,
              BirthdayBonusState,
              BirthdayBonusModel?
            >(
              selector: (state) => state.birthdayBonusModelObj,
              builder: (context, birthdayBonusModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10.h);
                  },
                  itemCount:
                      birthdayBonusModelObj?.listthreeOneItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ListthreeOneItemModel model =
                        birthdayBonusModelObj?.listthreeOneItemList[index] ??
                        ListthreeOneItemModel();
                    return ListthreeOneItemWidget(model);
                  },
                );
              },
            ),
          ),
          Container(
            height: 228.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 18.h,
                  ),
                  decoration: AppDecoration.gradientGrayToGray900011.copyWith(
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
                              imagePath: ImageConstant.imgCloseGray90023,
                              height: 36.h,
                              width: 36.h,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 10.h,
                                  bottom: 4.h,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_how_to_get".tr,
                                        style:
                                            CustomTextStyles.titleSmallBlack_1,
                                      ),
                                      TextSpan(
                                        text: "msg_vip_birthday_bonus".tr,
                                        style:
                                            CustomTextStyles
                                                .titleSmallAmber30002,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 282.h,
                        child: Text(
                          "msg_provide_a_photo".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelLarge!.copyWith(
                            height: 1.17,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        "msg_collection_time3".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelLarge!.copyWith(
                          height: 1.17,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      SizedBox(
                        height: 22.h,
                        width: 218.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_apply_now".tr,
                                      style: CustomTextStyles.titleSmallBlack_1,
                                    ),
                                    TextSpan(
                                      text: "lbl_customer".tr,
                                      style: CustomTextStyles
                                          .titleSmallLightblue500
                                          .copyWith(
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgPlay,
                              height: 20.h,
                              width: 22.h,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.h),
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
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 26.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
              ],
            ),
          ),
        ],
      ),
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
                  BirthdayBonusBloc,
                  BirthdayBonusState,
                  BirthdayBonusModel?
                >(
                  selector: (state) => state.birthdayBonusModelObj,
                  builder: (context, birthdayBonusModelObj) {
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 4.h);
                      },
                      itemCount:
                          birthdayBonusModelObj?.listlv1OneItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Listlv1OneItemModel model =
                            birthdayBonusModelObj?.listlv1OneItemList[index] ??
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
