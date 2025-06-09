import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/coupon_system_condition_display_one_bloc.dart';
import 'models/coupon_system_condition_display_one_model.dart'; // ignore_for_file: must_be_immutable

class CouponSystemConditionDisplayOneDialog extends StatelessWidget {
  const CouponSystemConditionDisplayOneDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CouponSystemConditionDisplayOneBloc>(
      create:
          (context) => CouponSystemConditionDisplayOneBloc(
            CouponSystemConditionDisplayOneState(
              couponSystemConditionDisplayOneModelObj:
                  CouponSystemConditionDisplayOneModel(),
            ),
          )..add(CouponSystemConditionDisplayOneInitialEvent()),
      child: CouponSystemConditionDisplayOneDialog(),
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
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 18.h),
          decoration: AppDecoration.fs4bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Column(
            spacing: 12,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "msg_send_a_help_invitation".tr,
                style: theme.textTheme.titleSmall,
              ),
              Container(
                padding: EdgeInsets.all(10.h),
                decoration: AppDecoration.outlineBluegray90041.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "lbl_5547039715226".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                            Text(
                              "lbl_5547039715226".tr,
                              style: CustomTextStyles.labelLargeGray40006,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "lbl_5547039715226".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "lbl_5547039715226".tr,
                      style: CustomTextStyles.labelLargeGray40006,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        height: 40.h,
                        text: "msg_send_message_on".tr,
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 4.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCall,
                            height: 24.h,
                            width: 24.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.none,
                        decoration:
                            CustomButtonStyles
                                .gradientAmberToAmberTL2Decoration,
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        height: 40.h,
                        text: "msg_sending_a_text_message".tr,
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 8.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgUserOnprimary24x24,
                            height: 24.h,
                            width: 24.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.none,
                        decoration:
                            CustomButtonStyles
                                .gradientLightGreenAToLightGreenDecoration,
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
