import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listregistratio_item_model.dart';

// ignore_for_file: must_be_immutable
class ListregistratioItemWidget extends StatelessWidget {
  ListregistratioItemWidget(this.listregistratioItemModelObj, {Key? key})
    : super(key: key);

  ListregistratioItemModel listregistratioItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Container(
              height: 58.h,
              padding: EdgeInsets.symmetric(vertical: 2.h),
              decoration: AppDecoration.gradientLightBlueToBlue.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgJb46x48,
                      height: 46.h,
                      width: 50.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        listregistratioItemModelObj.registration!,
                        style: CustomTextStyles.bodySmallOnPrimary_3,
                      ),
                      Text(
                        listregistratioItemModelObj.price!,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Container(
              height: 58.h,
              decoration: AppDecoration.gradientDeepPurpleAToDeeppurpleA100
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: Text(
                      listregistratioItemModelObj.priceOne!,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: Text(
                        listregistratioItemModelObj.depositbonus!,
                        style: CustomTextStyles.bodySmallOnPrimary_3,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgJb46x48,
                      height: 46.h,
                      width: 50.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
