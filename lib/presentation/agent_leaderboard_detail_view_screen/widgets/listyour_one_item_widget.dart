import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listyour_one_item_model.dart';

// ignore_for_file: must_be_immutable
class ListyourOneItemWidget extends StatelessWidget {
  ListyourOneItemWidget(this.listyourOneItemModelObj, {Key? key})
    : super(key: key);

  ListyourOneItemModel listyourOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillLightGreenA,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 166.h,
              margin: EdgeInsets.only(bottom: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 14.h,
                    width: 30.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFavoriteLightGreenA700,
                          height: 14.h,
                          width: double.maxFinite,
                        ),
                        Text(
                          listyourOneItemModelObj.yourTwo!,
                          style: CustomTextStyles.labelMedium10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Row(
                      children: [
                        Text(
                          listyourOneItemModelObj.eleven!,
                          style: theme.textTheme.bodySmall,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            listyourOneItemModelObj
                                .oneHundredThreeThousandThreeHundredThirtyNine!,
                            style: CustomTextStyles.bodySmallOnPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            listyourOneItemModelObj.ten!,
            style: CustomTextStyles.bodySmallAmberA40011,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 12.h),
            child: Text(
              listyourOneItemModelObj.price!,
              style: CustomTextStyles.bodySmallAmberA40011,
            ),
          ),
        ],
      ),
    );
  }
}
