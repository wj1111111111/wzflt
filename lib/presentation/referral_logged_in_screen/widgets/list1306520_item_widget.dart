import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/list1306520_item_model.dart';

// ignore_for_file: must_be_immutable
class List1306520ItemWidget extends StatelessWidget {
  List1306520ItemWidget(this.list1306520ItemModelObj, {Key? key})
    : super(key: key);

  List1306520ItemModel list1306520ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            list1306520ItemModelObj
                .oneMillionThreeHundredSixThousandFiveHundredTwenty!,
            style: CustomTextStyles.bodySmallBluegray80001,
          ),
          SizedBox(
            width: 96.h,
            child: Text(
              list1306520ItemModelObj.getan!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallBluegray80001.copyWith(
                height: 1.09,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(right: 6.h, bottom: 4.h),
              child: Text(
                list1306520ItemModelObj.price!,
                style: CustomTextStyles.bodySmallBluegray80001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
