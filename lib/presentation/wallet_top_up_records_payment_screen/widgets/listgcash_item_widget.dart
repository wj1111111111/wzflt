import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listgcash_item_model.dart';

// ignore_for_file: must_be_immutable
class ListgcashItemWidget extends StatelessWidget {
  ListgcashItemWidget(this.listgcashItemModelObj, {Key? key}) : super(key: key);

  ListgcashItemModel listgcashItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  listgcashItemModelObj.gcash!,
                  style: CustomTextStyles.titleSmallBluegray200_1,
                ),
                Text(
                  listgcashItemModelObj.price!,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  listgcashItemModelObj.twelve!,
                  style: CustomTextStyles.labelLargeBluegray200,
                ),
                Spacer(),
                Container(
                  height: 6.h,
                  width: 6.h,
                  decoration: BoxDecoration(
                    color: appTheme.yellow90001,
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    listgcashItemModelObj.inprogress!,
                    style: CustomTextStyles.labelLargeBluegray200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
