import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/agent_leaderboard_bloc.dart';
import 'models/agent_tab_model.dart';
import 'models/listheadingthre_item_model.dart';
import 'widgets/listheadingthre_item_widget.dart';

class AgentTabPage extends StatefulWidget {
  const AgentTabPage({Key? key}) : super(key: key);

  @override
  AgentTabPageState createState() => AgentTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<AgentLeaderboardBloc>(
      create:
          (context) => AgentLeaderboardBloc(
            AgentLeaderboardState(agentTabModelObj: AgentTabModel()),
          )..add(AgentLeaderboardInitialEvent()),
      child: AgentTabPage(),
    );
  }
}

class AgentTabPageState extends State<AgentTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 6.h),
                child: Column(
                  spacing: 10,
                  children: [
                    _buildJackpottwo(context),
                    _buildRowcreatefrom(context),
                    _buildListheadingthre(context),
                    _buildColumncloseone(context),
                    _buildInvitetwo(context),
                    _buildBg(context),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowsix(
    BuildContext context, {
    required String sixOne,
    required String p103339Five,
    required String tenFive,
    required String priceSeven,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sixOne,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Text(
            p103339Five,
            style: CustomTextStyles.bodySmallOnPrimary.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ),
        Spacer(flex: 35),
        Text(
          tenFive,
          style: CustomTextStyles.bodySmallAmberA40011.copyWith(
            color: appTheme.amberA400,
          ),
        ),
        Spacer(flex: 64),
        Text(
          priceSeven,
          style: CustomTextStyles.bodySmallAmberA40011.copyWith(
            color: appTheme.amberA400,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildJackpottwo(BuildContext context) {
    return SizedBox(
      height: 192.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 188.h,
            margin: EdgeInsets.only(left: 12.h, right: 8.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img188x322,
                  height: 188.h,
                  width: double.maxFinite,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(top: 36.h),
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Column(
                      spacing: 8,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: 10.h,
                                  margin: EdgeInsets.only(
                                    left: 28.h,
                                    bottom: 8.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: appTheme.yellow700.withValues(
                                      alpha: 0.4,
                                    ),
                                    borderRadius: BorderRadius.circular(1.h),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: 6.h,
                                  margin: EdgeInsets.only(bottom: 8.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.yellow700,
                                    borderRadius: BorderRadius.circular(1.h),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 6.h,
                                decoration: BoxDecoration(
                                  color: appTheme.yellow700.withValues(
                                    alpha: 0.4,
                                  ),
                                  borderRadius: BorderRadius.circular(1.h),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: 12.h,
                                  margin: EdgeInsets.only(top: 18.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.yellow700,
                                    borderRadius: BorderRadius.circular(1.h),
                                  ),
                                ),
                              ),
                              Container(
                                width: 8.h,
                                margin: EdgeInsets.only(left: 10.h, top: 4.h),
                                decoration: BoxDecoration(
                                  color: appTheme.yellow700.withValues(
                                    alpha: 0.6,
                                  ),
                                  borderRadius: BorderRadius.circular(1.h),
                                ),
                              ),
                              Container(
                                width: 12.h,
                                margin: EdgeInsets.only(left: 16.h, top: 8.h),
                                decoration: BoxDecoration(
                                  color: appTheme.yellow700,
                                  borderRadius: BorderRadius.circular(1.h),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 10.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 12.h,
                                  margin: EdgeInsets.only(bottom: 6.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.yellow700,
                                    borderRadius: BorderRadius.circular(1.h),
                                  ),
                                ),
                              ),
                              Container(
                                width: 10.h,
                                margin: EdgeInsets.only(left: 10.h),
                                decoration: BoxDecoration(
                                  color: appTheme.yellow700,
                                  borderRadius: BorderRadius.circular(1.h),
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 10.h,
                                margin: EdgeInsets.only(right: 28.h),
                                decoration: BoxDecoration(
                                  color: appTheme.yellow700,
                                  borderRadius: BorderRadius.circular(1.h),
                                ),
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
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 160.h,
              margin: EdgeInsets.only(right: 22.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 12.h,
                      decoration: BoxDecoration(
                        color: appTheme.yellow700,
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                    ),
                  ),
                  Container(
                    height: 160.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgJackpot,
                          height: 160.h,
                          width: double.maxFinite,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 54.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "lbl2".tr,
                                        style:
                                            CustomTextStyles
                                                .displaySmallAmberA400,
                                      ),
                                      Container(
                                        decoration: AppDecoration.outlinePink,
                                        child: Text(
                                          "lbl_186_665_20".tr,
                                          textAlign: TextAlign.left,
                                          style:
                                              CustomTextStyles
                                                  .headlineLargeAmber50001,
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowcreatefrom(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 30.h,
              width: 90.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: double.maxFinite,
                    decoration: AppDecoration.fs9.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder14,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 6.h,
                            width: 14.h,
                            decoration: BoxDecoration(
                              color: appTheme.red700,
                              borderRadius: BorderRadius.circular(3.h),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgThumbsUpOnprimary,
                              height: 14.h,
                              width: 12.h,
                            ),
                            Text(
                              "lbl_my_prizes".tr,
                              style: CustomTextStyles.labelLargeOnPrimary_6,
                            ),
                          ],
                        ),
                        SizedBox(height: 4.h),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "lbl_183".tr,
                      style: CustomTextStyles.bodySmallOnPrimary10,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 18.h,
            width: 18.h,
            decoration: AppDecoration.outlineBluegray400.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("lbl6".tr, style: CustomTextStyles.labelLargeBlack),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_rules".tr,
              style: CustomTextStyles.bodySmallOnPrimary_3,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListheadingthre(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      width: double.maxFinite,
      child: BlocSelector<
        AgentLeaderboardBloc,
        AgentLeaderboardState,
        AgentTabModel?
      >(
        selector: (state) => state.agentTabModelObj,
        builder: (context, agentTabModelObj) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 4.h,
              children: List.generate(
                agentTabModelObj?.listheadingthreItemList.length ?? 0,
                (index) {
                  ListheadingthreItemModel model =
                      agentTabModelObj?.listheadingthreItemList[index] ??
                      ListheadingthreItemModel();
                  return ListheadingthreItemWidget(model);
                },
              ),
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildYourone(BuildContext context) {
    return CustomOutlinedButton(
      height: 26.h,
      width: 62.h,
      text: "lbl_your".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 2.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFrameOnprimary14x14,
          height: 14.h,
          width: 14.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineOnPrimaryTL6,
      buttonTextStyle: CustomTextStyles.bodySmallOnPrimary_3,
      hasBlurBackground: true,
    );
  }

  /// Section Widget
  Widget _buildColumncloseone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 14.h),
                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCloseGray90002,
                            height: 36.h,
                            width: 36.h,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_103_839".tr,
                                  style: CustomTextStyles.bodySmallOnPrimary_3,
                                ),
                                SizedBox(
                                  width: double.maxFinite,
                                  child: Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_invite".tr,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                              TextSpan(
                                                text: "lbl_66_408_662".tr,
                                                style:
                                                    CustomTextStyles
                                                        .bodySmallOnPrimary_1,
                                              ),
                                              TextSpan(
                                                text: "lbl_to_reach".tr,
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 6.h),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 4.h,
                                        ),
                                        decoration: AppDecoration.fillPurple
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .circleBorder10,
                                            ),
                                        child: Text(
                                          "lbl_top_10".tr,
                                          textAlign: TextAlign.center,
                                          style:
                                              CustomTextStyles
                                                  .bodySmallOnPrimary10_2,
                                        ),
                                      ),
                                      Container(
                                        height: 18.h,
                                        width: 16.h,
                                        margin: EdgeInsets.only(left: 10.h),
                                        decoration: AppDecoration
                                            .outlineBluegray400
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
                                                      .labelLargeBlack,
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
                        ],
                      ),
                    ),
                  ),
                ),
                _buildYourone(context),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
              indent: 14.h,
              endIndent: 14.h,
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 54.h, right: 48.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("lbl_my_ranking".tr, style: theme.textTheme.bodySmall),
                    Text(
                      "lbl_no_rank".tr,
                      style: CustomTextStyles.titleSmallLightgreenA70015,
                    ),
                  ],
                ),
                Spacer(),
                VerticalDivider(
                  width: 1.h,
                  thickness: 1.h,
                  color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_invite_user".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 26.h),
                      child: Text(
                        "lbl_0".tr,
                        style: CustomTextStyles.titleSmallLightgreenA70015,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 14.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInvitetwo(BuildContext context) {
    return CustomElevatedButton(
      height: 40.h,
      text: "lbl_invite4".tr,
      margin: EdgeInsets.only(left: 12.h, right: 18.h),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFrame,
          height: 20.h,
          width: 20.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientLightGreenAToLightGreenTL22Decoration,
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildHistory(BuildContext context) {
    return CustomElevatedButton(
      height: 24.h,
      width: 64.h,
      text: "lbl_history".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL4,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
    );
  }

  /// Section Widget
  Widget _buildBg(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(right: 4.h),
        color: appTheme.gray90001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Container(
          height: 570.h,
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 10.h),
          decoration: AppDecoration.fs4bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse626,
                height: 302.h,
                width: 90.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 54.h),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  spacing: 12,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(right: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 28.h,
                            width: 76.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgVector28x74,
                                  height: 28.h,
                                  width: double.maxFinite,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: double.maxFinite,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 2.h,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgFrame14x14,
                                            height: 14.h,
                                            width: 14.h,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2.h),
                                            child: Text(
                                              "lbl_active".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "msg_2025_03_02_2025_04_12".tr,
                            style: CustomTextStyles.bodySmallOnPrimary_4,
                          ),
                          _buildHistory(context),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        spacing: 8,
                        children: [
                          SizedBox(
                            width: double.maxFinite,
                            child: Divider(
                              color: theme.colorScheme.onPrimary.withValues(
                                alpha: 0.1,
                              ),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(left: 20.h, right: 30.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "lbl11".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                                Text(
                                  "lbl_user".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                                Text(
                                  "msg_direct_invite_quantity".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                                Text(
                                  "lbl_prize".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 2.h),
                            child: Row(
                              children: [
                                Text(
                                  "lbl_no_rank".tr,
                                  style:
                                      CustomTextStyles
                                          .bodySmallLightgreenA700_2,
                                ),
                                Container(
                                  height: 18.h,
                                  width: 34.h,
                                  margin: EdgeInsets.only(left: 18.h),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant
                                                .imgFavoriteLightGreenA700,
                                        height: 18.h,
                                        width: double.maxFinite,
                                      ),
                                      Text(
                                        "lbl_your".tr,
                                        style:
                                            CustomTextStyles
                                                .labelLargeOnPrimary_6,
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(flex: 30),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "lbl_0".tr.toUpperCase(),
                                    style:
                                        CustomTextStyles
                                            .bodySmallLightgreenA700,
                                  ),
                                ),
                                Spacer(flex: 49),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "lbl_02".tr.toUpperCase(),
                                    style:
                                        CustomTextStyles
                                            .bodySmallLightgreenA700,
                                  ),
                                ),
                                Spacer(flex: 19),
                              ],
                            ),
                          ),
                          SizedBox(height: 14.h),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.h,
                              vertical: 6.h,
                            ),
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
                                Spacer(flex: 35),
                                Text(
                                  "lbl_10".tr.toUpperCase(),
                                  style: CustomTextStyles.bodySmallAmberA40011,
                                ),
                                Spacer(flex: 64),
                                Text(
                                  "lbl_1500_23".tr.toUpperCase(),
                                  style: CustomTextStyles.bodySmallAmberA40011,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Container(
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
                                Spacer(flex: 35),
                                Text(
                                  "lbl_10".tr.toUpperCase(),
                                  style: CustomTextStyles.bodySmallAmberA40011,
                                ),
                                Spacer(flex: 64),
                                Text(
                                  "lbl_1500_23".tr.toUpperCase(),
                                  style: CustomTextStyles.bodySmallAmberA40011,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.h,
                              vertical: 6.h,
                            ),
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
                                Spacer(flex: 35),
                                Text(
                                  "lbl_10".tr.toUpperCase(),
                                  style: CustomTextStyles.bodySmallAmberA40011,
                                ),
                                Spacer(flex: 64),
                                Text(
                                  "lbl_1500_23".tr.toUpperCase(),
                                  style: CustomTextStyles.bodySmallAmberA40011,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(left: 20.h, right: 10.h),
                            child: _buildRowsix(
                              context,
                              sixOne: "lbl_4".tr,
                              p103339Five: "lbl_103_339".tr,
                              tenFive: "lbl_10".tr,
                              priceSeven: "lbl_1500_23".tr,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            decoration: AppDecoration.fs2bg,
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text(
                                    "lbl_52".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Text(
                                    "lbl_103_339".tr,
                                    style: CustomTextStyles.bodySmallOnPrimary,
                                  ),
                                ),
                                Spacer(flex: 35),
                                Text(
                                  "lbl_10".tr.toUpperCase(),
                                  style: CustomTextStyles.bodySmallAmberA40011,
                                ),
                                Spacer(flex: 64),
                                Text(
                                  "lbl_1500_23".tr.toUpperCase(),
                                  style: CustomTextStyles.bodySmallAmberA40011,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(left: 20.h, right: 10.h),
                            child: _buildRowsix(
                              context,
                              sixOne: "lbl_6".tr,
                              p103339Five: "lbl_103_339".tr,
                              tenFive: "lbl_10".tr,
                              priceSeven: "lbl_1500_23".tr,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            decoration: AppDecoration.fs2bg,
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text(
                                    "lbl_7".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Text(
                                    "lbl_103_339".tr,
                                    style: CustomTextStyles.bodySmallOnPrimary,
                                  ),
                                ),
                                Spacer(flex: 35),
                                Text(
                                  "lbl_10".tr.toUpperCase(),
                                  style: CustomTextStyles.bodySmallAmberA40011,
                                ),
                                Spacer(flex: 64),
                                Text(
                                  "lbl_1500_23".tr.toUpperCase(),
                                  style: CustomTextStyles.bodySmallAmberA40011,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(left: 20.h, right: 10.h),
                            child: _buildRowsix(
                              context,
                              sixOne: "lbl_82".tr,
                              p103339Five: "lbl_103_339".tr,
                              tenFive: "lbl_10".tr,
                              priceSeven: "lbl_1500_23".tr,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            decoration: AppDecoration.fs2bg,
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text(
                                    "lbl_92".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Text(
                                    "lbl_103_339".tr,
                                    style: CustomTextStyles.bodySmallOnPrimary,
                                  ),
                                ),
                                Spacer(flex: 35),
                                Text(
                                  "lbl_10".tr.toUpperCase(),
                                  style: CustomTextStyles.bodySmallAmberA40011,
                                ),
                                Spacer(flex: 64),
                                Text(
                                  "lbl_1500_23".tr.toUpperCase(),
                                  style: CustomTextStyles.bodySmallAmberA40011,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(left: 18.h, right: 10.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_10".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text(
                                    "lbl_103_339".tr,
                                    style: CustomTextStyles.bodySmallOnPrimary,
                                  ),
                                ),
                                Spacer(flex: 35),
                                Text(
                                  "lbl_10".tr.toUpperCase(),
                                  style: CustomTextStyles.bodySmallAmberA40011,
                                ),
                                Spacer(flex: 64),
                                Text(
                                  "lbl_1500_23".tr.toUpperCase(),
                                  style: CustomTextStyles.bodySmallAmberA40011,
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
            ],
          ),
        ),
      ),
    );
  }
}
