import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_radio_button.dart';
import '../models/listcheckmark_item_model.dart';

// ignore_for_file: must_be_immutable
class ListcheckmarkItemWidget extends StatelessWidget {
  ListcheckmarkItemWidget(
    this.listcheckmarkItemModelObj, {
    Key? key,
    this.onTapRadioGroup,
  }) : super(key: key);

  ListcheckmarkItemModel listcheckmarkItemModelObj;

  Function(String)? onTapRadioGroup;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomRadioButton(
          value: "" ?? "",
          groupValue: listcheckmarkItemModelObj.radioGroup!,
          onChange: (value) {
            onTapRadioGroup?.call(value);
          },
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.h),
            decoration: AppDecoration.fillBluegray90033.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    listcheckmarkItemModelObj.phone!,
                    style: CustomTextStyles.titleSmallMedium,
                  ),
                ),
                CustomElevatedButton(
                  height: 34.h,
                  width: 76.h,
                  text: "lbl_completed".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientGrayToBlueGrayTL61Decoration,
                  buttonTextStyle: theme.textTheme.labelLarge!,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
