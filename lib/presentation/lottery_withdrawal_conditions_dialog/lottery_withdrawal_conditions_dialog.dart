import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/lottery_withdrawal_conditions_bloc.dart';
import 'models/lottery_withdrawal_conditions_model.dart';
import 'models/timelinecheckma_item_model.dart';
import 'widgets/columnpaymentre_item_widget.dart';
import 'widgets/stackcheckmark_item_widget.dart'; // ignore_for_file: must_be_immutable

class LotteryWithdrawalConditionsDialog extends StatelessWidget {
  const LotteryWithdrawalConditionsDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LotteryWithdrawalConditionsBloc>(
      create:
          (context) => LotteryWithdrawalConditionsBloc(
            LotteryWithdrawalConditionsState(
              lotteryWithdrawalConditionsModelObj:
                  LotteryWithdrawalConditionsModel(),
            ),
          )..add(LotteryWithdrawalConditionsInitialEvent()),
      child: LotteryWithdrawalConditionsDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          decoration: AppDecoration.gradientBlueGrayToBluegray80011.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL201,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildStackviewone(context),
              SizedBox(height: 2.h),
              _buildStackquickcash(context),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 28.h,
                  width: 100.h,
                  margin: EdgeInsets.only(right: 10.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTelevisionRedA20001,
                        height: 28.h,
                        width: double.maxFinite,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 6.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgMaskGroup22x22,
                                      height: 22.h,
                                      width: 22.h,
                                      alignment: Alignment.center,
                                    ),
                                    Text(
                                      "lbl_get_bonus".tr,
                                      style:
                                          CustomTextStyles
                                              .labelLargeOnPrimary_6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomElevatedButton(
                height: 40.h,
                text: "msg_invite_friends_to3".tr,
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles
                        .gradientLightGreenAToLightGreenTL22Decoration,
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStackviewone(BuildContext context) {
    return SizedBox(
      height: 164.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.circleBorder14,
              ),
              child: Container(
                height: 140.h,
                decoration: AppDecoration.gradientGreenToGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder14,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                      opacity: 0.8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgF1140x344,
                        height: 140.h,
                        width: double.maxFinite,
                        radius: BorderRadius.circular(12.h),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 78.h,
                        width: 344.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 1),
                            end: Alignment(0.5, 0),
                            colors: [
                              appTheme.blueGray80011,
                              appTheme.blueGray80011.withValues(alpha: 0),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 120.h,
            width: 134.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTdr23,
                  height: 78.h,
                  width: 86.h,
                  margin: EdgeInsets.only(bottom: 8.h),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 120.h,
                    margin: EdgeInsets.only(left: 10.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1100,
                          height: 120.h,
                          width: 120.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage1104,
                          height: 38.h,
                          width: 42.h,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(right: 8.h, bottom: 18.h),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "msg_get_500_for_free".tr,
              style: CustomTextStyles.headlineMediumArialOnPrimaryBlack,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackquickcash(BuildContext context) {
    return Container(
      height: 246.h,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "msg_quick_cash_withdrawl".tr,
              style: CustomTextStyles.bodyMediumOnPrimary,
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              spacing: 6,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 6.h, right: 4.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        spacing: 2,
                        children: [
                          Text(
                            "msg_withdrawal_account".tr,
                            style: CustomTextStyles.bodyMediumBluegray400,
                          ),
                          Text(
                            "msg_withdrawal_method".tr,
                            style: CustomTextStyles.bodyMediumBluegray400,
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          spacing: 4,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "lbl_9409303930".tr,
                              style: CustomTextStyles.bodyMediumBluegray400,
                            ),
                            Text(
                              "lbl_account_wallet".tr,
                              style: CustomTextStyles.bodyMediumBluegray400,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: BlocSelector<
                    LotteryWithdrawalConditionsBloc,
                    LotteryWithdrawalConditionsState,
                    LotteryWithdrawalConditionsModel?
                  >(
                    selector:
                        (state) => state.lotteryWithdrawalConditionsModelObj,
                    builder: (context, lotteryWithdrawalConditionsModelObj) {
                      return Timeline.tileBuilder(
                        shrinkWrap: true,
                        theme: TimelineThemeData(
                          nodePosition: 0.2,
                          indicatorPosition: 0.5,
                        ),
                        builder: TimelineTileBuilder.connected(
                          connectionDirection: ConnectionDirection.before,
                          itemCount:
                              lotteryWithdrawalConditionsModelObj
                                  ?.timelinecheckmaItemList
                                  .length ??
                              0,
                          indicatorBuilder: (context, index) {
                            TimelinecheckmaItemModel model =
                                lotteryWithdrawalConditionsModelObj
                                    ?.timelinecheckmaItemList[index] ??
                                TimelinecheckmaItemModel();
                            return StackcheckmarkItemWidget(model);
                          },
                          contentsBuilder: (context, index) {
                            TimelinecheckmaItemModel model =
                                lotteryWithdrawalConditionsModelObj
                                    ?.timelinecheckmaItemList[index] ??
                                TimelinecheckmaItemModel();
                            return ColumnpaymentreItemWidget(model);
                          },
                          connectorBuilder: (context, index, type) {
                            return SolidLineConnector(
                              thickness: 1.h,
                              color: appTheme.blueGray70001,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgThumbsUp42x44,
                              height: 38.h,
                              width: 40.h,
                            ),
                            Text(
                              "lbl_92_59".tr,
                              style:
                                  CustomTextStyles
                                      .displayMediumArialYellowA40002Black,
                            ),
                          ],
                        ),
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
}
