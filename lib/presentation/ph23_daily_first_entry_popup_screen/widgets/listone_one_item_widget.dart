import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listone_one_item_model.dart';

// ignore_for_file: must_be_immutable
class ListoneOneItemWidget extends StatelessWidget {
  ListoneOneItemWidget(this.listoneOneItemModelObj, {Key? key})
    : super(key: key);

  ListoneOneItemModel listoneOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline1.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Row(
            children: [
              Container(
                width: 62.h,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.h),
                decoration: AppDecoration.column9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listoneOneItemModelObj.oneOne!,
                      style: theme.textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_each_registration".tr,
                        style: CustomTextStyles.titleSmall15_1,
                      ),
                      TextSpan(
                        text: "lbl_2".tr,
                        style: CustomTextStyles.titleSmallAmberA40015,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
