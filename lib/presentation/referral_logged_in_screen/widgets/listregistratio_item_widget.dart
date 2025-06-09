import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listregistratio_item_model.dart';

// ignore_for_file: must_be_immutable
class ListregistratioItemWidget extends StatelessWidget {
  ListregistratioItemWidget(this.listregistratioItemModelObj, {Key? key})
    : super(key: key);

  ListregistratioItemModel listregistratioItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.h),
      decoration: AppDecoration.fillBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: listregistratioItemModelObj.registration!,
            height: 60.h,
            width: 64.h,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listregistratioItemModelObj.registration1!,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  listregistratioItemModelObj.price!,
                  style: CustomTextStyles.titleMediumAmberA400Black,
                ),
                Text(
                  listregistratioItemModelObj.claimedCounter!,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
