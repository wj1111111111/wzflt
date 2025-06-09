import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listdate_item_model.dart';

// ignore_for_file: must_be_immutable
class ListdateItemWidget extends StatelessWidget {
  ListdateItemWidget(this.listdateItemModelObj, {Key? key}) : super(key: key);

  ListdateItemModel listdateItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 112.h,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.h),
            decoration: AppDecoration.fillLightgreenA70006,
            child: Text(
              listdateItemModelObj.date!,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeOnPrimary_6,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 10.h),
            decoration: AppDecoration.fillGray90021,
            child: Text(
              listdateItemModelObj.group10344!,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelLarge,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.h),
            decoration: AppDecoration.fs2bg,
            child: Text(
              listdateItemModelObj.group10343!,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelLarge,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 10.h),
            decoration: AppDecoration.fillGray90021,
            child: Text(
              listdateItemModelObj.group10342!,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelLarge,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.h),
            decoration: AppDecoration.fs2bg,
            child: Text(
              listdateItemModelObj.group10341!,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
