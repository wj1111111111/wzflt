import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/leaderboard_history_one_bloc.dart';
import 'models/leaderboard_history_one_model.dart'; // ignore_for_file: must_be_immutable

class LeaderboardHistoryOneBottomsheet extends StatelessWidget {
  const LeaderboardHistoryOneBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LeaderboardHistoryOneBloc>(
      create:
          (context) => LeaderboardHistoryOneBloc(
            LeaderboardHistoryOneState(
              leaderboardHistoryOneModelObj: LeaderboardHistoryOneModel(),
            ),
          )..add(LeaderboardHistoryOneInitialEvent()),
      child: LeaderboardHistoryOneBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildColumn(context);
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 148.h),
                      child: Text(
                        "lbl_history2".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    CustomIconButton(
                      height: 28.h,
                      width: 28.h,
                      padding: EdgeInsets.all(8.h),
                      decoration: IconButtonStyleHelper.fillLightGreen,
                      alignment: Alignment.center,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCloseBlack90028x28,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              SizedBox(
                width: double.maxFinite,
                child: Divider(
                  color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                child: Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: AppDecoration.fs4bg.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            spacing: 4,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGrassCpirlbv1,
                                    height: 18.h,
                                    width: 16.h,
                                  ),
                                  Text(
                                    "lbl_agent_jackpot".tr.toUpperCase(),
                                    style: CustomTextStyles.titleSmallOrange200,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGrassCpirlbv2,
                                    height: 18.h,
                                    width: 16.h,
                                  ),
                                ],
                              ),
                              Text(
                                "lbl_15_666_523_70".tr,
                                style: CustomTextStyles.headlineSmallAmber60001,
                              ),
                            ],
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgCloseYellow50003,
                            height: 78.h,
                            width: 82.h,
                            margin: EdgeInsets.only(left: 6.h),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "msg_date_2024_03_09_2024_03_116".tr,
                      style: CustomTextStyles.bodySmallOnPrimary_3,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Container(
                height: 184.h,
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 66.h),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 26.h),
                      decoration: AppDecoration.column190,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 4.h),
                          Container(
                            height: 16.h,
                            width: 88.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray90030,
                              borderRadius: BorderRadius.circular(44.h),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 104.h,
                        width: 14.h,
                        margin: EdgeInsets.only(top: 20.h, right: 52.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.h),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              appTheme.blueGray70001,
                              appTheme.blueGray70001.withValues(alpha: 0),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 78.h,
                        width: 16.h,
                        margin: EdgeInsets.only(top: 44.h, right: 84.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.h),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              appTheme.blueGray70001,
                              appTheme.blueGray70001.withValues(alpha: 0),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 94.h,
                        width: 14.h,
                        margin: EdgeInsets.only(top: 30.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.h),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              appTheme.blueGray70001,
                              appTheme.blueGray70001.withValues(alpha: 0),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 74.h,
                        width: 14.h,
                        margin: EdgeInsets.only(left: 74.h, top: 50.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.h),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              appTheme.blueGray70001,
                              appTheme.blueGray70001.withValues(alpha: 0),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 58.h,
                        width: 14.h,
                        margin: EdgeInsets.only(left: 40.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.h),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              appTheme.blueGray70001,
                              appTheme.blueGray70001.withValues(alpha: 0),
                            ],
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector1BlueGray70001,
                      height: 44.h,
                      width: 140.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 40.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBagBlueGray20003,
                      height: 46.h,
                      width: 76.h,
                      margin: EdgeInsets.only(bottom: 44.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgMaximize,
                      height: 32.h,
                      width: 26.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 62.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgSaveBlueGray20004,
                      height: 14.h,
                      width: 18.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 50.h, right: 86.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                "lbl_no_data".tr,
                style: CustomTextStyles.titleSmallBluegray400_1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
