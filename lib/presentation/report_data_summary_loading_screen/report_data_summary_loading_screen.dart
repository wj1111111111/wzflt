import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import 'bloc/report_data_summary_loading_bloc.dart';
import 'models/report_data_summary_loading_model.dart';
import 'reportdata_tab_page.dart';

class ReportDataSummaryLoadingScreen extends StatefulWidget {
  const ReportDataSummaryLoadingScreen({Key? key}) : super(key: key);

  @override
  ReportDataSummaryLoadingScreenState createState() =>
      ReportDataSummaryLoadingScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ReportDataSummaryLoadingBloc>(
      create:
          (context) => ReportDataSummaryLoadingBloc(
            ReportDataSummaryLoadingState(
              reportDataSummaryLoadingModelObj: ReportDataSummaryLoadingModel(),
            ),
          )..add(ReportDataSummaryLoadingInitialEvent()),
      child: ReportDataSummaryLoadingScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class ReportDataSummaryLoadingScreenState
    extends State<ReportDataSummaryLoadingScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(width: double.maxFinite, child: _buildAppbar(context)),
              _buildTabview(context),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ReportdataTabPage.builder(context),
                      ReportdataTabPage.builder(context),
                      ReportdataTabPage.builder(context),
                      ReportdataTabPage.builder(context),
                      ReportdataTabPage.builder(context),
                      ReportdataTabPage.builder(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: _buildBottomappbarnav(context),
      ),
      floatingActionButton: CustomFloatingButton(
        height: 56,
        width: 56,
        backgroundColor: appTheme.blueGray90021,
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup403,
          height: 28.0.h,
          width: 28.0.h,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
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
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: appTheme.gray90010),
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlueGray400,
                  height: 20.h,
                  width: 20.h,
                  margin: EdgeInsets.only(left: 4.h, right: 2.h),
                ),
                Text("lbl_invite".tr),
              ],
            ),
          ),
          Tab(
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame1,
                  height: 20.h,
                  width: 22.h,
                ),
                Text("lbl_achievement".tr),
              ],
            ),
          ),
          Tab(
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlueGray40020x20,
                  height: 20.h,
                  width: 20.h,
                  margin: EdgeInsets.symmetric(horizontal: 8.h),
                ),
                Text("lbl_teams".tr),
              ],
            ),
          ),
          Tab(
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameLightGreenA70020x20,
                  height: 20.h,
                  width: 22.h,
                ),
                Text("lbl_incomes".tr),
              ],
            ),
          ),
          Tab(
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup1321314646,
                  height: 20.h,
                  width: 20.h,
                  margin: EdgeInsets.symmetric(horizontal: 6.h),
                ),
                Text("lbl_bonus3".tr),
              ],
            ),
          ),
          Tab(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
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
    );
  }

  /// Section Widget
  Widget _buildBottomappbarnav(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomAppBar(onChanged: (BottomBarEnum type) {}),
    );
  }
}
