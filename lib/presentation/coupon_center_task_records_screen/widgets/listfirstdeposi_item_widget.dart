import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/listfirstdeposi_item_model.dart';

// ignore_for_file: must_be_immutable
class ListfirstdeposiItemWidget extends StatelessWidget {
  ListfirstdeposiItemWidget(this.listfirstdeposiItemModelObj, {Key? key})
    : super(key: key);

  ListfirstdeposiItemModel listfirstdeposiItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      decoration: AppDecoration.stack436,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup1439786x100,
            height: 86.h,
            width: 102.h,
            radius: BorderRadius.circular(8.h),
            alignment: Alignment.bottomRight,
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 8.h),
            child: Column(
              spacing: 14,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    listfirstdeposiItemModelObj.firstdeposit!,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 52.h,
                        width: 52.h,
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.outlineTeal,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgClose52x52,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          spacing: 10,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_bonus4".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  TextSpan(
                                    text: "msg_no_winning_ticket".tr,
                                    style:
                                        CustomTextStyles.titleSmallAmberA400_1,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              listfirstdeposiItemModelObj.completeyour!,
                              style: CustomTextStyles.labelLargeOnPrimary13_4,
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
        ],
      ),
    );
  }
}
