import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listnine_item_model.dart';

// ignore_for_file: must_be_immutable
class ListnineItemWidget extends StatelessWidget {
  ListnineItemWidget(this.listnineItemModelObj, {Key? key}) : super(key: key);

  ListnineItemModel listnineItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: AppDecoration.fs2bg,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              listnineItemModelObj.nine!,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text(
              listnineItemModelObj
                  .oneHundredThreeThousandThreeHundredThirtyNine!,
              style: CustomTextStyles.bodySmallOnPrimary,
            ),
          ),
          Spacer(flex: 36),
          Text(
            listnineItemModelObj.ten!,
            style: CustomTextStyles.bodySmallAmberA40011,
          ),
          Spacer(flex: 63),
          Text(
            listnineItemModelObj.price!,
            style: CustomTextStyles.bodySmallAmberA40011,
          ),
        ],
      ),
    );
  }
}
