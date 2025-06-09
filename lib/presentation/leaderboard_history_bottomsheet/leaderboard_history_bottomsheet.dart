import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/leaderboard_history_bloc.dart';
import 'models/leaderboard_history_model.dart';
import 'models/list103339_item_model.dart';
import 'widgets/list103339_item_widget.dart'; // ignore_for_file: must_be_immutable

class LeaderboardHistoryBottomsheet extends StatelessWidget {
  const LeaderboardHistoryBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LeaderboardHistoryBloc>(
      create:
          (context) => LeaderboardHistoryBloc(
            LeaderboardHistoryState(
              leaderboardHistoryModelObj: LeaderboardHistoryModel(),
            ),
          )..add(LeaderboardHistoryInitialEvent()),
      child: LeaderboardHistoryBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: AppDecoration.fillBluegray90012.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildRowhistory(context),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
            ),
          ),
          _buildColumnclose(context),
          Expanded(
            child: SizedBox(
              width: double.maxFinite,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.only(left: 16.h, right: 12.h),
                color: appTheme.gray90001,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Container(
                  height: 440.h,
                  width: double.maxFinite,
                  decoration: AppDecoration.fs4bg.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse626,
                        height: 302.h,
                        width: 90.h,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.maxFinite,
                              margin: EdgeInsets.only(left: 20.h, right: 32.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl11".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                  Spacer(flex: 23),
                                  Text(
                                    "lbl_user".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                  Spacer(flex: 35),
                                  SizedBox(
                                    width: 66.h,
                                    child: Text(
                                      "msg_direct_invite_quantity2".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall!
                                          .copyWith(height: 1.17),
                                    ),
                                  ),
                                  Spacer(flex: 40),
                                  Text(
                                    "lbl_prize".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                            _buildList103339(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 12.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowhistory(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 152.h),
            child: Text("lbl_history2".tr, style: theme.textTheme.titleMedium),
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
    );
  }

  /// Section Widget
  Widget _buildColumnclose(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 16.h, right: 12.h),
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
          SizedBox(
            height: 16.h,
            width: 160.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  "msg_date_2024_03_09_2024_03_116".tr,
                  style: CustomTextStyles.bodySmallOnPrimary_3,
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
    );
  }

  /// Section Widget
  Widget _buildList103339(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        LeaderboardHistoryBloc,
        LeaderboardHistoryState,
        LeaderboardHistoryModel?
      >(
        selector: (state) => state.leaderboardHistoryModelObj,
        builder: (context, leaderboardHistoryModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 6.h);
            },
            itemCount:
                leaderboardHistoryModelObj?.list103339ItemList.length ?? 0,
            itemBuilder: (context, index) {
              List103339ItemModel model =
                  leaderboardHistoryModelObj?.list103339ItemList[index] ??
                  List103339ItemModel();
              return List103339ItemWidget(model);
            },
          );
        },
      ),
    );
  }
}
