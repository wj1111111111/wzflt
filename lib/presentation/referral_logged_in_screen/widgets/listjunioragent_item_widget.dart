import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listjunioragent_item_model.dart';

// ignore_for_file: must_be_immutable
class ListjunioragentItemWidget extends StatelessWidget {
  ListjunioragentItemWidget(this.listjunioragentItemModelObj, {Key? key})
    : super(key: key);

  ListjunioragentItemModel listjunioragentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 108.h,
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 4.h),
          decoration: AppDecoration.fillBluegray90002,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                listjunioragentItemModelObj.junioragenti!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                  height: 1.14,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            decoration: AppDecoration.fillBlack,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  listjunioragentItemModelObj.seven!,
                  style: theme.textTheme.bodyMedium,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child: Text(
                    listjunioragentItemModelObj.tf!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Spacer(flex: 48),
                Text(
                  listjunioragentItemModelObj.one!,
                  style: theme.textTheme.bodyMedium,
                ),
                Spacer(flex: 51),
                Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: Text(
                    listjunioragentItemModelObj.two!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
