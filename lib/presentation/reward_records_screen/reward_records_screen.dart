import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/reward_records_bloc.dart';
import 'models/reward_records_item_model.dart';
import 'models/reward_records_model.dart';
import 'widgets/reward_records_item_widget.dart';

class RewardRecordsScreen extends StatelessWidget {
  const RewardRecordsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RewardRecordsBloc>(
      create:
          (context) => RewardRecordsBloc(
            RewardRecordsState(rewardRecordsModelObj: RewardRecordsModel()),
          )..add(RewardRecordsInitialEvent()),
      child: RewardRecordsScreen(),
    );
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
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(left: 14.h, top: 16.h, right: 14.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgDownload36x20,
                        height: 36.h,
                        width: 20.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCrown6b7cb3fe1,
                        height: 48.h,
                        width: 86.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgDownload1,
                        height: 36.h,
                        width: 20.h,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "lbl_spin_bonus".tr,
                    style: CustomTextStyles.titleSmallBlack,
                  ),
                  SizedBox(height: 6.h),
                  _buildColumnusername(context),
                  SizedBox(height: 12.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      spacing: 12,
                      children: [
                        _buildRewardrecords(context),
                        SizedBox(
                          width: double.maxFinite,
                          child: Divider(color: appTheme.blueGray80099),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 28.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 60.h,
      leadingWidth: 22.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        height: 12.h,
        width: 6.h,
        margin: EdgeInsets.only(left: 16.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_spin_bonus".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildColumnusername(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 2,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_user_name2".tr,
                  style: CustomTextStyles.labelLargeBlack,
                ),
                Text(
                  "lbl_spin_level".tr,
                  style: CustomTextStyles.labelLargeBlack,
                ),
                Text("lbl_prize".tr, style: CustomTextStyles.labelLargeBlack),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Divider(color: appTheme.blueGray80099),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRewardrecords(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: BlocSelector<
        RewardRecordsBloc,
        RewardRecordsState,
        RewardRecordsModel?
      >(
        selector: (state) => state.rewardRecordsModelObj,
        builder: (context, rewardRecordsModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0.h),
                child: Divider(
                  height: 1.h,
                  thickness: 1.h,
                  color: appTheme.blueGray80099,
                ),
              );
            },
            itemCount: rewardRecordsModelObj?.rewardRecordsItemList.length ?? 0,
            itemBuilder: (context, index) {
              RewardRecordsItemModel model =
                  rewardRecordsModelObj?.rewardRecordsItemList[index] ??
                  RewardRecordsItemModel();
              return RewardRecordsItemWidget(model);
            },
          );
        },
      ),
    );
  }
}
