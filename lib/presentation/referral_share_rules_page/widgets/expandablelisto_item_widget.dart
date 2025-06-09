import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/expandablelisto_item_model.dart';

// ignore_for_file: must_be_immutable
class ExpandablelistoItemWidget extends StatelessWidget {
  ExpandablelistoItemWidget(
    this.expandablelistoItemModelObj, {
    Key? key,
    this.onSelectedExpandableList,
  }) : super(key: key);

  ExpandablelistoItemModel expandablelistoItemModelObj;

  Function(bool)? onSelectedExpandableList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray90001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.only(left: 10.h, right: 10.h, bottom: 12.h),
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 14.h),
            decoration: AppDecoration.fs4bg.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            width: double.maxFinite,
            child: Row(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 260.h,
                    margin: EdgeInsets.only(top: 4.h),
                    child: Text(
                      "msg_how_much_does_it".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall!.copyWith(height: 1.50),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowUp,
                  height: 28.h,
                  width: 28.h,
                ),
              ],
            ),
          ),
          trailing:
              (expandablelistoItemModelObj.isSelected ?? false)
                  ? Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: CustomIconButton(
                      height: 28.h,
                      width: 28.h,
                      decoration: IconButtonStyleHelper.none,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgRectangle34624353,
                      ),
                    ),
                  )
                  : Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: CustomIconButton(
                      height: 28.h,
                      width: 28.h,
                      decoration: IconButtonStyleHelper.none,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgRectangle34624353,
                      ),
                    ),
                  ),
          children: [
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 8.h),
              decoration: AppDecoration.outlineGray900011.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_how_does_the_invite".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        CustomIconButton(
                          height: 28.h,
                          width: 28.h,
                          decoration: IconButtonStyleHelper.none,
                          alignment: Alignment.center,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgRectangle34624353,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 302.h,
                    child: Text(
                      "msg_when_you_share_your".tr,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                        height: 1.14,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "lbl_at_jilitaka".tr,
                        style: CustomTextStyles.bodyMediumLightgreenA700
                            .copyWith(decoration: TextDecoration.underline),
                      ),
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
