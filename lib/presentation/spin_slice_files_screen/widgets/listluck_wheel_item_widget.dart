import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listluck_wheel_item_model.dart';

// ignore_for_file: must_be_immutable
class ListluckWheelItemWidget extends StatelessWidget {
  ListluckWheelItemWidget(this.listluckWheelItemModelObj, {Key? key})
    : super(key: key);

  ListluckWheelItemModel listluckWheelItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110.h,
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          width: 110.h,
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          decoration: AppDecoration.gradientRedToOrange.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: listluckWheelItemModelObj.luckWheelOne!,
                height: 46.h,
                width: 48.h,
              ),
              Text(
                listluckWheelItemModelObj.luckwheel!,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }
}
