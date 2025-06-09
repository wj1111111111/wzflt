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
    return Column(
      spacing: 2,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: listinviteOneItemModelObj.inviteOne!,
          height: 20.h,
          width: 22.h,
          margin: EdgeInsets.only(right: 2.h),
        ),
        Text(
          listinviteOneItemModelObj.inviteTwo!,
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyles.bodySmallOnPrimary_3,
        ),
      ],
    );
  }
}
