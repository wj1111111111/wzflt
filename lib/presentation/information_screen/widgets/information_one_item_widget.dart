import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/information_one_item_model.dart';

// ignore_for_file: must_be_immutable
class InformationOneItemWidget extends StatelessWidget {
  InformationOneItemWidget(this.informationOneItemModelObj, {Key? key})
    : super(key: key);

  InformationOneItemModel informationOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                informationOneItemModelObj.one!,
                style: CustomTextStyles.labelLargeBluegray70001,
              ),
              Text(
                informationOneItemModelObj.duration!,
                style: CustomTextStyles.labelLargeBluegray70001,
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Text(
            informationOneItemModelObj.invitation!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 6.h),
          SizedBox(width: double.maxFinite, child: Divider()),
          SizedBox(height: 10.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_your_invitation".tr,
                  style: CustomTextStyles.titleSmallBluegray400,
                ),
                TextSpan(
                  text: "lbl_24".tr,
                  style: CustomTextStyles.titleSmallAmberA400_1,
                ),
                TextSpan(
                  text: "msg_has_been_distributed_you".tr,
                  style: CustomTextStyles.titleSmallBluegray400,
                ),
                TextSpan(
                  text: "lbl_view_event".tr,
                  style: CustomTextStyles.titleSmallBlue400,
                ),
              ],
            ),
            textAlign: TextAlign.left,
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4.h),
        ],
      ),
    );
  }
}
