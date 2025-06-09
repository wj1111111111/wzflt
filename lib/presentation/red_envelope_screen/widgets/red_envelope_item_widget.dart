import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/red_envelope_item_model.dart';

// ignore_for_file: must_be_immutable
class RedEnvelopeItemWidget extends StatelessWidget {
  RedEnvelopeItemWidget(this.redEnvelopeItemModelObj, {Key? key})
    : super(key: key);

  RedEnvelopeItemModel redEnvelopeItemModelObj;

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
            imagePath: redEnvelopeItemModelObj.image!,
            height: 20.h,
            width: 20.h,
            radius: BorderRadius.circular(10.h),
            margin: EdgeInsets.only(bottom: 8.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              redEnvelopeItemModelObj
                  .oneHundredTwentyThreeThousandOneHundredTwentyThree!,
              style: CustomTextStyles.labelLargeOnPrimary_6,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              redEnvelopeItemModelObj.receiveda!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          Text(
            redEnvelopeItemModelObj
                .twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo!,
            style: CustomTextStyles.labelLargeAmberA400_2,
          ),
        ],
      ),
    );
  }
}
