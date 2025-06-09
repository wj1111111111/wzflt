import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../settings_add_account_page/settings_add_account_page.dart';
import '../settings_change_password_page/settings_change_password_page.dart';
import 'bloc/settings_personal_info_bloc.dart';
import 'models/settings_personal_info_model.dart';
import 'settings_tab_page.dart';

class SettingsPersonalInfoScreen extends StatefulWidget {
  const SettingsPersonalInfoScreen({Key? key}) : super(key: key);

  @override
  SettingsPersonalInfoScreenState createState() =>
      SettingsPersonalInfoScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsPersonalInfoBloc>(
      create:
          (context) => SettingsPersonalInfoBloc(
            SettingsPersonalInfoState(
              settingsPersonalInfoModelObj: SettingsPersonalInfoModel(),
            ),
          )..add(SettingsPersonalInfoInitialEvent()),
      child: SettingsPersonalInfoScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class SettingsPersonalInfoScreenState extends State<SettingsPersonalInfoScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
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
              _buildColumnarrowleft(context),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 684.h,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        SettingsTabPage.builder(context),
                        SettingsAddAccountPage.builder(context),
                        SettingsChangePasswordPage.builder(context),
                      ],
                    ),
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
  Widget _buildColumnarrowleft(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fs10bg,
      child: Column(
        spacing: 24,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            height: 22.h,
            leadingWidth: 21.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
              height: 12.h,
              width: 6.h,
              margin: EdgeInsets.only(left: 15.h),
            ),
            title: AppbarSubtitleTwo(
              text: "lbl_setting".tr,
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
          ),
          Container(
            margin: EdgeInsets.only(left: 30.h, right: 38.h),
            width: double.maxFinite,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.onPrimary,
              labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelColor: appTheme.blueGray400,
              unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w700,
              ),
              indicatorColor: appTheme.lightGreenA700,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(child: Text("lbl_general".tr)),
                Tab(child: Text("lbl_bank_account".tr)),
                Tab(child: Text("lbl_security".tr)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
