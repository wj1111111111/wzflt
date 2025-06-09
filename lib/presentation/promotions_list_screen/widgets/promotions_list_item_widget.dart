import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/promotions_list_item_model.dart';

// ignore_for_file: must_be_immutable
class PromotionsListItemWidget extends StatelessWidget {
  PromotionsListItemWidget(this.promotionsListItemModelObj, {Key? key})
    : super(key: key);

  PromotionsListItemModel promotionsListItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomImageView(
        imagePath: promotionsListItemModelObj.oneOne!,
        height: 164.h,
        radius: BorderRadius.circular(8.h),
      ),
    );
  }
}
