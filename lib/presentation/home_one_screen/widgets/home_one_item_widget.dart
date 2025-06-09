import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/home_one_item_model.dart';

// ignore_for_file: must_be_immutable
class HomeOneItemWidget extends StatelessWidget {
  HomeOneItemWidget(this.homeOneItemModelObj, {Key? key}) : super(key: key);

  HomeOneItemModel homeOneItemModelObj;

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
                imagePath: homeOneItemModelObj.fortuneOx!,
                height: 88.h,
                width: 88.h,
                radius: BorderRadius.circular(4.h),
              ),
              CustomImageView(
                imagePath: homeOneItemModelObj.televisionOne!,
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
            homeOneItemModelObj.fortuneox1!,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.labelLargeNotoSans,
          ),
        ),
      ],
    );
  }
}
