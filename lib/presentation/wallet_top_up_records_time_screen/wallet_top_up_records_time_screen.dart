import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/wallet_top_up_records_time_bloc.dart';
import 'models/chipviewtoday_item_model.dart';
import 'models/listgcash_item_model.dart';
import 'models/wallet_top_up_records_time_model.dart';
import 'widgets/chipviewtoday_item_widget.dart';
import 'widgets/listgcash_item_widget.dart';

class WalletTopUpRecordsTimeScreen extends StatelessWidget {
  const WalletTopUpRecordsTimeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WalletTopUpRecordsTimeBloc>(
      create:
          (context) => WalletTopUpRecordsTimeBloc(
            WalletTopUpRecordsTimeState(
              walletTopUpRecordsTimeModelObj: WalletTopUpRecordsTimeModel(),
            ),
          )..add(WalletTopUpRecordsTimeInitialEvent()),
      child: WalletTopUpRecordsTimeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildColumnarrowleft(context),
              Expanded(
                child: SizedBox(
                  height: 686.h,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      _buildColumngcashtwo(context),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.only(
                          left: 18.h,
                          top: 6.h,
                          right: 18.h,
                        ),
                        decoration: AppDecoration.fillBlack9007,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            _buildChipviewtoday(context),
                            SizedBox(height: 556.h),
                          ],
                        ),
                      ),
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
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: AppDecoration.fs10bg,
      child: Column(
        spacing: 30,
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
              text: "lbl_deposit_record".tr,
              margin: EdgeInsets.only(left: 10.h),
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 42.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_order".tr,
                  style: CustomTextStyles.titleSmallBluegray400_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFavoriteBlueGray70001,
                  height: 10.h,
                  width: 18.h,
                  radius: BorderRadius.circular(2.h),
                  margin: EdgeInsets.only(left: 2.h),
                ),
                Spacer(flex: 50),
                Text(
                  "lbl_way".tr,
                  style: CustomTextStyles.titleSmallBluegray400_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFavoriteBlueGray70001,
                  height: 10.h,
                  width: 18.h,
                  radius: BorderRadius.circular(2.h),
                  margin: EdgeInsets.only(left: 4.h),
                ),
                Spacer(flex: 49),
                Text("lbl_today".tr, style: theme.textTheme.titleSmall),
                CustomImageView(
                  imagePath: ImageConstant.imgUserOnprimary10x16,
                  height: 10.h,
                  width: 18.h,
                  radius: BorderRadius.circular(2.h),
                  margin: EdgeInsets.only(left: 4.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumngcashtwo(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 14.h, top: 18.h, right: 14.h),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: _buildRowgcashOne(
                context,
                gcashOne: "lbl_gcash".tr,
                priceOne: "lbl_200_002".tr,
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_2023_05_12_12_33_56".tr,
                    style: CustomTextStyles.labelLargeBluegray200,
                  ),
                  Spacer(),
                  Container(
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                      color: appTheme.greenA70005,
                      borderRadius: BorderRadius.circular(3.h),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_credited".tr,
                      style: CustomTextStyles.labelLargeBluegray200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              width: double.maxFinite,
              child: Divider(color: appTheme.gray90009.withValues(alpha: 0.2)),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              width: double.maxFinite,
              child: _buildRowgcashOne(
                context,
                gcashOne: "lbl_gcash".tr,
                priceOne: "lbl_100_002".tr,
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_2023_05_12_12_33_56".tr,
                    style: CustomTextStyles.labelLargeBluegray200,
                  ),
                  Spacer(),
                  Container(
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                      color: appTheme.purpleA40001,
                      borderRadius: BorderRadius.circular(3.h),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_cancelled".tr,
                      style: CustomTextStyles.labelLargeBluegray200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              width: double.maxFinite,
              child: Divider(color: appTheme.gray90009.withValues(alpha: 0.2)),
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: BlocSelector<
                WalletTopUpRecordsTimeBloc,
                WalletTopUpRecordsTimeState,
                WalletTopUpRecordsTimeModel?
              >(
                selector: (state) => state.walletTopUpRecordsTimeModelObj,
                builder: (context, walletTopUpRecordsTimeModelObj) {
                  return ListView.separated(
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0.h),
                        child: Divider(
                          height: 1.h,
                          thickness: 1.h,
                          color: appTheme.gray90009.withValues(alpha: 0.2),
                        ),
                      );
                    },
                    itemCount:
                        walletTopUpRecordsTimeModelObj
                            ?.listgcashItemList
                            .length ??
                        0,
                    itemBuilder: (context, index) {
                      ListgcashItemModel model =
                          walletTopUpRecordsTimeModelObj
                              ?.listgcashItemList[index] ??
                          ListgcashItemModel();
                      return ListgcashItemWidget(model);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChipviewtoday(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: BlocSelector<
        WalletTopUpRecordsTimeBloc,
        WalletTopUpRecordsTimeState,
        WalletTopUpRecordsTimeModel?
      >(
        selector: (state) => state.walletTopUpRecordsTimeModelObj,
        builder: (context, walletTopUpRecordsTimeModelObj) {
          return Wrap(
            runSpacing: 8.h,
            spacing: 8.h,
            children: List<Widget>.generate(
              walletTopUpRecordsTimeModelObj?.chipviewtodayItemList.length ?? 0,
              (index) {
                ChipviewtodayItemModel model =
                    walletTopUpRecordsTimeModelObj
                        ?.chipviewtodayItemList[index] ??
                    ChipviewtodayItemModel();
                return ChipviewtodayItemWidget(model);
              },
            ),
          );
        },
      ),
    );
  }

  /// Common widget
  Widget _buildRowgcashOne(
    BuildContext context, {
    required String gcashOne,
    required String priceOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          gcashOne,
          style: CustomTextStyles.titleSmallBluegray200_1.copyWith(
            color: appTheme.blueGray200,
          ),
        ),
        Text(
          priceOne,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }
}
