import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/list20230909nin_item_model.dart';

// ignore_for_file: must_be_immutable
class List20230909ninItemWidget extends StatelessWidget {
  List20230909ninItemWidget(this.list20230909ninItemModelObj, {Key? key})
    : super(key: key);

  List20230909ninItemModel list20230909ninItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          list20230909ninItemModelObj.ninetee!,
          style: theme.textTheme.bodySmall,
        ),
        Spacer(flex: 41),
        Text(
          list20230909ninItemModelObj.price!,
          style: CustomTextStyles.labelLargeOrange40003,
        ),
        Spacer(flex: 58),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 6.h,
            width: 6.h,
            margin: EdgeInsets.only(top: 4.h),
            decoration: BoxDecoration(
              color: appTheme.purpleA400,
              borderRadius: BorderRadius.circular(3.h),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            list20230909ninItemModelObj.processing!,
            style: CustomTextStyles.labelLarge13_1,
          ),
        ),
      ],
    );
  }
}
