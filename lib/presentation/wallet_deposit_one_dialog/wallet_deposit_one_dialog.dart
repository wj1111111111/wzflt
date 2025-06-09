import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/wallet_deposit_one_bloc.dart';
import 'models/wallet_deposit_one_model.dart'; // ignore_for_file: must_be_immutable

class WalletDepositOneDialog extends StatelessWidget {
  const WalletDepositOneDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WalletDepositOneBloc>(
      create:
          (context) => WalletDepositOneBloc(
            WalletDepositOneState(
              walletDepositOneModelObj: WalletDepositOneModel(),
            ),
          )..add(WalletDepositOneInitialEvent()),
      child: WalletDepositOneDialog(),
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
          decoration: AppDecoration.fs2bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder14,
          ),
          child: Column(
            spacing: 18,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10.h),
              Text(
                "lbl_confirmation".tr,
                style: CustomTextStyles.titleMedium18,
              ),
              SizedBox(
                width: double.maxFinite,
                child: Text(
                  "msg_success_please_go".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumBluegray400.copyWith(
                    height: 1.25,
                  ),
                ),
              ),
              CustomElevatedButton(
                height: 50.h,
                text: "lbl_go".tr,
                buttonStyle: CustomButtonStyles.fillGrayBL12,
                buttonTextStyle: CustomTextStyles.titleLargeBlue400,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
