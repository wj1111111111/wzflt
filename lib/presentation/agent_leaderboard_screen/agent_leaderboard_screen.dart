import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'agent_tab_page.dart';
import 'bloc/agent_leaderboard_bloc.dart';
import 'models/agent_leaderboard_model.dart';

class AgentLeaderboardScreen extends StatefulWidget {
  const AgentLeaderboardScreen({Key? key}) : super(key: key);

  @override
  AgentLeaderboardScreenState createState() => AgentLeaderboardScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<AgentLeaderboardBloc>(
      create:
          (context) => AgentLeaderboardBloc(
            AgentLeaderboardState(
              agentLeaderboardModelObj: AgentLeaderboardModel(),
            ),
          )..add(AgentLeaderboardInitialEvent()),
      child: AgentLeaderboardScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class AgentLeaderboardScreenState extends State<AgentLeaderboardScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 6, vsync: this);
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
              Expanded(
                child: SizedBox(
                  height: 1200.h,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildStackoneone(context),
                      Container(
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            Container(),
                            Container(),
                            AgentTabPage.builder(context),
                            AgentTabPage.builder(context),
                            AgentTabPage.builder(context),
                            AgentTabPage.builder(context),
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
      ),
      bottomNavigationBar: _buildColumnviewmore(context),
    );
  }

  /// Section Widget
  Widget _buildStackoneone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 114.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.h),
                decoration: AppDecoration.fs10bg,
                child: Column(
                  spacing: 8,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img1Black90012x356,
                      height: 12.h,
                      width: double.maxFinite,
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(left: 6.h, right: 12.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLogoWj931,
                            height: 28.h,
                            width: 124.h,
                            alignment: Alignment.center,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                CustomImageView(
                                  imagePath: ImageConstant.imgLock,
                                  height: 16.h,
                                  width: 16.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "lbl_1980_00".tr,
                                    style:
                                        CustomTextStyles.titleMediumAmberA400_1,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.img1,
                                  height: 14.h,
                                  width: 18.h,
                                  margin: EdgeInsets.only(left: 10.h),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.h),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: appTheme.gray90010),
              child: TabBar(
                controller: tabviewController,
                labelPadding: EdgeInsets.zero,
                labelColor: theme.colorScheme.onPrimary,
                unselectedLabelColor: appTheme.blueGray400,
                tabs: [
                  Tab(child: Text("lbl_invite".tr)),
                  Tab(child: Text("lbl_achievement".tr)),
                  Tab(
                    child: Column(
                      spacing: 2,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSubtractLightGreenA700,
                          height: 14.h,
                          width: 18.h,
                        ),
                        Text("lbl_ranking2".tr),
                      ],
                    ),
                  ),
                  Tab(child: Text("lbl_teams".tr)),
                  Tab(child: Text("lbl_incomes".tr)),
                  Tab(child: Text("lbl_bonus3".tr)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewmore(BuildContext context) {
    return CustomElevatedButton(
      height: 40.h,
      text: "lbl_view_more".tr,
      margin: EdgeInsets.only(bottom: 12.h),
      buttonStyle: CustomButtonStyles.fillGrayTL20,
      buttonTextStyle: CustomTextStyles.titleSmallLightgreenA700,
    );
  }

  /// Section Widget
  Widget _buildColumnviewmore(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_buildViewmore(context)],
      ),
    );
  }
}
