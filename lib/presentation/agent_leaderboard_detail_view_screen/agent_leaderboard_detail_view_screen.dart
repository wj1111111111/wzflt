import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/agent_leaderboard_detail_view_bloc.dart';
import 'models/agent_leaderboard_detail_view_model.dart';
import 'models/listyour_one_item_model.dart';
import 'widgets/listyour_one_item_widget.dart';

class AgentLeaderboardDetailViewScreen extends StatelessWidget {
  const AgentLeaderboardDetailViewScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AgentLeaderboardDetailViewBloc>(
      create:
          (context) => AgentLeaderboardDetailViewBloc(
            AgentLeaderboardDetailViewState(
              agentLeaderboardDetailViewModelObj:
                  AgentLeaderboardDetailViewModel(),
            ),
          )..add(AgentLeaderboardDetailViewInitialEvent()),
      child: AgentLeaderboardDetailViewScreen(),
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
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Column(
                children: [
                  SizedBox(height: 14.h),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 18.h),
                    decoration: AppDecoration.fs4bg.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "msg_2025_03_02_2025_04_12".tr,
                          style: CustomTextStyles.bodySmallOnPrimary_4,
                        ),
                        SizedBox(
                          height: 596.h,
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
                              SizedBox(
                                width: double.maxFinite,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildRow103339(context),
                                    SizedBox(height: 6.h),
                                    _buildRow103339one(context),
                                    SizedBox(height: 6.h),
                                    _buildRow103339two(context),
                                    SizedBox(height: 12.h),
                                    _buildListyourone(context),
                                  ],
                                ),
                              ),
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
                        _buildRow15th(context),
                        SizedBox(height: 2.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildColumnlinetwo(context),
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
        text: "lbl_current_ranking".tr,
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
  Widget _buildRow103339(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.h),
      decoration: AppDecoration.fs2bg,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img36x36,
            height: 26.h,
            width: 28.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
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
  Widget _buildRow103339one(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img36x36,
            height: 26.h,
            width: 28.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
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
  Widget _buildRow103339two(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.h),
      decoration: AppDecoration.fs2bg,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img36x36,
            height: 26.h,
            width: 28.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
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
  Widget _buildListyourone(BuildContext context) {
    return BlocSelector<
      AgentLeaderboardDetailViewBloc,
      AgentLeaderboardDetailViewState,
      AgentLeaderboardDetailViewModel?
    >(
      selector: (state) => state.agentLeaderboardDetailViewModelObj,
      builder: (context, agentLeaderboardDetailViewModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 12.h);
          },
          itemCount:
              agentLeaderboardDetailViewModelObj?.listyourOneItemList.length ??
              0,
          itemBuilder: (context, index) {
            ListyourOneItemModel model =
                agentLeaderboardDetailViewModelObj
                    ?.listyourOneItemList[index] ??
                ListyourOneItemModel();
            return ListyourOneItemWidget(model);
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
  Widget _buildRow15th(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: AppDecoration.fs2bg,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("lbl_15th".tr, style: theme.textTheme.bodySmall),
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
  Widget _buildColumnlinetwo(BuildContext context) {
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
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 98.h,
                    child: Column(
                      spacing: 2,
                      mainAxisSize: MainAxisSize.min,
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
                          "lbl_your_ranking".tr,
                          style: CustomTextStyles.bodySmallOnPrimary_3,
                        ),
                        Text("lbl_112".tr, style: theme.textTheme.bodyMedium),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.h,
                    color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
                    endIndent: 8.h,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  child: Column(
                    spacing: 2,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "lbl_your_invite".tr,
                        style: CustomTextStyles.bodySmallOnPrimary_3,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.h),
                        child: Text(
                          "lbl_10".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.h,
                    color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
                    endIndent: 8.h,
                  ),
                ),
                Expanded(
                  child: Column(
                    spacing: 2,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "msg_your_current_prize".tr,
                        style: CustomTextStyles.bodySmallOnPrimary_3,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.h),
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
