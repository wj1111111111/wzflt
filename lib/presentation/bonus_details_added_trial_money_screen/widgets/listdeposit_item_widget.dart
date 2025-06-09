import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/listdeposit_item_model.dart';

// ignore_for_file: must_be_immutable
class ListdepositItemWidget extends StatelessWidget {
  ListdepositItemWidget(this.listdepositItemModelObj, {Key? key})
    : super(key: key);

  ListdepositItemModel listdepositItemModelObj;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(8.h),
          decoration: AppDecoration.outline1.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 4.h, right: 6.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: listdepositItemModelObj.depositBonus!,
                      height: 32.h,
                      width: 34.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.h, bottom: 2.h),
                        child: Text(
                          listdepositItemModelObj.depositbonus1!,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 6.h),
                      child: Text(
                        listdepositItemModelObj.price!,
                        style: CustomTextStyles.titleSmallAmberA400_2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
              SizedBox(
                width: double.maxFinite,
                child: Divider(indent: 4.h, endIndent: 4.h),
              ),
              SizedBox(height: 6.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 8.h),
                decoration: AppDecoration.fs2bg.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      listdepositItemModelObj.firstdeposit!,
                      style: theme.textTheme.titleSmall,
                    ),
                    Text(
                      listdepositItemModelObj.thirty!,
                      style: CustomTextStyles.titleSmallLightgreenA700,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 6.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      listdepositItemModelObj.seconddeposit!,
                      style: CustomTextStyles.titleSmallBluegray400_1,
                    ),
                    Text(
                      listdepositItemModelObj.thirtyOne!,
                      style: CustomTextStyles.titleSmallLightgreenA700,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 6.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      listdepositItemModelObj.firstdaily!,
                      style: CustomTextStyles.titleSmallBluegray400_1,
                    ),
                    Text(
                      listdepositItemModelObj.thirtyTwo!,
                      style: CustomTextStyles.titleSmallLightgreenA700,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 6.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      listdepositItemModelObj.fixedpayment!,
                      style: CustomTextStyles.titleSmallBluegray400_1,
                    ),
                    Text(
                      listdepositItemModelObj.thirtyThree!,
                      style: CustomTextStyles.titleSmallLightgreenA700,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.h),
              _buildFirstdeposit(context),
              SizedBox(height: 6.h),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstdeposit(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_first_deposit".tr,
      margin: EdgeInsets.only(left: 4.h, right: 2.h),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleSmallLightgreenA700,
    );
  }
}
