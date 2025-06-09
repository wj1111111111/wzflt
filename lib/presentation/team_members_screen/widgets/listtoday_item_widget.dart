import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listtoday_item_model.dart';

// ignore_for_file: must_be_immutable
class ListtodayItemWidget extends StatelessWidget {
  ListtodayItemWidget(this.listtodayItemModelObj, {Key? key}) : super(key: key);

  ListtodayItemModel listtodayItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          listtodayItemModelObj.today!,
          style: CustomTextStyles.bodyMediumBluegray400,
        ),
        Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text(
            listtodayItemModelObj.thirtytwo!,
            style: theme.textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}
