import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/home_tasks_item_model.dart';

// ignore_for_file: must_be_immutable
class HomeTasksItemWidget extends StatelessWidget {
  HomeTasksItemWidget(this.homeTasksItemModelObj, {Key? key}) : super(key: key);

  HomeTasksItemModel homeTasksItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 10.h),
      decoration: AppDecoration.outline.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: homeTasksItemModelObj.cashBackOne!,
            height: 48.h,
            width: 50.h,
            radius: BorderRadius.circular(24.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              homeTasksItemModelObj.cashback!,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 40.h,
              width: 96.h,
              margin: EdgeInsets.only(right: 2.h),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 32.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: homeTasksItemModelObj.detailsOne!,
                          height: 32.h,
                          width: double.maxFinite,
                        ),
                        Container(
                          decoration: AppDecoration.outlineBlack9009,
                          child: Text(
                            homeTasksItemModelObj.detailsTwo!,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 16.h,
                      width: 18.h,
                      decoration: AppDecoration.fillRed.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            homeTasksItemModelObj.one!,
                            style: CustomTextStyles.labelLargeOnPrimary_6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 4.h),
                      decoration: AppDecoration.fillRed.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Text(
                        homeTasksItemModelObj.group12444!,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelLargeOnPrimary_6,
                      ),
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
