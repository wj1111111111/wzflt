import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/gridall_item_model.dart';

// ignore_for_file: must_be_immutable
class GridallItemWidget extends StatelessWidget {
  GridallItemWidget(this.gridallItemModelObj, {Key? key}) : super(key: key);

  GridallItemModel gridallItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.h),
      decoration: AppDecoration.fs23.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Text(
        gridallItemModelObj.all!,
        textAlign: TextAlign.center,
        style: theme.textTheme.titleSmall,
      ),
    );
  }
}
