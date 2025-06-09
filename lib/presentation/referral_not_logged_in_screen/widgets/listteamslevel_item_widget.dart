import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listteamslevel_item_model.dart';

// ignore_for_file: must_be_immutable
class ListteamslevelItemWidget extends StatelessWidget {
  ListteamslevelItemWidget(this.listteamslevelItemModelObj, {Key? key})
    : super(key: key);

  ListteamslevelItemModel listteamslevelItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.zero,
            color: appTheme.gray800,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
                width: 1.h,
              ),
              borderRadius: BorderRadiusStyle.customBorderTL8,
            ),
            child: Container(
              height: 62.h,
              decoration: AppDecoration.outlineOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL8,
              ),
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
                              listteamslevelItemModelObj.teamslevel!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumOnPrimary
                                  .copyWith(height: 1.14),
                            ),
                          ),
                        ),
                        Text(
                          listteamslevelItemModelObj.agenttier!,
                          style: CustomTextStyles.bodyMediumOnPrimary,
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgLine768,
                    height: 62.h,
                    width: double.maxFinite,
                    radius: BorderRadius.only(topLeft: Radius.circular(8.h)),
                  ),
                ],
              ),
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
                listteamslevelItemModelObj.levelCounter!,
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
                listteamslevelItemModelObj.leveltwo!,
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
                listteamslevelItemModelObj.levelthree!,
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
                listteamslevelItemModelObj.levelfour!,
                style: CustomTextStyles.bodyMediumOnPrimary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
