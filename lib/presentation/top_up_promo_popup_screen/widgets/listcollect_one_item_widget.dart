import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listcollect_one_item_model.dart';

// ignore_for_file: must_be_immutable
class ListcollectOneItemWidget extends StatelessWidget {
  ListcollectOneItemWidget(this.listcollectOneItemModelObj, {Key? key})
    : super(key: key);

  ListcollectOneItemModel listcollectOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 286.h),
      padding: EdgeInsets.only(left: 12.h, top: 6.h, bottom: 6.h),
      decoration: AppDecoration.column346,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: listcollectOneItemModelObj.collectOne!,
            height: 36.h,
            width: 36.h,
            margin: EdgeInsets.only(left: 2.h),
          ),
          Text(
            listcollectOneItemModelObj.collectTwo!,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
