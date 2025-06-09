import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/betting_history_item_model.dart';

// ignore_for_file: must_be_immutable
class BettingHistoryItemWidget extends StatelessWidget {
  BettingHistoryItemWidget(this.bettingHistoryItemModelObj, {Key? key})
    : super(key: key);

  BettingHistoryItemModel bettingHistoryItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: bettingHistoryItemModelObj.image!,
          height: 18.h,
          width: 18.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bettingHistoryItemModelObj.fortunetiger!,
                style: CustomTextStyles.titleSmallBluegray400_1,
              ),
              Text(
                bettingHistoryItemModelObj.twelve!,
                style: CustomTextStyles.labelLargeBluegray70001,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            bettingHistoryItemModelObj.zero!,
            style: CustomTextStyles.titleSmallBluegray400_1,
          ),
        ),
        Container(
          height: 18.h,
          width: 20.h,
          margin: EdgeInsets.only(left: 4.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse25,
                height: 18.h,
                width: double.maxFinite,
                radius: BorderRadius.circular(9.0.h),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: Text(
                    bettingHistoryItemModelObj.tf!,
                    style: CustomTextStyles.bodyMediumOnPrimary13,
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Text(
          bettingHistoryItemModelObj.ninetysix!,
          style: CustomTextStyles.titleSmallLightgreenA700,
        ),
        Container(
          height: 18.h,
          width: 20.h,
          margin: EdgeInsets.only(left: 4.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse25,
                height: 18.h,
                width: double.maxFinite,
                radius: BorderRadius.circular(9.0.h),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: Text(
                    bettingHistoryItemModelObj.one!,
                    style: CustomTextStyles.bodyMediumOnPrimary13,
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
