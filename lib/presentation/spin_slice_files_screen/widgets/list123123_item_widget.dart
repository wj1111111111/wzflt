import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/list123123_item_model.dart';

// ignore_for_file: must_be_immutable
class List123123ItemWidget extends StatelessWidget {
  List123123ItemWidget(this.list123123ItemModelObj, {Key? key})
    : super(key: key);

  List123123ItemModel list123123ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 28.h,
        margin: EdgeInsets.only(left: 10.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 10.h),
                    decoration: AppDecoration.outlineOnPrimary19,
                    width: double.maxFinite,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: list123123ItemModelObj.image!,
                          height: 20.h,
                          width: 20.h,
                          radius: BorderRadius.circular(10.h),
                          margin: EdgeInsets.only(bottom: 8.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            list123123ItemModelObj
                                .oneHundredTwentyThreeThousandOneHundredTwentyThree!,
                            style: CustomTextStyles.labelLargeOnPrimaryBlack_1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            list123123ItemModelObj.receiveda!,
                            style: CustomTextStyles.labelLargeBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Text(
                  list123123ItemModelObj
                      .twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo!,
                  style: CustomTextStyles.labelLargeAmberA400_2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
