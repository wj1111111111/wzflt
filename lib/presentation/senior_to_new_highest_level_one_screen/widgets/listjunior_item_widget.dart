import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/listjunior_item_model.dart';

// ignore_for_file: must_be_immutable
class ListjuniorItemWidget extends StatelessWidget {
  ListjuniorItemWidget(this.listjuniorItemModelObj, {Key? key})
    : super(key: key);

  ListjuniorItemModel listjuniorItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomElevatedButton(
          height: 44.h,
          width: 108.h,
          text: "lbl_junior_agent_i".tr,
          buttonStyle: CustomButtonStyles.fillBlueGray,
          buttonTextStyle: CustomTextStyles.titleSmallIndigoA10001,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 14.h),
            decoration: AppDecoration.fillBluegray80004,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  listjuniorItemModelObj.seven!,
                  style: theme.textTheme.bodyMedium,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child: Text(
                    listjuniorItemModelObj.tf!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Spacer(flex: 48),
                Text(
                  listjuniorItemModelObj.one!,
                  style: theme.textTheme.bodyMedium,
                ),
                Spacer(flex: 51),
                Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: Text(
                    listjuniorItemModelObj.two!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
