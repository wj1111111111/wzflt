import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listinvite_one_item_model.dart';

// ignore_for_file: must_be_immutable
class ListinviteOneItemWidget extends StatelessWidget {
  ListinviteOneItemWidget(this.listinviteOneItemModelObj, {Key? key})
    : super(key: key);

  ListinviteOneItemModel listinviteOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: listinviteOneItemModelObj.inviteOne!,
            height: 20.h,
            width: 20.h,
            margin: EdgeInsets.symmetric(horizontal: 4.h),
          ),
          Text(
            listinviteOneItemModelObj.inviteTwo!,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
