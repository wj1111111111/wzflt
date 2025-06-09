import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/home_sms_popup_item_model.dart';

// ignore_for_file: must_be_immutable
class HomeSmsPopupItemWidget extends StatelessWidget {
  HomeSmsPopupItemWidget(this.homeSmsPopupItemModelObj, {Key? key})
    : super(key: key);

  HomeSmsPopupItemModel homeSmsPopupItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        SizedBox(
          height: 88.h,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: homeSmsPopupItemModelObj.fortuneOx!,
                height: 88.h,
                width: 88.h,
                radius: BorderRadius.circular(4.h),
              ),
              CustomImageView(
                imagePath: homeSmsPopupItemModelObj.televisionOne!,
                height: 18.h,
                width: 36.h,
                alignment: Alignment.topLeft,
              ),
            ],
          ),
        ),
        Container(
          decoration: AppDecoration.outlineBlack900,
          width: double.maxFinite,
          child: Text(
            homeSmsPopupItemModelObj.fortuneox1!,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.labelLargeNotoSans,
          ),
        ),
      ],
    );
  }
}
