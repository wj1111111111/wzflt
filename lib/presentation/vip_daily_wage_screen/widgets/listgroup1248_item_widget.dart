import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listgroup1248_item_model.dart';

// ignore_for_file: must_be_immutable
class Listgroup1248ItemWidget extends StatelessWidget {
  Listgroup1248ItemWidget(this.listgroup1248ItemModelObj, {Key? key})
    : super(key: key);

  Listgroup1248ItemModel listgroup1248ItemModelObj;

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
                    imagePath: listgroup1248ItemModelObj.image!,
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
                  imagePath: listgroup1248ItemModelObj.imageOne!,
                  height: 74.h,
                  width: double.maxFinite,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 44.h,
                    width: 54.h,
                    margin: EdgeInsets.only(right: 8.h),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: listgroup1248ItemModelObj.imageTwo!,
                          height: 42.h,
                          width: double.maxFinite,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 20.h,
                            height: 18.h,
                            alignment: Alignment.center,
                            decoration: AppDecoration.fillDeepOrange.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder10,
                            ),
                            child: Text(
                              listgroup1248ItemModelObj.group1248!,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.labelLargeOnPrimary_6,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
