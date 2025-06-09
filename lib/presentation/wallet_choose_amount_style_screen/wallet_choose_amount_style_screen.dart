import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_radio_button.dart';
import 'bloc/wallet_choose_amount_style_bloc.dart';
import 'models/gridgcash_one_item_model.dart';
import 'models/wallet_choose_amount_style_model.dart';
import 'widgets/gridgcash_one_item_widget.dart';

class WalletChooseAmountStyleScreen extends StatelessWidget {
  const WalletChooseAmountStyleScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WalletChooseAmountStyleBloc>(
      create:
          (context) => WalletChooseAmountStyleBloc(
            WalletChooseAmountStyleState(
              walletChooseAmountStyleModelObj: WalletChooseAmountStyleModel(),
            ),
          )..add(WalletChooseAmountStyleInitialEvent()),
      child: WalletChooseAmountStyleScreen(),
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
              padding: EdgeInsets.only(left: 12.h, top: 16.h, right: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_deposit_mode".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 508.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        _buildColumndepositam(context),
                        _buildGridgcashone(context),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: double.maxFinite,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [_buildRowone(context)],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    width: 222.h,
                    margin: EdgeInsets.only(left: 4.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_payment_quantity".tr,
                            style: CustomTextStyles.bodySmallRed40001,
                          ),
                          TextSpan(
                            text: "lbl_20002".tr,
                            style: CustomTextStyles.bodyLargeLightgreenA700,
                          ),
                          TextSpan(
                            text: "lbl_usdt".tr,
                            style: CustomTextStyles.bodySmallRed40001,
                          ),
                          TextSpan(
                            text: "  \n",
                            style: CustomTextStyles.bodySmallRed4000110,
                          ),
                          TextSpan(
                            text: "lbl_exchange_rate".tr,
                            style: CustomTextStyles.bodyMediumRed40001,
                          ),
                          TextSpan(
                            text: " ",
                            style: CustomTextStyles.bodySmallRed4000110,
                          ),
                          TextSpan(
                            text: "lbl_1_usdt_58".tr,
                            style: CustomTextStyles.bodyLargeRed40001,
                          ),
                          TextSpan(
                            text: "msg_the_rate_is_for".tr,
                            style: CustomTextStyles.bodySmallRed40001,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  _buildColumnactivity(context),
                  SizedBox(height: 26.h),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildColumndepositre(context),
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
  Widget _buildColumnselectban(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_select_bank".tr, style: theme.textTheme.titleMedium),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Container(
                  width: 80.h,
                  padding: EdgeInsets.all(6.h),
                  decoration: AppDecoration.fs4bg.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "lbl_usdt_as_trc20".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallBluegray400_1
                            .copyWith(height: 1.14),
                      ),
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(left: 8.h),
                  color: appTheme.gray90001,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: appTheme.lightGreenA700,
                      width: 1.6.h,
                    ),
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Container(
                    height: 48.h,
                    width: 80.h,
                    decoration: AppDecoration.outlineLightgreenA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                          "lbl_usdt_as_erc20".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleSmall!.copyWith(
                            height: 1.14,
                          ),
                        ),
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgSettingsLightGreenA70020x20,
                          height: 20.h,
                          width: 22.h,
                          alignment: Alignment.bottomRight,
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
    );
  }

  /// Section Widget
  Widget _buildColumndepositam(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 20,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildColumnselectban(context),
          Text("lbl_deposit_amount2".tr, style: theme.textTheme.titleMedium),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGridgcashone(BuildContext context) {
    return BlocSelector<
      WalletChooseAmountStyleBloc,
      WalletChooseAmountStyleState,
      WalletChooseAmountStyleModel?
    >(
      selector: (state) => state.walletChooseAmountStyleModelObj,
      builder: (context, walletChooseAmountStyleModelObj) {
        return ResponsiveGridListBuilder(
          minItemWidth: 1,
          minItemsPerRow: 4,
          maxItemsPerRow: 4,
          horizontalGridSpacing: 8.h,
          verticalGridSpacing: 8.h,
          builder:
              (context, items) => ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                children: items,
              ),
          gridItems: List.generate(
            walletChooseAmountStyleModelObj?.gridgcashOneItemList.length ?? 0,
            (index) {
              GridgcashOneItemModel model =
                  walletChooseAmountStyleModelObj
                      ?.gridgcashOneItemList[index] ??
                  GridgcashOneItemModel();
              return GridgcashOneItemWidget(model);
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRowone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(bottom: 122.h),
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.h),
          decoration: AppDecoration.outlineBluegray70001.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
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
                          "lbl2".tr,
                          style: CustomTextStyles.bodyMediumOnPrimary13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text("lbl_20000".tr, style: theme.textTheme.titleMedium),
              ),
              Spacer(),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_total".tr,
                      style: CustomTextStyles.titleSmallBluegray200,
                    ),
                    TextSpan(
                      text: "lbl_22_bonus".tr,
                      style: CustomTextStyles.titleSmallAmber30002_2,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnactivity(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 12.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 4.h),
            child: BlocBuilder<
              WalletChooseAmountStyleBloc,
              WalletChooseAmountStyleState
            >(
              builder: (context, state) {
                return Column(
                  children: [
                    CustomRadioButton(
                      text: "msg_activity_participation".tr,
                      value: "msg_activity_participation".tr,
                      groupValue: state.radioGroup,
                      onChange: (value) {
                        context.read<WalletChooseAmountStyleBloc>().add(
                          ChangeRadioButtonEvent(value: value),
                        );
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: CustomRadioButton(
                        text: "msg_non_participation".tr,
                        value: "msg_non_participation".tr,
                        groupValue: state.radioGroup,
                        textStyle: CustomTextStyles.titleMediumBluegray400,
                        onChange: (value) {
                          context.read<WalletChooseAmountStyleBloc>().add(
                            ChangeRadioButtonEvent(value: value),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 10.h),
            child: Column(
              spacing: 2,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 4.h,
                        width: 4.h,
                        margin: EdgeInsets.only(top: 4.h),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray400,
                          borderRadius: BorderRadius.circular(2.h),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 288.h,
                          margin: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "msg_recharge_a_specific".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 4.h,
                        width: 4.h,
                        margin: EdgeInsets.only(top: 4.h),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray400,
                          borderRadius: BorderRadius.circular(2.h),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 312.h,
                          child: Text(
                            "msg_this_special_promotion".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.h),
          CustomElevatedButton(
            height: 50.h,
            text: "lbl_deposit".tr,
            margin: EdgeInsets.only(left: 12.h),
            buttonStyle: CustomButtonStyles.none,
            decoration:
                CustomButtonStyles
                    .gradientLightGreenAToLightGreenTL22Decoration,
            buttonTextStyle: theme.textTheme.titleMedium!,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumndepositre(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.h),
            decoration: AppDecoration.fs4bg.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_deposit_record".tr,
                    style: CustomTextStyles.titleSmallLightgreenA700,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img1BlueGray40022x20,
                  height: 22.h,
                  width: 22.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
