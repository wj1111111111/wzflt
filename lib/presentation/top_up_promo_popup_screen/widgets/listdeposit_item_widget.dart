import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listdeposit_item_model.dart';

// ignore_for_file: must_be_immutable
class ListdepositItemWidget extends StatelessWidget {
  ListdepositItemWidget(this.listdepositItemModelObj, {Key? key})
    : super(key: key);

  ListdepositItemModel listdepositItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.zero,
      color: appTheme.orange20003,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Container(
        height: 34.h,
        decoration: AppDecoration.outlineOnPrimary15.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          listdepositItemModelObj.deposit!,
                          style: CustomTextStyles.labelLargeRed90005,
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 2.h),
                          child: Text(
                            listdepositItemModelObj.extra!,
                            style: CustomTextStyles.labelLargeRed90005,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          listdepositItemModelObj.tf!,
                          style: CustomTextStyles.titleMediumRed90099,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          listdepositItemModelObj.paymayapayment!,
                          style: CustomTextStyles.labelLargeDeeporangeA40003_1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          listdepositItemModelObj.upto!,
                          style: CustomTextStyles.labelLargeRed90005,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 18.h),
                    decoration: AppDecoration.outlineOnPrimary16.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.h, bottom: 4.h),
                            child: Text(
                              listdepositItemModelObj.depositOne!,
                              style:
                                  CustomTextStyles.labelLargeOnPrimaryBlack_1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.h,
                            color: theme.colorScheme.onPrimary.withValues(
                              alpha: 0.2,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            listdepositItemModelObj.extraOne!,
                            style: CustomTextStyles.labelLargeOnPrimaryBlack_1,
                          ),
                        ),
                        Text(
                          listdepositItemModelObj.one!,
                          style: CustomTextStyles.titleMediumOnPrimary18,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 4.h),
                            child: Text(
                              listdepositItemModelObj.paymayapayment1!,
                              style: CustomTextStyles.labelLargeYellowA40002,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.h,
                            color: theme.colorScheme.onPrimary.withValues(
                              alpha: 0.2,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.h, bottom: 4.h),
                            child: Text(
                              listdepositItemModelObj.uptoOne!,
                              style:
                                  CustomTextStyles.labelLargeOnPrimaryBlack_1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
