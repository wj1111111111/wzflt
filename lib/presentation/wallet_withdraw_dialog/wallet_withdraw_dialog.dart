import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/wallet_withdraw_bloc.dart';
import 'models/wallet_withdraw_model.dart'; // ignore_for_file: must_be_immutable

class WalletWithdrawDialog extends StatelessWidget {
  const WalletWithdrawDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WalletWithdrawBloc>(
      create:
          (context) => WalletWithdrawBloc(
            WalletWithdrawState(walletWithdrawModelObj: WalletWithdrawModel()),
          )..add(WalletWithdrawInitialEvent()),
      child: WalletWithdrawDialog(),
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
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 22.h),
          decoration: AppDecoration.fs4bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Column(
            spacing: 14,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_select_deposit_type".tr,
                style: theme.textTheme.titleMedium,
              ),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 2.h),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 154.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(vertical: 22.h),
                              decoration: AppDecoration.gradientAmberToAmber
                                  .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                              child: Column(
                                spacing: 6,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 32.h),
                                  Text(
                                    "msg_electronic_wallet2".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgForwardOnprimary,
                                    height: 8.h,
                                    width: 20.h,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 78.h,
                                width: 80.h,
                                decoration: AppDecoration.outlineGray90001
                                    .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder38,
                                    ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.img26x40,
                                      height: 26.h,
                                      width: 42.h,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 156.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(vertical: 22.h),
                              decoration: AppDecoration
                                  .gradientLightGreenAToLightgreen800
                                  .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                              child: Column(
                                spacing: 6,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 32.h),
                                  Text(
                                    "lbl_bank_account".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgForwardOnprimary,
                                    height: 8.h,
                                    width: 20.h,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 78.h,
                                width: 80.h,
                                decoration: AppDecoration.outlineGray90001
                                    .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder38,
                                    ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.img36x44,
                                      height: 36.h,
                                      width: 46.h,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.h),
            ],
          ),
        ),
      ],
    );
  }
}
