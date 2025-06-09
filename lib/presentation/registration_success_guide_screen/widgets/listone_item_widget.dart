import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/listone_item_model.dart';

// ignore_for_file: must_be_immutable
class ListoneItemWidget extends StatelessWidget {
  ListoneItemWidget(this.listoneItemModelObj, {Key? key}) : super(key: key);

  ListoneItemModel listoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 22.h),
      decoration: AppDecoration.outline.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 6,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 6.h),
                  child: Text(
                    listoneItemModelObj.one!,
                    style: CustomTextStyles.titleMedium18,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(right: 2.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 34.h,
                                        height: 32.h,
                                        alignment: Alignment.center,
                                        decoration: AppDecoration
                                            .outlineBluegray700011
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .roundedBorder5,
                                            ),
                                        child: Text(
                                          listoneItemModelObj.group10390!,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.headlineSmall,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2.h),
                                          child: Text(
                                            listoneItemModelObj.tf!,
                                            style:
                                                CustomTextStyles.titleMedium18,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 34.h,
                                        height: 32.h,
                                        alignment: Alignment.center,
                                        decoration: AppDecoration
                                            .outlineBluegray700011
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .roundedBorder5,
                                            ),
                                        child: Text(
                                          listoneItemModelObj.group11878!,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.headlineSmall,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2.h),
                                          child: Text(
                                            listoneItemModelObj.one1!,
                                            style:
                                                CustomTextStyles.titleMedium18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      listoneItemModelObj.hrs!,
                                      style:
                                          CustomTextStyles
                                              .labelLargeBluegray70001,
                                    ),
                                    Text(
                                      listoneItemModelObj.mins!,
                                      style:
                                          CustomTextStyles
                                              .labelLargeBluegray70001,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 4.h),
                                decoration: AppDecoration.outlineBluegray700011
                                    .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                    ),
                                child: Text(
                                  listoneItemModelObj.group11879!,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                              Text(
                                listoneItemModelObj.secs!,
                                style: CustomTextStyles.labelLargeBluegray70001,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                CustomElevatedButton(
                  width: 110.h,
                  text: "lbl_deposit2".tr,
                  margin: EdgeInsets.only(left: 8.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles
                          .gradientLightGreenAToLightGreenTL16Decoration,
                  buttonTextStyle: theme.textTheme.titleMedium!,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_deposit_within_two".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  TextSpan(
                    text: "lbl_to".tr,
                    style: CustomTextStyles.titleMediumLightgreenA700_1,
                  ),
                  TextSpan(
                    text: "lbl2".tr,
                    style: CustomTextStyles.titleMediumLightgreenA700_1,
                  ),
                  TextSpan(
                    text: "lbl_900_free_bonus".tr,
                    style: CustomTextStyles.titleMediumLightgreenA700_1,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
