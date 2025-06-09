import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listlv6_one_item_model.dart';

// ignore_for_file: must_be_immutable
class Listlv6OneItemWidget extends StatelessWidget {
  Listlv6OneItemWidget(this.listlv6OneItemModelObj, {Key? key})
    : super(key: key);

  Listlv6OneItemModel listlv6OneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: listlv6OneItemModelObj.lv6One!,
                  height: 16.h,
                  width: 16.h,
                  margin: EdgeInsets.symmetric(horizontal: 4.h),
                ),
                Text(
                  listlv6OneItemModelObj.lvsix!,
                  style: CustomTextStyles.labelLargeGray300,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: Text(
              listlv6OneItemModelObj.eighthundred!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: Text(
              listlv6OneItemModelObj.zipcode!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.h),
            child: Text(
              listlv6OneItemModelObj.threehundred!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.h, right: 16.h),
            child: Text(
              listlv6OneItemModelObj.threehundred1!,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
