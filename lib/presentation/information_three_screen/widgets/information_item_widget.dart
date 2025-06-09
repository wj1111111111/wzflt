import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/information_item_model.dart';

// ignore_for_file: must_be_immutable
class InformationItemWidget extends StatelessWidget {
  InformationItemWidget(this.informationItemModelObj, {Key? key})
    : super(key: key);

  InformationItemModel informationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            height: 20.h,
            width: 20.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.h),
              border: Border.all(color: appTheme.blueGray400, width: 2.h),
            ),
          ),
          Expanded(
            child: Container(
              height: 136.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 8.h,
                      ),
                      decoration: AppDecoration.fs4bg.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 50.h),
                          SizedBox(
                            width: double.maxFinite,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_my_money_is_missing".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_my_money".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 8.h,
                    ),
                    decoration: AppDecoration.outlineBluegray90038.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                informationItemModelObj.one!,
                                style: CustomTextStyles.labelLargeBluegray70001,
                              ),
                              Text(
                                informationItemModelObj.duration!,
                                textAlign: TextAlign.right,
                                style: CustomTextStyles.labelLargeBluegray70001,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                informationItemModelObj.withdrawal!,
                                style: theme.textTheme.bodyLarge,
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgCheckmarkBlueGray400,
                                height: 20.h,
                                width: 22.h,
                                alignment: Alignment.bottomCenter,
                                margin: EdgeInsets.only(top: 4.h),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 42.h),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 2.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSettingsBlue400,
                                height: 24.h,
                                width: 24.h,
                              ),
                              Container(
                                height: 18.h,
                                width: 96.h,
                                margin: EdgeInsets.only(left: 10.h),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgUnion1,
                                      height: 18.h,
                                      width: double.maxFinite,
                                    ),
                                    Text(
                                      informationItemModelObj.r!,
                                      style:
                                          CustomTextStyles.bodyMediumGray90002,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text(
                                  informationItemModelObj.sixteen!,
                                  style:
                                      CustomTextStyles.labelLargeBluegray70001,
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
            ),
          ),
        ],
      ),
    );
  }
}
