import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/bonus_details_item_model.dart';

// ignore_for_file: must_be_immutable
class BonusDetailsItemWidget extends StatelessWidget {
  BonusDetailsItemWidget(this.bonusDetailsItemModelObj, {Key? key})
    : super(key: key);

  BonusDetailsItemModel bonusDetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.h),
          decoration: AppDecoration.outline1.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: bonusDetailsItemModelObj.inviteBonus!,
                      height: 32.h,
                      width: 34.h,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.h, bottom: 2.h),
                        child: Text(
                          bonusDetailsItemModelObj.invitebonus1!,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      bonusDetailsItemModelObj.price!,
                      style: CustomTextStyles.titleSmallAmberA400_2,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.h),
              SizedBox(width: double.maxFinite, child: Divider()),
              SizedBox(height: 16.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 4.h),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bonusDetailsItemModelObj.priceOne!,
                            style: CustomTextStyles.titleSmallLightgreenA700,
                          ),
                          Text(
                            bonusDetailsItemModelObj.invite!,
                            style: CustomTextStyles.titleSmallBluegray400_1,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bonusDetailsItemModelObj.priceTwo!,
                          style: CustomTextStyles.titleSmallLightgreenA700,
                        ),
                        Text(
                          bonusDetailsItemModelObj.invitedeposit!,
                          style: CustomTextStyles.titleSmallBluegray400_1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 4.h),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bonusDetailsItemModelObj.priceThree!,
                            style: CustomTextStyles.titleSmallLightgreenA700,
                          ),
                          Text(
                            bonusDetailsItemModelObj.invitation!,
                            style: CustomTextStyles.titleSmallBluegray400_1,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bonusDetailsItemModelObj.priceFour!,
                          style: CustomTextStyles.titleSmallLightgreenA700,
                        ),
                        Text(
                          bonusDetailsItemModelObj.bettingrebate!,
                          style: CustomTextStyles.titleSmallBluegray400_1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  bonusDetailsItemModelObj.priceFive!,
                  style: CustomTextStyles.titleSmallLightgreenA700,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  bonusDetailsItemModelObj.inviteesbonus!,
                  style: CustomTextStyles.titleSmallBluegray400_1,
                ),
              ),
              SizedBox(height: 16.h),
              _buildSharewithyour(context),
              SizedBox(height: 8.h),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSharewithyour(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_share_with_your2".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleSmallLightgreenA700,
    );
  }
}
