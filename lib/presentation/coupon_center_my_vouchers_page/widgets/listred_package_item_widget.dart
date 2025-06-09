import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/listred_package_item_model.dart';

// ignore_for_file: must_be_immutable
class ListredPackageItemWidget extends StatelessWidget {
  ListredPackageItemWidget(this.listredPackageItemModelObj, {Key? key})
    : super(key: key);

  ListredPackageItemModel listredPackageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.row415,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 110.h,
            width: 258.h,
            decoration: AppDecoration.stack416,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: listredPackageItemModelObj.redPackageOne!,
                  height: 86.h,
                  width: 68.h,
                  radius: BorderRadius.circular(8.h),
                  alignment: Alignment.bottomRight,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 12.h, top: 4.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.h,
                              vertical: 4.h,
                            ),
                            decoration: AppDecoration.outlinePurpleAD.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder14,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      listredPackageItemModelObj.redPackage!,
                                  height: 44.h,
                                  width: 46.h,
                                ),
                                Text(
                                  listredPackageItemModelObj.firstdeposit!,
                                  style: CustomTextStyles.labelLargeOnPrimary_6,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      listredPackageItemModelObj.completeyour!,
                                      style:
                                          CustomTextStyles
                                              .labelLargeOnPrimary_2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.h, top: 4.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      listredPackageItemModelObj.firstdeposit1!,
                                      style:
                                          CustomTextStyles
                                              .titleSmallPurpleA20002,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "msg_app_download_bonus3".tr,
                                            style:
                                                CustomTextStyles
                                                    .labelLargeOnPrimary13_1,
                                          ),
                                          TextSpan(
                                            text: "lbl_38".tr,
                                            style:
                                                CustomTextStyles
                                                    .labelLargeAmberA40013,
                                          ),
                                          TextSpan(
                                            text: "msg_app_download_bonus4".tr,
                                            style:
                                                CustomTextStyles
                                                    .labelLargeOnPrimary13_1,
                                          ),
                                          TextSpan(
                                            text: "lbl_38".tr,
                                            style:
                                                CustomTextStyles
                                                    .labelLargeAmberA40013,
                                          ),
                                          TextSpan(
                                            text: "msg_app_download_bonus4".tr,
                                            style:
                                                CustomTextStyles
                                                    .labelLargeOnPrimary13_1,
                                          ),
                                          TextSpan(
                                            text: "lbl_38".tr,
                                            style:
                                                CustomTextStyles
                                                    .labelLargeAmberA40013,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.h,
                                color: theme.colorScheme.onPrimary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 92.h,
            padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 10.h),
            decoration: AppDecoration.column418,
            child: Column(
              spacing: 2,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10.h),
                  child: Text(
                    listredPackageItemModelObj.firstdeposit2!,
                    style: CustomTextStyles.labelLargeBluegray40003,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 18.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        listredPackageItemModelObj.firstdeposit3!,
                        style: CustomTextStyles.titleLarge20,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          listredPackageItemModelObj.firstdeposit4!,
                          style: CustomTextStyles.labelLargeOnPrimary_6,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.h),
                  child: Text(
                    listredPackageItemModelObj.time!,
                    style: CustomTextStyles.labelLargeLightgreenA700,
                  ),
                ),
                _buildClaim(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClaim(BuildContext context) {
    return CustomElevatedButton(
      height: 30.h,
      text: "lbl_claim2".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientLightGreenAToLightGreenDecoration,
    );
  }
}
