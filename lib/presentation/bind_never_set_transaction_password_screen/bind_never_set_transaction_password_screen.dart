import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../usdt_bind_never_set_transaction_page/usdt_bind_never_set_transaction_page.dart';
import 'bindneverset_tab_page.dart';
import 'bloc/bind_never_set_transaction_password_bloc.dart';
import 'models/bind_never_set_transaction_password_model.dart';

class BindNeverSetTransactionPasswordScreen extends StatefulWidget {
  const BindNeverSetTransactionPasswordScreen({Key? key}) : super(key: key);

  @override
  BindNeverSetTransactionPasswordScreenState createState() =>
      BindNeverSetTransactionPasswordScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BindNeverSetTransactionPasswordBloc>(
      create:
          (context) => BindNeverSetTransactionPasswordBloc(
            BindNeverSetTransactionPasswordState(
              bindNeverSetTransactionPasswordModelObj:
                  BindNeverSetTransactionPasswordModel(),
            ),
          )..add(BindNeverSetTransactionPasswordInitialEvent()),
      child: BindNeverSetTransactionPasswordScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class BindNeverSetTransactionPasswordScreenState
    extends State<BindNeverSetTransactionPasswordScreen>
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
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 10.h),
              _buildTabview(context),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      Container(),
                      BindneversetTabPage.builder(context),
                      UsdtBindNeverSetTransactionPage.builder(context),
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
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 21.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        height: 12.h,
        width: 6.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_wallet".tr,
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
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.lightGreenA700,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Arial',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimary,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Arial',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: appTheme.lightGreenA700,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            child: SizedBox(
              width: 96.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 30.h,
                    width: 30.h,
                    padding: EdgeInsets.all(4.h),
                    decoration: IconButtonStyleHelper.gradientPurpleAToPurple,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgOnprimary30x30,
                    ),
                  ),
                  Text(
                    "msg_electronic_wallet".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              width: 94.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 30.h,
                    width: 30.h,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.gradientLightBlueToBlueA,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgTelevisionOnprimary30x30,
                    ),
                  ),
                  Text(
                    "lbl_bank_accounts".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              width: 78.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 30.h,
                    width: 30.h,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.gradientYellowToOrange,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGridOnprimary30x30,
                    ),
                  ),
                  Text(
                    "lbl_crypto_wallet".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
