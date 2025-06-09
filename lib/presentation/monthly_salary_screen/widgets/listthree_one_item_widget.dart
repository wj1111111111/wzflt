import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listthree_one_item_model.dart';

// ignore_for_file: must_be_immutable
class ListthreeOneItemWidget extends StatelessWidget {
  ListthreeOneItemWidget(this.listthreeOneItemModelObj, {Key? key})
    : super(key: key);

  ListthreeOneItemModel listthreeOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              decoration: AppDecoration.gradientOrangeToOrange.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: listthreeOneItemModelObj.threeOne!,
                    height: 70.h,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(8.h),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 74.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: listthreeOneItemModelObj.image!,
                  height: 74.h,
                  width: double.maxFinite,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseOnprimary,
                  height: 24.h,
                  width: 34.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 20.h, bottom: 22.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
