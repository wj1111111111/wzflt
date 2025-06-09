import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/list94bdf4d8739_item_model.dart';

// ignore_for_file: must_be_immutable
class List94bdf4d8739ItemWidget extends StatelessWidget {
  List94bdf4d8739ItemWidget(this.list94bdf4d8739ItemModelObj, {Key? key})
    : super(key: key);

  List94bdf4d8739ItemModel list94bdf4d8739ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: appTheme.lightGreen80006, width: 2.26.h),
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Container(
          height: 194.h,
          width: 140.h,
          decoration: AppDecoration.outlineLightgreen80006.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage27,
                height: 194.h,
                width: double.maxFinite,
                radius: BorderRadius.circular(10.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.img94bdf4d8739c965,
                height: 32.h,
                width: 34.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(right: 14.h, bottom: 44.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
