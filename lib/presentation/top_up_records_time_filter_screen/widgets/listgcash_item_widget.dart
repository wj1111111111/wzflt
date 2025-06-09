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
      children: [
        Expanded(
          child: Column(
            spacing: 4,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                listgcashItemModelObj.gcash!,
                style: CustomTextStyles.titleSmallBluegray200_1,
              ),
              Text(
                listgcashItemModelObj.twelve!,
                style: CustomTextStyles.labelLargeBluegray200,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 152.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                listgcashItemModelObj.price!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 6.h,
                      width: 6.h,
                      margin: EdgeInsets.only(top: 4.h),
                      decoration: BoxDecoration(
                        color: appTheme.yellow90001,
                        borderRadius: BorderRadius.circular(3.h),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          listgcashItemModelObj.inprogress!,
                          style: CustomTextStyles.labelLargeBluegray200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
