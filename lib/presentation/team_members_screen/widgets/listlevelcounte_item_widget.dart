import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listlevelcounte_item_model.dart';

// ignore_for_file: must_be_immutable
class ListlevelcounteItemWidget extends StatelessWidget {
  ListlevelcounteItemWidget(this.listlevelcounteItemModelObj, {Key? key})
    : super(key: key);

  ListlevelcounteItemModel listlevelcounteItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56.h,
      child: Column(
        spacing: 4,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  listlevelcounteItemModelObj.levelCounter!,
                  style: CustomTextStyles.bodyMediumBluegray400,
                ),
              ),
              Container(
                height: 6.h,
                width: 6.h,
                decoration: BoxDecoration(
                  color: appTheme.deepOrangeA40001,
                  borderRadius: BorderRadius.circular(3.h),
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame2131330280,
                  height: 10.h,
                  width: 6.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    listlevelcounteItemModelObj.twenty!,
                    style: CustomTextStyles.bodyMediumOnPrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
