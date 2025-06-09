import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/listelectronic_item_model.dart';

// ignore_for_file: must_be_immutable
class ListelectronicItemWidget extends StatelessWidget {
  ListelectronicItemWidget(this.listelectronicItemModelObj, {Key? key})
    : super(key: key);

  ListelectronicItemModel listelectronicItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.h),
      decoration: AppDecoration.gradientAmberToOrange.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: listelectronicItemModelObj.electronic!,
            height: 46.h,
            width: 48.h,
            margin: EdgeInsets.only(bottom: 4.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              listelectronicItemModelObj.electronic1!,
              style: theme.textTheme.titleSmall,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgForwardOnprimary,
            height: 8.h,
            width: 18.h,
            margin: EdgeInsets.only(left: 4.h),
          ),
          Spacer(),
          CustomIconButton(
            height: 32.h,
            width: 32.h,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.fillOrange,
            child: CustomImageView(imagePath: ImageConstant.imgPlusBlack90004),
          ),
        ],
      ),
    );
  }
}
