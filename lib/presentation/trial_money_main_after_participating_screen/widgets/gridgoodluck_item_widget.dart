import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/gridgoodluck_item_model.dart';

// ignore_for_file: must_be_immutable
class GridgoodluckItemWidget extends StatelessWidget {
  GridgoodluckItemWidget(this.gridgoodluckItemModelObj, {Key? key})
    : super(key: key);

  GridgoodluckItemModel gridgoodluckItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: AppDecoration.outline19.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h),
          CustomImageView(
            imagePath: gridgoodluckItemModelObj.goodluckOne!,
            height: 50.h,
            width: 46.h,
          ),
          Container(
            decoration: AppDecoration.outlineBlack90011,
            child: Text(
              gridgoodluckItemModelObj.goodluckTwo!,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleSmallAmber50004,
            ),
          ),
        ],
      ),
    );
  }
}
