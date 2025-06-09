import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/coupon_center_my_vouchers_download_bloc.dart';
import 'models/coupon_center_my_vouchers_download_model.dart'; // ignore_for_file: must_be_immutable

class CouponCenterMyVouchersDownloadDialog extends StatelessWidget {
  const CouponCenterMyVouchersDownloadDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CouponCenterMyVouchersDownloadBloc>(
      create:
          (context) => CouponCenterMyVouchersDownloadBloc(
            CouponCenterMyVouchersDownloadState(
              couponCenterMyVouchersDownloadModelObj:
                  CouponCenterMyVouchersDownloadModel(),
            ),
          )..add(CouponCenterMyVouchersDownloadInitialEvent()),
      child: CouponCenterMyVouchersDownloadDialog(),
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
            spacing: 20,
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
                  "msg_this_ticket_can".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumBluegray400.copyWith(
                    height: 1.25,
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        height: 50.h,
                        text: "lbl_cancel".tr,
                        buttonStyle: CustomButtonStyles.fillGrayBL121,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumLightgreen800,
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        height: 50.h,
                        text: "lbl_download".tr,
                        buttonStyle: CustomButtonStyles.none,
                        decoration:
                            CustomButtonStyles
                                .gradientLightGreenAToLightGreenBR12Decoration,
                        buttonTextStyle: theme.textTheme.titleMedium!,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
