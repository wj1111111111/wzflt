import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listinvite_one_item_model.dart';

// ignore_for_file: must_be_immutable
class ListinviteOneItemWidget extends StatelessWidget {
  ListinviteOneItemWidget(this.listinviteOneItemModelObj, {Key? key})
    : super(key: key);

  ListinviteOneItemModel listinviteOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: listinviteOneItemModelObj.inviteOne!,
          height: 36.h,
          width: 38.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(
            listinviteOneItemModelObj.inviteTwo!,
            style: theme.textTheme.titleSmall,
          ),
        ),
        Container(
          width: 176.h,
          margin: EdgeInsets.only(left: 10.h),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_reconnend_friends_to".tr,
                  style: CustomTextStyles.labelLargeBluegray200_1,
                ),
                TextSpan(
                  text: "msg_jbet88_and_earn".tr,
                  style: CustomTextStyles.labelLargeLightgreenA700_1,
                ),
              ],
            ),
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray70001,
          height: 12.h,
          width: 8.h,
        ),
      ],
    );
  }
}
