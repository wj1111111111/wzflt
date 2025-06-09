import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/expandablelistc_item_model.dart';

// ignore_for_file: must_be_immutable
class ExpandablelistcItemWidget extends StatelessWidget {
  ExpandablelistcItemWidget(this.expandablelistcItemModelObj, {Key? key})
    : super(key: key);

  ExpandablelistcItemModel expandablelistcItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero,
          title: SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClose20x34,
                  height: 32.h,
                  width: 34.h,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_vip_privileges".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(right: 2.h),
              child: Column(
                spacing: 6,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl_your_level4".tr,
                          style: CustomTextStyles.titleSmallBluegray400_1,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgIconVip0,
                                height: 26.h,
                                width: 26.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl_v0".tr,
                                  style: CustomTextStyles.titleSmallAmberA400_2,
                                ),
                              ),
                            ],
                          ),
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
                          "lbl_withdrawal_fee".tr,
                          style: CustomTextStyles.titleSmallBluegray400_1,
                        ),
                        Text(
                          "lbl_32".tr,
                          style: CustomTextStyles.titleSmallAmberA400_2,
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
                          "msg_number_of_withdrawals".tr,
                          style: CustomTextStyles.titleSmallBluegray400_1,
                        ),
                        Text(
                          "lbl_1_times_day".tr,
                          style: CustomTextStyles.titleSmallAmberA400_2,
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
                          "msg_single_withdrawal".tr,
                          style: CustomTextStyles.titleSmallBluegray400_1,
                        ),
                        Text(
                          "lbl_3_300".tr,
                          style: CustomTextStyles.titleSmallAmberA400_2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
