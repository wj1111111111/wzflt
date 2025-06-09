import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/list123123_item_model.dart';

// ignore_for_file: must_be_immutable
class List123123ItemWidget extends StatelessWidget {
  List123123ItemWidget(this.list123123ItemModelObj, {Key? key})
    : super(key: key);

  List123123ItemModel list123123ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineOnPrimary19,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: list123123ItemModelObj.image!,
            height: 20.h,
            width: 20.h,
            radius: BorderRadius.circular(10.h),
            margin: EdgeInsets.only(bottom: 8.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              list123123ItemModelObj
                  .oneHundredTwentyThreeThousandOneHundredTwentyThree!,
              style: CustomTextStyles.labelLargeOnPrimary_6,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              list123123ItemModelObj.receiveda!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          Text(
            list123123ItemModelObj
                .twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo!,
            style: CustomTextStyles.labelLargeAmberA400_2,
          ),
        ],
      ),
    );
  }
}
