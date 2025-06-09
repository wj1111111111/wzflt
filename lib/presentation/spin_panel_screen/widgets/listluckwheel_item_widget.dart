import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listluckwheel_item_model.dart';

// ignore_for_file: must_be_immutable
class ListluckwheelItemWidget extends StatelessWidget {
  ListluckwheelItemWidget(this.listluckwheelItemModelObj, {Key? key})
    : super(key: key);

  ListluckwheelItemModel listluckwheelItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110.h,
      child: Align(
        alignment: Alignment.topRight,
        child: SizedBox(
          height: 76.h,
          width: 110.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.maxFinite,
                decoration: AppDecoration.gradientPinkToRed.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 40.h),
                    Text(
                      listluckwheelItemModelObj.luckwheel!,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: listluckwheelItemModelObj.luckWheelOne!,
                height: 52.h,
                width: 54.h,
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
