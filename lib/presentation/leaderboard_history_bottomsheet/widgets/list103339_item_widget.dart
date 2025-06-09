import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/list103339_item_model.dart';

// ignore_for_file: must_be_immutable
class List103339ItemWidget extends StatelessWidget {
  List103339ItemWidget(this.list103339ItemModelObj, {Key? key})
    : super(key: key);

  List103339ItemModel list103339ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.h),
      decoration: AppDecoration.fs2bg,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: list103339ItemModelObj.image!,
            height: 26.h,
            width: 28.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              list103339ItemModelObj
                  .oneHundredThreeThousandThreeHundredThirtyNine!,
              style: CustomTextStyles.bodySmallOnPrimary,
            ),
          ),
          Spacer(flex: 36),
          Text(
            list103339ItemModelObj.ten!,
            style: CustomTextStyles.bodySmallAmberA40011,
          ),
          Spacer(flex: 63),
          Text(
            list103339ItemModelObj.price!,
            style: CustomTextStyles.bodySmallAmberA40011,
          ),
        ],
      ),
    );
  }
}
