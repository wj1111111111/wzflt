import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/wallet_deposit_bloc.dart';
import 'models/wallet_deposit_model.dart'; // ignore_for_file: must_be_immutable

class WalletDepositDialog extends StatelessWidget {
  const WalletDepositDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WalletDepositBloc>(
      create:
          (context) => WalletDepositBloc(
            WalletDepositState(walletDepositModelObj: WalletDepositModel()),
          )..add(WalletDepositInitialEvent()),
      child: WalletDepositDialog(),
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
          padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 14.h),
          decoration: AppDecoration.fs6wz.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder14,
          ),
          child: Column(
            spacing: 14,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 6.h),
              Container(
                width: 54.h,
                decoration: AppDecoration.outlineBluegray20005.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 26.h),
                    Container(
                      height: 26.h,
                      width: 26.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12.h),
                        ),
                        border: Border.all(
                          color: appTheme.amber30002,
                          width: 3.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "msg_submitting_deposit".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleMedium18.copyWith(height: 1.11),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
