import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/gridregistratio_item_model.dart';

// ignore_for_file: must_be_immutable
class GridregistratioItemWidget extends StatelessWidget {
  GridregistratioItemWidget(this.gridregistratioItemModelObj, {Key? key})
    : super(key: key);

  GridregistratioItemModel gridregistratioItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  gridregistratioItemModelObj.registration!,
                  style: CustomTextStyles.bodySmallOnPrimary_3,
                ),
                Text(
                  gridregistratioItemModelObj.price!,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
