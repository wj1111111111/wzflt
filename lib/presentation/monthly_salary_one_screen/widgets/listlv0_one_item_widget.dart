import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listlv0_one_item_model.dart';

// ignore_for_file: must_be_immutable
class Listlv0OneItemWidget extends StatelessWidget {
  Listlv0OneItemWidget(this.listlv0OneItemModelObj, {Key? key})
    : super(key: key);

  Listlv0OneItemModel listlv0OneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50.h,
            width: 42.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: listlv0OneItemModelObj.lv0One!,
                  height: 40.h,
                  width: 40.h,
                  alignment: Alignment.topCenter,
                ),
                Text(
                  listlv0OneItemModelObj.lvzero!,
                  style: CustomTextStyles.labelLargeSFProTextGray300,
                ),
              ],
            ),
          ),
          Spacer(flex: 22),
          Text(
            listlv0OneItemModelObj.zero!,
            style: CustomTextStyles.titleSmallSFProTextBluegray400,
          ),
          Spacer(flex: 40),
          Text(
            listlv0OneItemModelObj.zeroOne!,
            style: CustomTextStyles.titleSmallSFProTextBluegray400,
          ),
          Spacer(flex: 37),
          Text(
            listlv0OneItemModelObj.tf!,
            style: CustomTextStyles.bodyMediumSFProTextBluegray400,
          ),
        ],
      ),
    );
  }
}
