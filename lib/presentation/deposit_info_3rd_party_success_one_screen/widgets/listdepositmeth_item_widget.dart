import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listdepositmeth_item_model.dart';

// ignore_for_file: must_be_immutable
class ListdepositmethItemWidget extends StatelessWidget {
  ListdepositmethItemWidget(this.listdepositmethItemModelObj, {Key? key})
    : super(key: key);

  ListdepositmethItemModel listdepositmethItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          listdepositmethItemModelObj.depositmethod!,
          style: CustomTextStyles.titleSmallBluegray70001,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                listdepositmethItemModelObj.h709394!,
                style: CustomTextStyles.labelLarge13_1,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUpBlueGray70001,
                height: 12.h,
                width: 12.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(left: 6.h),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
