import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listgcash_item_model.dart';

// ignore_for_file: must_be_immutable
class ListgcashItemWidget extends StatelessWidget {
  ListgcashItemWidget(this.listgcashItemModelObj, {Key? key}) : super(key: key);

  ListgcashItemModel listgcashItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            spacing: 4,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                listgcashItemModelObj.gcash!,
                style: CustomTextStyles.titleSmallBluegray400_1,
              ),
              Text(
                listgcashItemModelObj.twelve!,
                style: CustomTextStyles.labelLargeBluegray7000113,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 6.h,
            width: 6.h,
            margin: EdgeInsets.only(left: 4.h, bottom: 4.h),
            decoration: BoxDecoration(
              color: appTheme.lightGreenA700,
              borderRadius: BorderRadius.circular(3.h),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Column(
            spacing: 2,
            children: [
              Text(
                listgcashItemModelObj.price!,
                style: theme.textTheme.titleSmall,
              ),
              Text(
                listgcashItemModelObj.credited!,
                style: theme.textTheme.labelLarge,
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray70001,
          height: 12.h,
          width: 6.h,
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(left: 10.h, top: 12.h),
        ),
      ],
    );
  }
}
