import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../coupon_center_my_vouchers_page/coupon_center_my_vouchers_page.dart';
import 'bloc/coupon_center_voucher_won_bloc.dart';
import 'couponcenter_tab_page.dart';
import 'models/coupon_center_voucher_won_model.dart';

class CouponCenterVoucherWonScreen extends StatefulWidget {
  const CouponCenterVoucherWonScreen({Key? key}) : super(key: key);

  @override
  CouponCenterVoucherWonScreenState createState() =>
      CouponCenterVoucherWonScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<CouponCenterVoucherWonBloc>(
      create:
          (context) => CouponCenterVoucherWonBloc(
            CouponCenterVoucherWonState(
              couponCenterVoucherWonModelObj: CouponCenterVoucherWonModel(),
            ),
          )..add(CouponCenterVoucherWonInitialEvent()),
      child: CouponCenterVoucherWonScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class CouponCenterVoucherWonScreenState
    extends State<CouponCenterVoucherWonScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
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
              SizedBox(height: 18.h),
              _buildRowcompletingta(context),
              SizedBox(height: 12.h),
              _buildTabview(context),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      CouponcenterTabPage.builder(context),
                      CouponCenterMyVouchersPage.builder(context),
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
      height: 58.h,
      leadingWidth: 21.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        height: 12.h,
        width: 6.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_ticket_event".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame14117,
          height: 24.h,
          width: 24.h,
          margin: EdgeInsets.only(right: 14.h),
        ),
      ],
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildRowcompletingta(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 14.h, right: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: Column(
                spacing: 10,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 60.h,
                          width: 60.h,
                          padding: EdgeInsets.all(12.h),
                          decoration:
                              IconButtonStyleHelper.outlineLightGreenATL30,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup466,
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_939038393".tr,
                                  style:
                                      CustomTextStyles
                                          .titleSmallInterBluegray20005,
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  "msg_total_ticket_bonus".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                Text(
                                  "lbl_123456789_00".tr,
                                  style:
                                      CustomTextStyles
                                          .titleMediumAmberA400Black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 2.h,
                    ),
                    decoration: AppDecoration.fs4bg.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Text(
                      "msg_completing_tasks".tr,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.labelLargeBluegray20005,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img10161,
            height: 114.h,
            width: 112.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray90002,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Arial',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimary,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Arial',
          fontWeight: FontWeight.w700,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(2.0.h),
        indicator: BoxDecoration(
          color: appTheme.lightGreenA700,
          borderRadius: BorderRadius.circular(16.h),
        ),
        dividerHeight: 0.0,
        tabs: [
          Tab(
            height: 38,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Text("lbl_earn_ticket".tr),
            ),
          ),
          Tab(
            height: 38,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Text("lbl_my_ticket".tr),
            ),
          ),
        ],
      ),
    );
  }
}
