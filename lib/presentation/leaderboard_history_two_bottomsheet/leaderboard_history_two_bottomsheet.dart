import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/leaderboard_history_two_bloc.dart';
import 'models/leaderboard_history_two_model.dart'; // ignore_for_file: must_be_immutable

class LeaderboardHistoryTwoBottomsheet extends StatelessWidget {
  const LeaderboardHistoryTwoBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LeaderboardHistoryTwoBloc>(
      create:
          (context) => LeaderboardHistoryTwoBloc(
            LeaderboardHistoryTwoState(
              leaderboardHistoryTwoModelObj: LeaderboardHistoryTwoModel(),
            ),
          )..add(LeaderboardHistoryTwoInitialEvent()),
      child: LeaderboardHistoryTwoBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                height: 102.h,
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 40.h),
                        child: Text(
                          "msg_date_2024_03_09_2024_03_116".tr,
                          style: CustomTextStyles.bodySmallOnPrimary_3,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        spacing: 8,
                        mainAxisSize: MainAxisSize.max,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgGrassCpirlbv1,
                                          height: 18.h,
                                          width: 16.h,
                                        ),
                                        Text(
                                          "lbl_agent_jackpot".tr.toUpperCase(),
                                          style:
                                              CustomTextStyles
                                                  .titleSmallOrange200,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgGrassCpirlbv2,
                                          height: 18.h,
                                          width: 16.h,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "lbl_15_666_523_70".tr,
                                      style:
                                          CustomTextStyles
                                              .headlineSmallAmber60001,
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
                  ],
                ),
              ),
              SizedBox(height: 46.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup279,
                height: 184.h,
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 78.h, right: 56.h),
              ),
              SizedBox(height: 40.h),
              Text(
                "msg_please_waitrankings".tr,
                style: CustomTextStyles.titleSmallBluegray400_1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
