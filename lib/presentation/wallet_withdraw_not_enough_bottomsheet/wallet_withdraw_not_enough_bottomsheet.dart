import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/wallet_withdraw_not_enough_bloc.dart';
import 'models/wallet_withdraw_not_enough_model.dart'; // ignore_for_file: must_be_immutable

class WalletWithdrawNotEnoughBottomsheet extends StatelessWidget {
  const WalletWithdrawNotEnoughBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WalletWithdrawNotEnoughBloc>(
      create:
          (context) => WalletWithdrawNotEnoughBloc(
            WalletWithdrawNotEnoughState(
              walletWithdrawNotEnoughModelObj: WalletWithdrawNotEnoughModel(),
            ),
          )..add(WalletWithdrawNotEnoughInitialEvent()),
      child: WalletWithdrawNotEnoughBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.h),
      decoration: AppDecoration.fs2bg.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: AppDecoration.outlineBlack90010,
            child: Text(
              "lbl_title".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Text(
            "msg_upgrading_your_vip".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyMediumBluegray40015.copyWith(
              height: 1.20,
            ),
          ),
        ],
      ),
    );
  }
}
