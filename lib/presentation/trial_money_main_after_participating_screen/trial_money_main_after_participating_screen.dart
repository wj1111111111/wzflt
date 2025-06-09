import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/trial_money_main_after_participating_bloc.dart';
import 'models/gridgoodluck_item_model.dart';
import 'models/trial_money_main_after_participating_model.dart';
import 'widgets/gridgoodluck_item_widget.dart';

class TrialMoneyMainAfterParticipatingScreen extends StatelessWidget {
  const TrialMoneyMainAfterParticipatingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TrialMoneyMainAfterParticipatingBloc>(
      create:
          (context) => TrialMoneyMainAfterParticipatingBloc(
            TrialMoneyMainAfterParticipatingState(
              trialMoneyMainAfterParticipatingModelObj:
                  TrialMoneyMainAfterParticipatingModel(),
            ),
          )..add(TrialMoneyMainAfterParticipatingInitialEvent()),
      child: TrialMoneyMainAfterParticipatingScreen(),
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
              height: 884.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img1a0990626aace05,
                    height: 688.h,
                    width: double.maxFinite,
                    alignment: Alignment.topCenter,
                  ),
                  Container(
                    height: 884.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 794.h,
                            decoration: AppDecoration.stack380,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Text(
                                  "msg_experience_bonus2".tr,
                                  style:
                                      CustomTextStyles.titleMediumSFProText_1,
                                ),
                                _buildAppbar(context),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img3288x374,
                          height: 288.h,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(bottom: 22.h),
                        ),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.h,
                            vertical: 78.h,
                          ),
                          decoration: AppDecoration.column381,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 102.h),
                              _buildOne(context),
                            ],
                          ),
                        ),
                        _buildStackgoodluck(context),
                        _buildColumnviewone(context),
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
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 58.h,
      leadingWidth: 21.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        height: 12.h,
        width: 6.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "msg_experience_bonus2".tr,
        margin: EdgeInsets.only(left: 9.h),
      ),
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(left: 6.h),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 10.h),
          borderRadius: BorderRadiusStyle.circleBorder24,
        ),
        child: Container(
          height: 194.h,
          width: double.maxFinite,
          decoration: AppDecoration.outline18.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder24,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 26.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "lbl_rules".tr.toUpperCase(),
                      style: CustomTextStyles.titleSmallAmber10001,
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(left: 2.h),
                      child: Column(
                        spacing: 6,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_1_the_bonus_for".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallAmber10001
                                .copyWith(height: 1.17),
                          ),
                          Text(
                            "msg_2_this_activity".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallAmber10001
                                .copyWith(height: 1.17),
                          ),
                          Text(
                            "msg_3_rewards_earned".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallAmber10001
                                .copyWith(height: 1.17),
                          ),
                          Text(
                            "msg_4_exclusive_for".tr,
                            style: CustomTextStyles.bodySmallAmber10001,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                decoration: AppDecoration.column383,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup2131330299,
                      height: 188.h,
                      width: double.maxFinite,
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
  Widget _buildStackgoodluck(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 344.h,
        margin: EdgeInsets.only(left: 18.h, top: 236.h, right: 10.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage1284,
              height: 344.h,
              width: 344.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.h, right: 26.h),
              child: BlocSelector<
                TrialMoneyMainAfterParticipatingBloc,
                TrialMoneyMainAfterParticipatingState,
                TrialMoneyMainAfterParticipatingModel?
              >(
                selector:
                    (state) => state.trialMoneyMainAfterParticipatingModelObj,
                builder: (context, trialMoneyMainAfterParticipatingModelObj) {
                  return ResponsiveGridListBuilder(
                    minItemWidth: 1,
                    minItemsPerRow: 3,
                    maxItemsPerRow: 3,
                    horizontalGridSpacing: 12.h,
                    verticalGridSpacing: 12.h,
                    builder:
                        (context, items) => ListView(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          children: items,
                        ),
                    gridItems: List.generate(
                      trialMoneyMainAfterParticipatingModelObj
                              ?.gridgoodluckItemList
                              .length ??
                          0,
                      (index) {
                        GridgoodluckItemModel model =
                            trialMoneyMainAfterParticipatingModelObj
                                ?.gridgoodluckItemList[index] ??
                            GridgoodluckItemModel();
                        return GridgoodluckItemWidget(model);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnviewone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 72.h),
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: Column(
          spacing: 4,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage127301,
              height: 44.h,
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 76.h, right: 64.h),
            ),
            Container(
              height: 116.h,
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 6.h),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 106.h,
                      width: 284.h,
                      margin: EdgeInsets.only(top: 2.h),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 94.h,
                            width: 208.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(46.h),
                              gradient: LinearGradient(
                                begin: Alignment(0.5, 0),
                                end: Alignment(0.5, 1),
                                colors: [
                                  appTheme.lightGreen700,
                                  appTheme.green90022,
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 106.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img2106x282,
                                  height: 106.h,
                                  width: double.maxFinite,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.img1365564651,
                                  height: 70.h,
                                  width: 152.h,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img184x48,
                    height: 84.h,
                    width: 50.h,
                    alignment: Alignment.topRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage127301102x46,
                    height: 102.h,
                    width: 48.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
