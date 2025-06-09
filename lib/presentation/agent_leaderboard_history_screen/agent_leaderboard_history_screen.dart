import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/agent_leaderboard_history_bloc.dart';
import 'models/agent_leaderboard_history_model.dart';
import 'models/listnine_item_model.dart';
import 'widgets/listnine_item_widget.dart';

class AgentLeaderboardHistoryScreen extends StatelessWidget {
  const AgentLeaderboardHistoryScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AgentLeaderboardHistoryBloc>(
      create:
          (context) => AgentLeaderboardHistoryBloc(
            AgentLeaderboardHistoryState(
              agentLeaderboardHistoryModelObj: AgentLeaderboardHistoryModel(),
            ),
          )..add(AgentLeaderboardHistoryInitialEvent()),
      child: AgentLeaderboardHistoryScreen(),
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
              height: 782.h,
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 120.h,
                      width: 120.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer.withValues(
                          alpha: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(60.h),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      spacing: 4,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGrassCpirlbv1,
                              height: 18.h,
                              width: 16.h,
                            ),
                            Text(
                              "lbl_agent_jackpot".tr.toUpperCase(),
                              style: CustomTextStyles.titleSmallOrange200,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGrassCpirlbv2,
                              height: 18.h,
                              width: 16.h,
                            ),
                          ],
                        ),
                        Text(
                          "lbl_15_666_523_70".tr,
                          style: CustomTextStyles.headlineSmallAmber60001,
                        ),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(vertical: 18.h),
                          decoration: AppDecoration.fs4bg.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "msg_2025_03_02_2025_04_12".tr,
                                style: CustomTextStyles.bodySmallOnPrimary_4,
                              ),
                              SizedBox(
                                height: 516.h,
                                width: double.maxFinite,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse626,
                                      height: 302.h,
                                      width: 90.h,
                                      alignment: Alignment.topRight,
                                    ),
                                    _buildListnine(context),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                        width: double.maxFinite,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [_buildRow(context)],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12.h),
                              _buildRowviewtwo(context),
                              SizedBox(height: 12.h),
                              _buildRow14th(context),
                              SizedBox(height: 54.h),
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
      ),
      bottomNavigationBar: _buildColumnspacer(context),
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
        text: "msg_history_ranking".tr,
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
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildListnine(BuildContext context) {
    return BlocSelector<
      AgentLeaderboardHistoryBloc,
      AgentLeaderboardHistoryState,
      AgentLeaderboardHistoryModel?
    >(
      selector: (state) => state.agentLeaderboardHistoryModelObj,
      builder: (context, agentLeaderboardHistoryModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 12.h);
          },
          itemCount:
              agentLeaderboardHistoryModelObj?.listnineItemList.length ?? 0,
          itemBuilder: (context, index) {
            ListnineItemModel model =
                agentLeaderboardHistoryModelObj?.listnineItemList[index] ??
                ListnineItemModel();
            return ListnineItemWidget(model);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 24.h),
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("lbl11".tr, style: theme.textTheme.bodySmall),
              Text("lbl_user".tr, style: theme.textTheme.bodySmall),
              Text(
                "msg_direct_invite_quantity".tr,
                style: theme.textTheme.bodySmall,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.h),
                child: Text("lbl_prize".tr, style: theme.textTheme.bodySmall),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowviewtwo(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: AppDecoration.fs2bg,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 166.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 12.h),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 24.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "lbl_13th".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            Container(
                              height: 4.h,
                              width: 16.h,
                              margin: EdgeInsets.only(left: 2.h, right: 4.h),
                              decoration: BoxDecoration(
                                color: appTheme.blueGray100,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Text(
                          "lbl_103_339".tr,
                          style: CustomTextStyles.bodySmallOnPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 2.h,
                  width: 16.h,
                  decoration: BoxDecoration(color: appTheme.blueGray100),
                ),
              ],
            ),
          ),
          Text(
            "lbl_10".tr.toUpperCase(),
            style: CustomTextStyles.bodySmallAmberA40011,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 12.h),
            child: Text(
              "lbl_1500_23".tr.toUpperCase(),
              style: CustomTextStyles.bodySmallAmberA40011,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRow14th(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("lbl_14th".tr, style: theme.textTheme.bodySmall),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "lbl_103_339".tr,
              style: CustomTextStyles.bodySmallOnPrimary,
            ),
          ),
          Spacer(flex: 36),
          Text(
            "lbl_10".tr.toUpperCase(),
            style: CustomTextStyles.bodySmallAmberA40011,
          ),
          Spacer(flex: 63),
          Text(
            "lbl_1500_23".tr.toUpperCase(),
            style: CustomTextStyles.bodySmallAmberA40011,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnspacer(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: AppDecoration.fillBluegray90024.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(bottom: 18.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 142.h,
                    child: Column(
                      spacing: 2,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            height: 18.h,
                            width: 34.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgFavoriteLightGreenA700,
                                  height: 18.h,
                                  width: double.maxFinite,
                                ),
                                Text(
                                  "lbl_your".tr,
                                  style: CustomTextStyles.labelLargeOnPrimary_6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          "msg_your_previous_ranking".tr,
                          style: CustomTextStyles.bodySmallOnPrimary_3,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 52.h),
                          child: Text(
                            "lbl_50".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                VerticalDivider(
                  width: 1.h,
                  thickness: 1.h,
                  color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
                  endIndent: 6.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 26.h),
                  child: Column(
                    spacing: 2,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "msg_your_previous_prize".tr,
                        style: CustomTextStyles.bodySmallOnPrimary_3,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 22.h),
                        child: Text(
                          "lbl_1500_23".tr,
                          style: theme.textTheme.bodyMedium,
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
}
