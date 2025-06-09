import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listone_item_model.dart';

// ignore_for_file: must_be_immutable
class ListoneItemWidget extends StatelessWidget {
  ListoneItemWidget(this.listoneItemModelObj, {Key? key}) : super(key: key);

  ListoneItemModel listoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline4.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Row(
            children: [
              Container(
                height: 60.h,
                width: 62.h,
                decoration: AppDecoration.column62,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      listoneItemModelObj.one!,
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
                        text: "lbl_23".tr,
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
