import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/referral_bring_a_friend_bloc.dart';
import 'models/gridqualifiedbo_item_model.dart';
import 'models/referral_bring_a_friend_model.dart';
import 'widgets/gridqualifiedbo_item_widget.dart';

class ReferralBringAFriendScreen extends StatelessWidget {
  const ReferralBringAFriendScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReferralBringAFriendBloc>(
      create:
          (context) => ReferralBringAFriendBloc(
            ReferralBringAFriendState(
              referralBringAFriendModelObj: ReferralBringAFriendModel(),
            ),
          )..add(ReferralBringAFriendInitialEvent()),
      child: ReferralBringAFriendScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: appTheme.gray900B2,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.outline,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(8.h),
            child: Column(
              spacing: 30,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 494.h,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      _buildStackone(context),
                      SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          spacing: 14,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8.h),
                              decoration: AppDecoration.outlineDeepOrange,
                              child: Text(
                                "msg_invitation_bonus".tr,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.headlineLargeOrange50,
                              ),
                            ),
                            Container(
                              height: 460.h,
                              width: double.maxFinite,
                              margin: EdgeInsets.only(left: 6.h),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  _buildColumnone(context),
                                  _buildStackpone(context),
                                  _buildStackbettingreb(context),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                CustomIconButton(
                  height: 40.h,
                  width: 40.h,
                  decoration: IconButtonStyleHelper.none,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCloseOnprimary40x40,
                  ),
                ),
                SizedBox(height: 6.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 320.h,
        margin: EdgeInsets.only(top: 42.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 314.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img,
                    height: 310.h,
                    width: double.maxFinite,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 32.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img142,
                            height: 16.h,
                            width: 18.h,
                            margin: EdgeInsets.only(left: 14.h),
                          ),
                          SizedBox(height: 2.h),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.img142,
                              height: 6.h,
                              width: 8.h,
                              margin: EdgeInsets.only(left: 46.h),
                            ),
                          ),
                          SizedBox(height: 12.h),
                          CustomImageView(
                            imagePath: ImageConstant.img142,
                            height: 12.h,
                            width: 14.h,
                          ),
                          SizedBox(height: 8.h),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.img142,
                              height: 6.h,
                              width: 8.h,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 20.h),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.img142,
              height: 12.h,
              width: 14.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 42.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 20.h),
      decoration: AppDecoration.column2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 12.h),
            decoration: AppDecoration.gradientGreenAToTeal.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL10,
            ),
            child: Column(
              spacing: 14,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "msg_unlimited_referral".tr,
                  style: theme.textTheme.titleSmall,
                ),
                BlocSelector<
                  ReferralBringAFriendBloc,
                  ReferralBringAFriendState,
                  ReferralBringAFriendModel?
                >(
                  selector: (state) => state.referralBringAFriendModelObj,
                  builder: (context, referralBringAFriendModelObj) {
                    return ResponsiveGridListBuilder(
                      minItemWidth: 1,
                      minItemsPerRow: 2,
                      maxItemsPerRow: 2,
                      horizontalGridSpacing: 6.h,
                      verticalGridSpacing: 6.h,
                      builder:
                          (context, items) => ListView(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            children: items,
                          ),
                      gridItems: List.generate(
                        referralBringAFriendModelObj
                                ?.gridqualifiedboItemList
                                .length ??
                            0,
                        (index) {
                          GridqualifiedboItemModel model =
                              referralBringAFriendModelObj
                                  ?.gridqualifiedboItemList[index] ??
                              GridqualifiedboItemModel();
                          return GridqualifiedboItemWidget(model);
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackpone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 182.h,
        margin: EdgeInsets.only(left: 16.h, right: 6.h),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgP,
              height: 20.h,
              width: 22.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 24.h, top: 44.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgJb,
              height: 42.h,
              width: 46.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 24.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.img13,
              height: 182.h,
              width: double.maxFinite,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackbettingreb(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(left: 14.h, top: 178.h, right: 14.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Container(
          height: 56.h,
          padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 2.h),
          decoration: AppDecoration.gradientGreenAToTeal700.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL10,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 6.h),
                  child: Text(
                    "msg_betting_rebate_bonus".tr,
                    style: CustomTextStyles.titleMediumTeal90001,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 6.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_up_to".tr,
                        style: CustomTextStyles.labelLargeTeal90002,
                      ),
                      TextSpan(
                        text: "lbl_4_levels".tr,
                        style: CustomTextStyles.labelLargeYellowA200,
                      ),
                      TextSpan(text: " "),
                      TextSpan(
                        text: "msg_of_rewards_can".tr,
                        style: CustomTextStyles.labelLargeTeal90002,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage539,
                height: 32.h,
                width: 34.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 6.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
