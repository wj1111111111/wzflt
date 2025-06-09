import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/reward_records_item_model.dart';

// ignore_for_file: must_be_immutable
class RewardRecordsItemWidget extends StatelessWidget {
  RewardRecordsItemWidget(this.rewardRecordsItemModelObj, {Key? key})
    : super(key: key);

  RewardRecordsItemModel rewardRecordsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            rewardRecordsItemModelObj
                .oneHundredFiftyThreeMillionFiveHundredTwentyThreeThousandFourHundredEightyEight!,
            style: theme.textTheme.bodySmall,
          ),
        ),
        Spacer(flex: 50),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            rewardRecordsItemModelObj.luckyspin!,
            style: CustomTextStyles.bodySmallOnPrimary_3,
          ),
        ),
        Spacer(flex: 49),
        Text(
          rewardRecordsItemModelObj.price!,
          style: CustomTextStyles.labelLargeSFProTextOrange40003,
        ),
        Container(
          height: 18.h,
          width: 20.h,
          margin: EdgeInsets.only(left: 4.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: rewardRecordsItemModelObj.image!,
                height: 18.h,
                width: 18.h,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 2.h),
                  decoration: AppDecoration.gradientPurpleToBlueGray,
                  child: Text(
                    rewardRecordsItemModelObj.group10405!,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeDDINCondensedOrange30005,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
