import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listlv1_one_item_model.dart';

// ignore_for_file: must_be_immutable
class Listlv1OneItemWidget extends StatelessWidget {
  Listlv1OneItemWidget(this.listlv1OneItemModelObj, {Key? key})
    : super(key: key);

  Listlv1OneItemModel listlv1OneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.fillGray90021,
      child: Row(
        children: [
          SizedBox(
            height: 82.h,
            width: 72.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: listlv1OneItemModelObj.lv1One!,
                  height: 72.h,
                  width: 72.h,
                  alignment: Alignment.topCenter,
                ),
                Text(
                  listlv1OneItemModelObj.lvone!,
                  style: CustomTextStyles.labelLargeGray300,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: listlv1OneItemModelObj.lv1Three!,
            height: 90.h,
            width: 32.h,
            margin: EdgeInsets.only(left: 6.h),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 6.h, right: 8.h),
              child: Column(
                spacing: 2,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          listlv1OneItemModelObj.one!,
                          style: theme.textTheme.labelLarge,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            listlv1OneItemModelObj.tf!,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Text(
                          listlv1OneItemModelObj.thirty!,
                          style: theme.textTheme.labelLarge,
                        ),
                        Spacer(),
                        Text(
                          listlv1OneItemModelObj.three!,
                          style: CustomTextStyles.labelLargeAmberA400_2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          listlv1OneItemModelObj.threehundred!,
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(
                          listlv1OneItemModelObj.one1!,
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(
                          listlv1OneItemModelObj.sevenhundred!,
                          style: theme.textTheme.labelLarge,
                        ),
                        Spacer(),
                        Text(
                          listlv1OneItemModelObj.thirteen!,
                          style: CustomTextStyles.labelLargeAmberA400_2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          listlv1OneItemModelObj.sevenhundred1!,
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(
                          listlv1OneItemModelObj.two!,
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(
                          listlv1OneItemModelObj.onethousand!,
                          style: theme.textTheme.labelLarge,
                        ),
                        Spacer(),
                        Text(
                          listlv1OneItemModelObj.thirtythree!,
                          style: CustomTextStyles.labelLargeAmberA400_2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          listlv1OneItemModelObj.onethousandOne!,
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(
                          listlv1OneItemModelObj.three1!,
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(
                          listlv1OneItemModelObj.tenthousand!,
                          style: theme.textTheme.labelLarge,
                        ),
                        Spacer(),
                        Text(
                          listlv1OneItemModelObj.fiftythree!,
                          style: CustomTextStyles.labelLargeAmberA400_2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          listlv1OneItemModelObj.andabove!,
                          style: theme.textTheme.labelLarge,
                        ),
                        Text(
                          listlv1OneItemModelObj.sixtythree!,
                          style: CustomTextStyles.labelLargeAmberA400_2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
