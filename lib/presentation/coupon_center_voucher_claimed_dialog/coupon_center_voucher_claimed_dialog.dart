import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/coupon_center_voucher_claimed_bloc.dart';
import 'models/coupon_center_voucher_claimed_model.dart'; // ignore_for_file: must_be_immutable

class CouponCenterVoucherClaimedDialog extends StatelessWidget {
  const CouponCenterVoucherClaimedDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CouponCenterVoucherClaimedBloc>(
      create:
          (context) => CouponCenterVoucherClaimedBloc(
            CouponCenterVoucherClaimedState(
              couponCenterVoucherClaimedModelObj:
                  CouponCenterVoucherClaimedModel(),
            ),
          )..add(CouponCenterVoucherClaimedInitialEvent()),
      child: CouponCenterVoucherClaimedDialog(),
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
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.h),
          decoration: AppDecoration.fs2bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder14,
          ),
          child: Column(
            spacing: 12,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 214.h,
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "msg_congratulations2".tr,
                        style: CustomTextStyles.titleMedium18,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_you_have_completed".tr,
                              style: CustomTextStyles.titleMediumBluegray400_1,
                            ),
                            TextSpan(
                              text: "lbl_1_cash_voucher".tr,
                              style: CustomTextStyles.titleMediumAmberA400_2,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 160.h,
                      width: 152.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 90.h,
                            width: 118.h,
                            decoration: BoxDecoration(
                              color: appTheme.lightGreen900B2,
                              borderRadius: BorderRadius.circular(58.h),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 148.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.img06728263ef34542,
                                    height: 148.h,
                                    width: double.maxFinite,
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 90.h,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          SizedBox(
                                            height: 90.h,
                                            width: 112.h,
                                            child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Container(
                                                  height: 70.h,
                                                  width: 110.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          10.h,
                                                        ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment(
                                                        0.5,
                                                        0.26,
                                                      ),
                                                      end: Alignment(0.5, 1),
                                                      colors: [
                                                        appTheme.red60000,
                                                        appTheme.orange30007,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                    height: 82.h,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 6.h,
                                                        ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment
                                                              .bottomCenter,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgCash1,
                                                          height: 72.h,
                                                          width:
                                                              double.maxFinite,
                                                          alignment:
                                                              Alignment.topLeft,
                                                        ),
                                                        Text(
                                                          "lbl_cash_voucher".tr,
                                                          style:
                                                              theme
                                                                  .textTheme
                                                                  .titleSmall,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .imgB004fb626b5f18a,
                                            height: 30.h,
                                            width: 56.h,
                                            alignment: Alignment.topRight,
                                            margin: EdgeInsets.only(top: 24.h),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .imgB004fb626b5f18a30x46,
                                            height: 30.h,
                                            width: 48.h,
                                            alignment: Alignment.bottomLeft,
                                            margin: EdgeInsets.only(
                                              bottom: 20.h,
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
                          CustomImageView(
                            imagePath: ImageConstant.imgB004fb626b5f18a,
                            height: 32.h,
                            width: 60.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(right: 28.h),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomElevatedButton(
                height: 44.h,
                text: "lbl_got_it3".tr,
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientAmberAToOrangeTL6Decoration,
                buttonTextStyle: theme.textTheme.titleMedium!,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
