import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listpassword_item_model.dart';

// ignore_for_file: must_be_immutable
class ListpasswordItemWidget extends StatelessWidget {
  ListpasswordItemWidget(this.listpasswordItemModelObj, {Key? key})
    : super(key: key);

  ListpasswordItemModel listpasswordItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      decoration: AppDecoration.outlineOnPrimary14,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            listpasswordItemModelObj.password!,
            style: CustomTextStyles.labelMediumSFProText,
          ),
          Text(
            listpasswordItemModelObj.justreceived!,
            style: CustomTextStyles.bodySmall11,
          ),
          Text(
            listpasswordItemModelObj.price!,
            style: CustomTextStyles.labelMediumSFProTextAmber30004,
          ),
        ],
      ),
    );
  }
}
