import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listprice_item_model.dart';

// ignore_for_file: must_be_immutable
class ListpriceItemWidget extends StatelessWidget {
  ListpriceItemWidget(this.listpriceItemModelObj, {Key? key}) : super(key: key);

  ListpriceItemModel listpriceItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42.h,
      child: Column(
        spacing: 8,
        children: [
          Text(
            listpriceItemModelObj.price!,
            style: CustomTextStyles.labelLargeAmberA400_2,
          ),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              spacing: 6,
              children: [
                CustomImageView(
                  imagePath: listpriceItemModelObj.image!,
                  height: 40.h,
                  width: 40.h,
                ),
                Container(
                  height: 30.h,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 4.h, right: 6.h),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 6.h),
                          child: Text(
                            listpriceItemModelObj.five!,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                      Text(
                        listpriceItemModelObj.users!,
                        style: CustomTextStyles.bodySmall11,
                      ),
                      CustomImageView(
                        imagePath: listpriceItemModelObj.imageOne!,
                        height: 8.h,
                        width: 8.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 4.h, top: 2.h),
                      ),
                    ],
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
