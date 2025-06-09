import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listlv4_one_item_model.dart';

// ignore_for_file: must_be_immutable
class Listlv4OneItemWidget extends StatelessWidget {
  Listlv4OneItemWidget(this.listlv4OneItemModelObj, {Key? key})
    : super(key: key);

  Listlv4OneItemModel listlv4OneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.h, right: 22.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomImageView(
                imagePath: listlv4OneItemModelObj.lv4One!,
                height: 16.h,
                width: 16.h,
                margin: EdgeInsets.symmetric(horizontal: 4.h),
              ),
              Text(
                listlv4OneItemModelObj.lvfour!,
                style: CustomTextStyles.labelLargeGray300,
              ),
            ],
          ),
          Text(
            listlv4OneItemModelObj.eighthundred!,
            style: theme.textTheme.labelLarge,
          ),
          Text(
            listlv4OneItemModelObj.zipcode!,
            style: theme.textTheme.labelLarge,
          ),
          Text(
            listlv4OneItemModelObj.threehundred!,
            style: theme.textTheme.labelLarge,
          ),
          Text(
            listlv4OneItemModelObj.threehundred1!,
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
