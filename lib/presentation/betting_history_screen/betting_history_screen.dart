import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import 'bloc/betting_history_bloc.dart';
import 'models/betting_history_item_model.dart';
import 'models/betting_history_model.dart';
import 'widgets/betting_history_item_widget.dart';

class BettingHistoryScreen extends StatelessWidget {
  const BettingHistoryScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BettingHistoryBloc>(
      create:
          (context) => BettingHistoryBloc(
            BettingHistoryState(bettingHistoryModelObj: BettingHistoryModel()),
          )..add(BettingHistoryInitialEvent()),
      child: BettingHistoryScreen(),
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
              padding: EdgeInsets.all(14.h),
              child: Column(
                spacing: 12,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocSelector<
                    BettingHistoryBloc,
                    BettingHistoryState,
                    BettingHistoryModel?
                  >(
                    selector: (state) => state.bettingHistoryModelObj,
                    builder: (context, bettingHistoryModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.only(left: 24.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.h),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdown,
                            height: 14.h,
                            width: 12.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        iconSize: 14.h,
                        hintText: "lbl_2023_05_11".tr,
                        items: bettingHistoryModelObj?.dropdownItemList ?? [],
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(10.h, 12.h, 8.h, 12.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCalendar,
                            height: 14.h,
                            width: 16.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(maxHeight: 40.h),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 12.h,
                        ),
                      );
                    },
                  ),
                  Container(
                    width: double.maxFinite,
                    decoration: AppDecoration.outlineBlack9002.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Column(
                      spacing: 12,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildRowgame(context),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 10.h),
                          child: Column(
                            spacing: 8,
                            children: [
                              _buildBettinghistory(context),
                              _buildColumnlineninet(context),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 160.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_previous".tr,
                                style: CustomTextStyles.titleSmallBluegray400_1,
                              ),
                              Text(
                                "lbl_next".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 14.h),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.h),
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
      leadingWidth: 23.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        width: 8.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_betting_record2".tr,
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
  Widget _buildRowgame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      decoration: AppDecoration.fs11bg.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text("lbl_game".tr, style: theme.textTheme.titleSmall),
          ),
          Spacer(flex: 65),
          Text("lbl_bet_amount2".tr, style: theme.textTheme.titleSmall),
          Spacer(flex: 34),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text("lbl_payout".tr, style: theme.textTheme.titleSmall),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBettinghistory(BuildContext context) {
    return BlocSelector<
      BettingHistoryBloc,
      BettingHistoryState,
      BettingHistoryModel?
    >(
      selector: (state) => state.bettingHistoryModelObj,
      builder: (context, bettingHistoryModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h),
              child: Divider(
                height: 1.h,
                thickness: 1.h,
                color: appTheme.blueGray90017,
              ),
            );
          },
          itemCount: bettingHistoryModelObj?.bettingHistoryItemList.length ?? 0,
          itemBuilder: (context, index) {
            BettingHistoryItemModel model =
                bettingHistoryModelObj?.bettingHistoryItemList[index] ??
                BettingHistoryItemModel();
            return BettingHistoryItemWidget(model);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnlineninet(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 6,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(width: double.maxFinite, child: Divider(indent: 22.h)),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaximizeBlueGray400,
                  height: 14.h,
                  width: 18.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_fortune_tiger".tr,
                          style: CustomTextStyles.titleSmallBluegray400_1,
                        ),
                        Text(
                          "msg_2022_10_26_12_33_24".tr,
                          style: CustomTextStyles.labelLargeBluegray70001,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h, bottom: 4.h),
                  child: Text(
                    "lbl_1_003".tr,
                    style: CustomTextStyles.titleSmallBluegray400_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h, bottom: 4.h),
                  child: _buildStackOne(context, one: "lbl2".tr),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 4.h),
                  child: Text(
                    "lbl_1_96".tr,
                    style: CustomTextStyles.titleSmallLightgreenA700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h, bottom: 4.h),
                  child: _buildStackOne(context, one: "lbl2".tr),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildStackOne(BuildContext context, {required String one}) {
    return SizedBox(
      height: 18.h,
      width: 20.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse25,
            height: 18.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(9.0.h),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: Text(
                one,
                style: CustomTextStyles.bodyMediumOnPrimary13.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
