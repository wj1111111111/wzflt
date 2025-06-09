import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listwithdrawal_item_model.dart';

// ignore_for_file: must_be_immutable
class ListwithdrawalItemWidget extends StatelessWidget {
  ListwithdrawalItemWidget(this.listwithdrawalItemModelObj, {Key? key})
    : super(key: key);

  ListwithdrawalItemModel listwithdrawalItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 8.h),
      decoration: AppDecoration.fs9.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTelevisionOnprimary,
            height: 10.h,
            width: 16.h,
          ),
          Text(
            listwithdrawalItemModelObj.withdrawalTwo!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
