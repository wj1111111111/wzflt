import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/grid94bdf4d8739_item_model.dart';

// ignore_for_file: must_be_immutable
class Grid94bdf4d8739ItemWidget extends StatelessWidget {
  Grid94bdf4d8739ItemWidget(this.grid94bdf4d8739ItemModelObj, {Key? key})
    : super(key: key);

  Grid94bdf4d8739ItemModel grid94bdf4d8739ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: grid94bdf4d8739ItemModelObj.imageOne!,
      height: 276.h,
      radius: BorderRadius.circular(10.h),
    );
  }
}
