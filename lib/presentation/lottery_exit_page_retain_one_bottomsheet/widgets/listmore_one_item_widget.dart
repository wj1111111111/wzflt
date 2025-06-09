import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listmore_one_item_model.dart';

// ignore_for_file: must_be_immutable
class ListmoreOneItemWidget extends StatelessWidget {
  ListmoreOneItemWidget(this.listmoreOneItemModelObj, {Key? key})
    : super(key: key);

  ListmoreOneItemModel listmoreOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32.h,
      child: Column(
        spacing: 2,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: CustomImageView(
              imagePath: listmoreOneItemModelObj.moreOne!,
              height: 32.h,
              width: double.maxFinite,
              radius: BorderRadius.circular(16.0.h),
            ),
          ),
          Text(
            listmoreOneItemModelObj.moreTwo!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
