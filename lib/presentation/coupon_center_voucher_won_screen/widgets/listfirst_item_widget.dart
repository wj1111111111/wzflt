import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/listfirst_item_model.dart';

// ignore_for_file: must_be_immutable
class ListfirstItemWidget extends StatelessWidget {
  ListfirstItemWidget(this.listfirstItemModelObj, {Key? key}) : super(key: key);

  ListfirstItemModel listfirstItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline1.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Padding(
            padding: EdgeInsets.all(12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: listfirstItemModelObj.firstDeposit!,
                  height: 40.h,
                  width: 40.h,
                ),
                Expanded(
                  child: Column(
                    spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        listfirstItemModelObj.firstdeposit1!,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(
                        width: 170.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_complete_your_first".tr,
                                style: CustomTextStyles.labelLarge13,
                              ),
                              TextSpan(
                                text: "msg_earn_1_lucky_wheel".tr,
                                style: CustomTextStyles.labelLargeAmberA40013,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                _buildDeposit(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDeposit(BuildContext context) {
    return CustomElevatedButton(
      width: 76.h,
      text: "lbl_deposit".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientLightGreenAToLightGreenDecoration,
    );
  }
}
