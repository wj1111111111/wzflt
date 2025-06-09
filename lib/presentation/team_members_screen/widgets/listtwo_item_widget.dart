import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chipview898333_item_model.dart';
import '../models/listtwo_item_model.dart';
import 'chipview898333_item_widget.dart';

// ignore_for_file: must_be_immutable
class ListtwoItemWidget extends StatelessWidget {
  ListtwoItemWidget(
    this.listtwoItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(key: key);

  ListtwoItemModel listtwoItemModelObj;

  Function(int, bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outline13.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  decoration: AppDecoration.fillOrangeA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL6,
                  ),
                  child: Text(
                    listtwoItemModelObj.two!,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelMedium10_1,
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    runSpacing: 5.h,
                    spacing: 5.h,
                    children: List<Widget>.generate(
                      listtwoItemModelObj.chipview898333ItemList?.length ?? 0,
                      (index) {
                        Chipview898333ItemModel model =
                            listtwoItemModelObj
                                .chipview898333ItemList?[index] ??
                            Chipview898333ItemModel();
                        return Chipview898333ItemWidget(model);
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 22.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      listtwoItemModelObj.registration!,
                      style: CustomTextStyles.bodyMediumBluegray400,
                    ),
                    Text(
                      listtwoItemModelObj.ninetee!,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      listtwoItemModelObj.depositamount!,
                      style: CustomTextStyles.bodyMediumBluegray400,
                    ),
                    Text(
                      listtwoItemModelObj
                          .threeMillionFortyNineThousandNineHundredNine!,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      listtwoItemModelObj.validbet!,
                      style: CustomTextStyles.bodyMediumBluegray400,
                    ),
                    Text(
                      listtwoItemModelObj.one!,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      listtwoItemModelObj.withdrawal!,
                      style: CustomTextStyles.bodyMediumBluegray400,
                    ),
                    Text(
                      listtwoItemModelObj.two1!,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      listtwoItemModelObj.phone!,
                      style: CustomTextStyles.bodyMediumBluegray400,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            listtwoItemModelObj.verified!,
                            style: theme.textTheme.bodyMedium,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgFrame2131330103,
                            height: 14.h,
                            width: 14.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(left: 10.h),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.h),
            ],
          ),
        ),
      ),
    );
  }
}
