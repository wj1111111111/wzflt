import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listhot_one_item_model.dart';

// ignore_for_file: must_be_immutable
class ListhotOneItemWidget extends StatelessWidget {
  ListhotOneItemWidget(this.listhotOneItemModelObj, {Key? key})
    : super(key: key);

  ListhotOneItemModel listhotOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 66.h,
          padding: EdgeInsets.symmetric(horizontal: 18.h),
          decoration: AppDecoration.fs15.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL81,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFire,
                height: 32.h,
                width: double.maxFinite,
              ),
              Text(
                listhotOneItemModelObj.hotTwo!,
                style: theme.textTheme.labelLarge,
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.img56x94,
          height: 56.h,
          width: 94.h,
          radius: BorderRadius.circular(4.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img20,
          height: 56.h,
          width: 94.h,
          radius: BorderRadius.circular(4.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVip56x94,
          height: 56.h,
          width: 94.h,
          radius: BorderRadius.circular(4.h),
        ),
      ],
    );
  }
}
