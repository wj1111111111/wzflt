import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/topup_records_item_model.dart';

// ignore_for_file: must_be_immutable
class TopupRecordsItemWidget extends StatelessWidget {
  TopupRecordsItemWidget(this.topupRecordsItemModelObj, {Key? key})
    : super(key: key);

  TopupRecordsItemModel topupRecordsItemModelObj;

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
                topupRecordsItemModelObj.gcash!,
                style: CustomTextStyles.titleSmallBluegray400_1,
              ),
              Text(
                topupRecordsItemModelObj.twelve!,
                style: CustomTextStyles.labelLargeBluegray7000113,
              ),
            ],
          ),
        ),
        Column(
          spacing: 2,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              topupRecordsItemModelObj.price!,
              style: theme.textTheme.titleSmall,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 6.h,
                  width: 6.h,
                  decoration: BoxDecoration(
                    color: appTheme.lightGreenA700,
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                ),
                Text(
                  topupRecordsItemModelObj.success!,
                  style: CustomTextStyles.labelLarge13_1,
                ),
              ],
            ),
          ],
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray70001,
          height: 12.h,
          width: 6.h,
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: 12.h),
        ),
      ],
    );
  }
}
