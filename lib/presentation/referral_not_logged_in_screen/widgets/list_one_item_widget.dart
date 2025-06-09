import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/list_one_item_model.dart';

// ignore_for_file: must_be_immutable
class ListOneItemWidget extends StatelessWidget {
  ListOneItemWidget(this.listOneItemModelObj, {Key? key}) : super(key: key);

  ListOneItemModel listOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 62.h,
            decoration: AppDecoration.outlineOnPrimary,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 4.h),
                  child: Column(
                    spacing: 8,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 8.h),
                          child: Text(
                            listOneItemModelObj.teamslevel!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumOnPrimary
                                .copyWith(height: 1.14),
                          ),
                        ),
                      ),
                      Text(
                        listOneItemModelObj.agenttier!,
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLine768,
                  height: 62.h,
                  width: double.maxFinite,
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 20.h),
          decoration: AppDecoration.outlineOnPrimary1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                listOneItemModelObj.levelCounter!,
                style: CustomTextStyles.bodyMediumOnPrimary,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 2.h, top: 20.h, bottom: 20.h),
          decoration: AppDecoration.outlineOnPrimary1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                listOneItemModelObj.leveltwo!,
                style: CustomTextStyles.bodyMediumOnPrimary,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 2.h, top: 20.h, bottom: 20.h),
          decoration: AppDecoration.outlineOnPrimary1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                listOneItemModelObj.levelthree!,
                style: CustomTextStyles.bodyMediumOnPrimary,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 2.h, top: 20.h, bottom: 20.h),
          decoration: AppDecoration.outlineOnPrimary1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                listOneItemModelObj.levelfour!,
                style: CustomTextStyles.bodyMediumOnPrimary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
