import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/maintenance_page_3_to_4_am_bloc.dart';
import 'models/maintenance_page_3_to_4_am_model.dart';

class MaintenancePage3To4AmScreen extends StatelessWidget {
  const MaintenancePage3To4AmScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MaintenancePage3To4AmBloc>(
      create:
          (context) => MaintenancePage3To4AmBloc(
            MaintenancePage3To4AmState(
              maintenancePage3To4AmModelObj: MaintenancePage3To4AmModel(),
            ),
          )..add(MaintenancePage3To4AmInitialEvent()),
      child: MaintenancePage3To4AmScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MaintenancePage3To4AmBloc, MaintenancePage3To4AmState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.column110,
                  child: Column(
                    children: [
                      SizedBox(height: 42.h),
                      SizedBox(
                        height: 680.h,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img11680x374,
                              height: 680.h,
                              width: double.maxFinite,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(top: 18.h),
                                child: ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 20,
                                      sigmaY: 20,
                                    ),
                                    child: Container(
                                      width: double.maxFinite,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 14.h,
                                        vertical: 34.h,
                                      ),
                                      decoration: AppDecoration.outline8,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "msg_system_maintenance".tr,
                                            style:
                                                CustomTextStyles.titleLarge20,
                                          ),
                                          SizedBox(height: 2.h),
                                          Text(
                                            "msg_maintenance_time".tr,
                                            style:
                                                CustomTextStyles
                                                    .titleSmallAmberA400_2,
                                          ),
                                          SizedBox(height: 22.h),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                              height: 148.h,
                                              width: 256.h,
                                              margin: EdgeInsets.only(
                                                right: 20.h,
                                              ),
                                              child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .imgBettingRebate1,
                                                    height: 144.h,
                                                    width: 206.h,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .img6fa1b410450091b,
                                                    height: 86.h,
                                                    width: 118.h,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 12.h),
                                          _buildStackdearteamss(context),
                                          SizedBox(height: 12.h),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      _buildColumnpleasewai(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStackdearteamss(BuildContext context) {
    return SizedBox(
      height: 192.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(left: 14.h, top: 14.h, bottom: 14.h),
            decoration: AppDecoration.outline.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("lbl_dear_teamss".tr, style: theme.textTheme.titleMedium),
                SizedBox(height: 134.h),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 144.h,
              margin: EdgeInsets.symmetric(horizontal: 14.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_in_order_to_ensure".tr,
                          style: CustomTextStyles.titleSmallBluegray400,
                        ),
                        TextSpan(
                          text: "msg_shut_down_the_server".tr,
                          style: CustomTextStyles.titleSmallBlue400,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: Text(
                        "lbl_jbet88_co".tr,
                        style: theme.textTheme.titleSmall,
                      ),
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
  Widget _buildColumnpleasewai(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 32.h),
      decoration: AppDecoration.fs3qbg,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "lbl_please_wait".tr,
            style: CustomTextStyles.titleMediumBluegray400,
          ),
        ],
      ),
    );
  }
}
