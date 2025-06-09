import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bindcrypto_tab_page.dart';
import 'bloc/bind_crypto_settings_card_list_bloc.dart';
import 'models/bind_crypto_settings_card_list_model.dart';

class BindCryptoSettingsCardListScreen extends StatefulWidget {
  const BindCryptoSettingsCardListScreen({Key? key}) : super(key: key);

  @override
  BindCryptoSettingsCardListScreenState createState() =>
      BindCryptoSettingsCardListScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BindCryptoSettingsCardListBloc>(
      create:
          (context) => BindCryptoSettingsCardListBloc(
            BindCryptoSettingsCardListState(
              bindCryptoSettingsCardListModelObj:
                  BindCryptoSettingsCardListModel(),
            ),
          )..add(BindCryptoSettingsCardListInitialEvent()),
      child: BindCryptoSettingsCardListScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class BindCryptoSettingsCardListScreenState
    extends State<BindCryptoSettingsCardListScreen>
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildColumnarrowleft(context),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      Container(),
                      BindcryptoTabPage.builder(context),
                      BindcryptoTabPage.builder(context),
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
  Widget _buildColumnarrowleft(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fs10bg,
      child: Column(
        spacing: 22,
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
          ),
          Container(
            margin: EdgeInsets.only(left: 32.h, right: 36.h),
            width: double.maxFinite,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.onPrimary,
              labelStyle: TextStyle(
                fontSize: 14.fSize,
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
