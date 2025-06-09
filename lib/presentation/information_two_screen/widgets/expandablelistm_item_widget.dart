import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/expandablelistm_item_model.dart';

// ignore_for_file: must_be_immutable
class ExpandablelistmItemWidget extends StatelessWidget {
  ExpandablelistmItemWidget(
    this.expandablelistmItemModelObj, {
    Key? key,
    this.onSelectedExpandableList,
  }) : super(key: key);

  ExpandablelistmItemModel expandablelistmItemModelObj;

  Function(bool)? onSelectedExpandableList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.h, right: 12.h),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text('\"\"'),
          trailing:
              (expandablelistmItemModelObj.isSelected ?? false)
                  ? CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkBlueGray400,
                    height: 20.h,
                    width: 22.h,
                    margin: EdgeInsets.only(top: 4.h),
                  )
                  : CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkBlueGray400,
                    height: 20.h,
                    width: 22.h,
                    margin: EdgeInsets.only(top: 4.h),
                  ),
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 42.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsBlue400,
                    height: 24.h,
                    width: 24.h,
                  ),
                  Container(
                    height: 18.h,
                    width: 96.h,
                    margin: EdgeInsets.only(left: 10.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUnion18x96,
                          height: 18.h,
                          width: double.maxFinite,
                        ),
                        Text(
                          "lbl_new_reply".tr.toUpperCase(),
                          style: CustomTextStyles.bodyMediumGray90002,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "msg_2024_04_15_16_59_59".tr,
                      style: CustomTextStyles.labelLargeBluegray70001,
                    ),
                  ),
                ],
              ),
            ),
          ],
          onExpansionChanged: (value) {
            onSelectedExpandableList?.call(value);
          },
        ),
      ),
    );
  }
}
