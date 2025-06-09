import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listlv1_one_item_model.dart';

// ignore_for_file: must_be_immutable
class Listlv1OneItemWidget extends StatelessWidget {
  Listlv1OneItemWidget(this.listlv1OneItemModelObj, {Key? key})
    : super(key: key);

  Listlv1OneItemModel listlv1OneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 2.h),
      decoration: AppDecoration.fillGray90021,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: listlv1OneItemModelObj.lv1One!,
                height: 16.h,
                width: 16.h,
                margin: EdgeInsets.only(left: 4.h),
              ),
              Text(
                listlv1OneItemModelObj.lvone!,
                style: CustomTextStyles.labelLargeGray300,
              ),
            ],
          ),
          Text(
            listlv1OneItemModelObj.eighthundred!,
            style: theme.textTheme.labelLarge,
          ),
          Text(
            listlv1OneItemModelObj.zipcode!,
            style: theme.textTheme.labelLarge,
          ),
          Text(
            listlv1OneItemModelObj.fivehundred!,
            style: theme.textTheme.labelLarge,
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: Text(
              listlv1OneItemModelObj.fivehundredOne!,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
