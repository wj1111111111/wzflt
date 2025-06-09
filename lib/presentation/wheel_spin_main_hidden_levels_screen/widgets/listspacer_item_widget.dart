import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listspacer_item_model.dart';

// ignore_for_file: must_be_immutable
class ListspacerItemWidget extends StatelessWidget {
  ListspacerItemWidget(this.listspacerItemModelObj, {Key? key})
    : super(key: key);

  ListspacerItemModel listspacerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUserAmberA400048x8,
          height: 8.h,
          width: 10.h,
          alignment: Alignment.bottomCenter,
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: Text(
            listspacerItemModelObj.oneHundredFortyThousandNinety!,
            style: CustomTextStyles.labelLargeInterOnPrimary,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.h, top: 6.h),
          child: Text(
            listspacerItemModelObj.freespin!,
            style: theme.textTheme.bodySmall,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 22.h, bottom: 6.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    listspacerItemModelObj.getVar!,
                    style: CustomTextStyles.bodySmall10_1,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage18x18,
                    height: 18.h,
                    width: 18.h,
                  ),
                  Text(
                    listspacerItemModelObj.price!,
                    style: CustomTextStyles.labelLargeSFProTextOrange40003,
                  ),
                ],
              ),
              Text(
                listspacerItemModelObj.ninetee!,
                style: CustomTextStyles.bodySmall10_1,
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgUserAmberA400048x8,
          height: 8.h,
          width: 10.h,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(left: 26.h),
        ),
      ],
    );
  }
}
