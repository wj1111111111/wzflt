import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/list102x1000_item_model.dart';

// ignore_for_file: must_be_immutable
class List102x1000ItemWidget extends StatelessWidget {
  List102x1000ItemWidget(this.list102x1000ItemModelObj, {Key? key})
    : super(key: key);

  List102x1000ItemModel list102x1000ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 88.h,
      child: Align(
        alignment: Alignment.bottomRight,
        child: SizedBox(
          height: 88.h,
          width: 88.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: list102x1000ItemModelObj.x1000One!,
                height: 88.h,
                width: 88.h,
                radius: BorderRadius.circular(4.h),
              ),
              Container(
                height: 88.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: list102x1000ItemModelObj.baccaratone!,
                      height: 88.h,
                      width: 88.h,
                      radius: BorderRadius.circular(4.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame1003,
                      height: 18.h,
                      width: 36.h,
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
