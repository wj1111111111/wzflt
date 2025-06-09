import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/wallet_withdraw_wager_requirement_one_bloc.dart';
import 'models/wallet_withdraw_wager_requirement_one_model.dart'; // ignore_for_file: must_be_immutable

class WalletWithdrawWagerRequirementOneBottomsheet extends StatelessWidget {
  const WalletWithdrawWagerRequirementOneBottomsheet({Key? key})
    : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WalletWithdrawWagerRequirementOneBloc>(
      create:
          (context) => WalletWithdrawWagerRequirementOneBloc(
            WalletWithdrawWagerRequirementOneState(
              walletWithdrawWagerRequirementOneModelObj:
                  WalletWithdrawWagerRequirementOneModel(),
            ),
          )..add(WalletWithdrawWagerRequirementOneInitialEvent()),
      child: WalletWithdrawWagerRequirementOneBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 6.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL14,
      ),
      child: Column(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.h),
          Container(
            decoration: AppDecoration.outlineBlack,
            child: Text(
              "msg_upgrading_your_vlp".tr,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Container(
            width: double.maxFinite,
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Column(
              spacing: 4,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildRowviplevelone(context),
                _buildColumnlvzero(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowviplevelone(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      decoration: AppDecoration.gradientLightGreenAToLightgreen90005.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL5,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 34.h,
            margin: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_vip_level".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeOnPrimaryBlack_1,
            ),
          ),
          SizedBox(
            width: 84.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                VerticalDivider(
                  width: 1.h,
                  thickness: 1.h,
                  color: appTheme.lightGreen9007f,
                ),
                SizedBox(
                  width: 68.h,
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame2131330434,
                        height: 24.h,
                        width: 28.h,
                      ),
                      Text(
                        "lbl_withdrawal_fee3".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.labelLargeGray200,
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  width: 1.h,
                  thickness: 1.h,
                  color: appTheme.lightGreen9007f,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 74.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage2924x24,
                  height: 24.h,
                  width: 26.h,
                  margin: EdgeInsets.only(left: 20.h),
                ),
                Text(
                  "msg_number_of_withdrawals4".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeGray200,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: VerticalDivider(
              width: 1.h,
              thickness: 1.h,
              color: appTheme.lightGreen9007f,
            ),
          ),
          Expanded(
            child: Container(
              height: 46.h,
              margin: EdgeInsets.only(left: 4.h),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame2131330434,
                    height: 24.h,
                    width: 28.h,
                    alignment: Alignment.topCenter,
                  ),
                  Text(
                    "msg_single_withdrawal6".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeGray200,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage3016x16,
                    height: 16.h,
                    width: 18.h,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 34.h, top: 4.h),
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
  Widget _buildColumnlvzero(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 2,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 18.h),
            child: _buildRowiconviptwo(
              context,
              iconviptwoOne: ImageConstant.imgIconVip0,
              lvtwoOne: "lbl_lv_0".tr,
              threeTwo: "lbl_32".tr,
              oneTwo: "lbl_12".tr,
              p1200Two: "lbl_1_2002".tr,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 18.h, top: 2.h, bottom: 2.h),
            decoration: AppDecoration.fillGray90021,
            width: double.maxFinite,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconVip1,
                      height: 16.h,
                      width: 16.h,
                      margin: EdgeInsets.only(left: 4.h),
                    ),
                    Text(
                      "lbl_lv_12".tr,
                      style: CustomTextStyles.labelLargeGray300,
                    ),
                  ],
                ),
                Spacer(flex: 23),
                Text("lbl_32".tr, style: theme.textTheme.labelLarge),
                Spacer(flex: 34),
                Text("lbl_12".tr, style: theme.textTheme.labelLarge),
                Spacer(flex: 41),
                Padding(
                  padding: EdgeInsets.only(right: 20.h),
                  child: Text(
                    "lbl_1_2002".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 18.h),
            child: _buildRowiconviptwo(
              context,
              iconviptwoOne: ImageConstant.imgIconVip2,
              lvtwoOne: "lbl_lv_22".tr,
              threeTwo: "lbl_32".tr,
              oneTwo: "lbl_12".tr,
              p1200Two: "lbl_1_2002".tr,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 18.h, top: 2.h, bottom: 2.h),
            decoration: AppDecoration.fillGray90021,
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: _buildColumniconvipth(
                    context,
                    iconvipthree: ImageConstant.imgIconVip3,
                    lvthreeOne: "lbl_lv_32".tr,
                  ),
                ),
                Spacer(flex: 22),
                Padding(
                  padding: EdgeInsets.only(top: 6.h),
                  child: Text("lbl_32".tr, style: theme.textTheme.labelLarge),
                ),
                Spacer(flex: 34),
                Padding(
                  padding: EdgeInsets.only(top: 6.h),
                  child: Text("lbl_12".tr, style: theme.textTheme.labelLarge),
                ),
                Spacer(flex: 42),
                Padding(
                  padding: EdgeInsets.only(top: 6.h, right: 20.h),
                  child: Text(
                    "lbl_1_2002".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 18.h),
            child: _buildRowiconviptwo(
              context,
              iconviptwoOne: ImageConstant.imgIconVip4,
              lvtwoOne: "lbl_lv_42".tr,
              threeTwo: "lbl_32".tr,
              oneTwo: "lbl_12".tr,
              p1200Two: "lbl_1_2002".tr,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 18.h, top: 2.h, bottom: 2.h),
            decoration: AppDecoration.fillGray90021,
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: _buildColumniconvipth(
                    context,
                    iconvipthree: ImageConstant.imgIconVip5,
                    lvthreeOne: "lbl_lv_5".tr,
                  ),
                ),
                Spacer(flex: 24),
                Align(
                  alignment: Alignment.center,
                  child: Text("lbl5".tr, style: theme.textTheme.labelLarge),
                ),
                Spacer(flex: 34),
                Padding(
                  padding: EdgeInsets.only(top: 6.h),
                  child: Text("lbl_12".tr, style: theme.textTheme.labelLarge),
                ),
                Spacer(flex: 40),
                Padding(
                  padding: EdgeInsets.only(top: 6.h, right: 20.h),
                  child: Text(
                    "lbl_1_2002".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 18.h),
            child: _buildRowiconviptwo(
              context,
              iconviptwoOne: ImageConstant.imgIconVip6,
              lvtwoOne: "lbl_lv_6".tr,
              threeTwo: "lbl_32".tr,
              oneTwo: "lbl_12".tr,
              p1200Two: "lbl_1_2002".tr,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 18.h, top: 2.h, bottom: 2.h),
            decoration: AppDecoration.fillGray90021,
            width: double.maxFinite,
            child: Row(
              children: [
                _buildColumniconvipth(
                  context,
                  iconvipthree: ImageConstant.imgIconVip7,
                  lvthreeOne: "lbl_lv_7".tr,
                ),
                Spacer(flex: 22),
                Text("lbl_32".tr, style: theme.textTheme.labelLarge),
                Spacer(flex: 34),
                Text("lbl_12".tr, style: theme.textTheme.labelLarge),
                Spacer(flex: 42),
                Padding(
                  padding: EdgeInsets.only(right: 20.h),
                  child: Text(
                    "lbl_1_2002".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 18.h),
            child: _buildRowiconviptwo(
              context,
              iconviptwoOne: ImageConstant.imgIconVip8,
              lvtwoOne: "lbl_lv_8".tr,
              threeTwo: "lbl_32".tr,
              oneTwo: "lbl_22".tr,
              p1200Two: "lbl_1_2002".tr,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 18.h, top: 2.h, bottom: 2.h),
            decoration: AppDecoration.fillGray90021,
            width: double.maxFinite,
            child: Row(
              children: [
                _buildColumniconvipth(
                  context,
                  iconvipthree: ImageConstant.imgIconVip9,
                  lvthreeOne: "lbl_lv_9".tr,
                ),
                Spacer(flex: 25),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: Text("lbl5".tr, style: theme.textTheme.labelLarge),
                  ),
                ),
                Spacer(flex: 35),
                Text("lbl_3".tr, style: theme.textTheme.labelLarge),
                Spacer(flex: 39),
                Padding(
                  padding: EdgeInsets.only(right: 20.h),
                  child: Text(
                    "lbl_1_2002".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 14.h, right: 28.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconVip10,
                      height: 16.h,
                      width: 16.h,
                      margin: EdgeInsets.symmetric(horizontal: 6.h),
                    ),
                    Text(
                      "lbl_lv_10".tr,
                      style: CustomTextStyles.labelLargeGray300,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 6.h),
                    child: Text("lbl5".tr, style: theme.textTheme.labelLarge),
                  ),
                ),
                Text("lbl_unlimited".tr, style: theme.textTheme.labelLarge),
                Text("lbl_unlimited".tr, style: theme.textTheme.labelLarge),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildColumniconvipth(
    BuildContext context, {
    required String iconvipthree,
    required String lvthreeOne,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: iconvipthree,
          height: 16.h,
          width: 16.h,
          margin: EdgeInsets.symmetric(horizontal: 4.h),
        ),
        Text(
          lvthreeOne,
          style: CustomTextStyles.labelLargeGray300.copyWith(
            color: appTheme.gray300,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildRowiconviptwo(
    BuildContext context, {
    required String iconviptwoOne,
    required String lvtwoOne,
    required String threeTwo,
    required String oneTwo,
    required String p1200Two,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              CustomImageView(
                imagePath: iconviptwoOne,
                height: 16.h,
                width: 16.h,
                margin: EdgeInsets.symmetric(horizontal: 4.h),
              ),
              Text(
                lvtwoOne,
                style: CustomTextStyles.labelLargeGray300.copyWith(
                  color: appTheme.gray300,
                ),
              ),
            ],
          ),
        ),
        Spacer(flex: 22),
        Padding(
          padding: EdgeInsets.only(bottom: 6.h),
          child: Text(
            threeTwo,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.blueGray400,
            ),
          ),
        ),
        Spacer(flex: 34),
        Padding(
          padding: EdgeInsets.only(bottom: 6.h),
          child: Text(
            oneTwo,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.blueGray400,
            ),
          ),
        ),
        Spacer(flex: 42),
        Padding(
          padding: EdgeInsets.only(right: 20.h, bottom: 6.h),
          child: Text(
            p1200Two,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.blueGray400,
            ),
          ),
        ),
      ],
    );
  }
}
