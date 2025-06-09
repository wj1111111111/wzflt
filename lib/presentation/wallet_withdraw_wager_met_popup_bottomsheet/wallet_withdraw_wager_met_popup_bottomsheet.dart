import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/wallet_withdraw_wager_met_popup_bloc.dart';
import 'models/wallet_withdraw_wager_met_popup_model.dart'; // ignore_for_file: must_be_immutable

class WalletWithdrawWagerMetPopupBottomsheet extends StatelessWidget {
  const WalletWithdrawWagerMetPopupBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WalletWithdrawWagerMetPopupBloc>(
      create:
          (context) => WalletWithdrawWagerMetPopupBloc(
            WalletWithdrawWagerMetPopupState(
              walletWithdrawWagerMetPopupModelObj:
                  WalletWithdrawWagerMetPopupModel(),
            ),
          )..add(WalletWithdrawWagerMetPopupInitialEvent()),
      child: WalletWithdrawWagerMetPopupBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 22.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRowplayone(context),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text("lbl_next_stage".tr, style: theme.textTheme.titleSmall),
          ),
          SizedBox(height: 4.h),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_complete_required".tr,
              style: CustomTextStyles.titleSmallBluegray400_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_withdrawal_limit_20".tr,
              style: CustomTextStyles.titleSmallBluegray400_1,
            ),
          ),
          SizedBox(height: 12.h),
          _buildColumncompletet(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowplayone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlayGray90002,
            height: 30.h,
            width: 30.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 288.h,
              margin: EdgeInsets.only(left: 6.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_the".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    TextSpan(
                      text: "msg_withdrawal_limit".tr,
                      style: CustomTextStyles.titleMediumLightgreenA700_1,
                    ),
                    TextSpan(
                      text: "msg_will_be_increased".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumncompletet(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 12.h),
      decoration: AppDecoration.column374,
      child: Column(
        spacing: 6,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_complete_the_remaining2".tr,
                  style: theme.textTheme.titleSmall,
                ),
                TextSpan(
                  text: "lbl_1314_19".tr,
                  style: CustomTextStyles.titleSmallYellowA40007,
                ),
              ],
            ),
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            width: double.maxFinite,
            child: SliderTheme(
              data: SliderThemeData(
                trackShape: RoundedRectSliderTrackShape(),
                inactiveTrackColor: appTheme.lightGreen90010,
                thumbColor: appTheme.limeA700,
                thumbShape: RoundSliderThumbShape(),
              ),
              child: Slider(
                value: 87.38,
                min: 0.0,
                max: 100.0,
                onChanged: (value) {},
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "lbl_79_completed".tr,
              style: CustomTextStyles.labelLargeOnPrimary_6,
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_withdraw_total_redemption".tr,
                  style: theme.textTheme.titleSmall,
                ),
                TextSpan(text: " "),
                TextSpan(
                  text: "lbl_999_992".tr,
                  style: CustomTextStyles.titleSmallYellowA40007,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
