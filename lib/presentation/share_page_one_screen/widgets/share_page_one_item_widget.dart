import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/share_page_one_item_model.dart';

// ignore_for_file: must_be_immutable
class SharePageOneItemWidget extends StatelessWidget {
  SharePageOneItemWidget(this.sharePageOneItemModelObj, {Key? key})
    : super(key: key);

  SharePageOneItemModel sharePageOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(sharePageOneItemModelObj.tf!, style: theme.textTheme.labelLarge),
        Text(sharePageOneItemModelObj.tf1!, style: theme.textTheme.labelLarge),
        Text(sharePageOneItemModelObj.tf2!, style: theme.textTheme.labelLarge),
      ],
    );
  }
}
