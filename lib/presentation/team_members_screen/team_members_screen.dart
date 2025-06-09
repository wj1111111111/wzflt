import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/team_members_bloc.dart';
import 'models/team_members_model.dart';
import 'team_tab_page.dart';

class TeamMembersScreen extends StatefulWidget {
  const TeamMembersScreen({Key? key}) : super(key: key);

  @override
  TeamMembersScreenState createState() => TeamMembersScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TeamMembersBloc>(
      create:
          (context) => TeamMembersBloc(
            TeamMembersState(teamMembersModelObj: TeamMembersModel()),
          )..add(TeamMembersInitialEvent()),
      child: TeamMembersScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class TeamMembersScreenState extends State<TeamMembersScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 7, vsync: this);
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
                child: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      Container(),
                      Container(),
                      Container(),
                      TeamTabPage.builder(context),
                      TeamTabPage.builder(context),
                      TeamTabPage.builder(context),
                      TeamTabPage.builder(context),
                    ],
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
              margin: EdgeInsets.only(right: 8.h),
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
          SizedBox(
            child: TabBar(
              controller: tabviewController,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              labelColor: theme.colorScheme.onPrimary,
              labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelColor: appTheme.blueGray400,
              unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w400,
              ),
              indicatorColor: appTheme.lightGreenA700,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Column(
                    spacing: 2,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSubtractBlueGray400,
                        height: 20.h,
                        width: 22.h,
                      ),
                      Text("lbl_invite".tr),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    spacing: 2,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img1Black900,
                        height: 20.h,
                        width: 20.h,
                      ),
                      Text("lbl_achievement".tr),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    spacing: 4,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame2131330279,
                        height: 20.h,
                        width: 22.h,
                      ),
                      Text("lbl_ranking2".tr),
                    ],
                  ),
                ),
                Tab(child: Text("lbl_teams".tr)),
                Tab(child: Text("lbl_incomes".tr)),
                Tab(child: Text("lbl_records".tr)),
                Tab(
                  child: Column(
                    spacing: 2,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame1321314655,
                        height: 20.h,
                        width: 20.h,
                      ),
                      Text("lbl_faq".tr),
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
