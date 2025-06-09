import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';
import '../../../core/app_export.dart';
import '../bloc/lottery_withdrawal_conditions_bloc.dart';
import '../models/lottery_withdrawal_conditions_model.dart';
import '../models/timelinecheckma_item_model.dart';
import 'stackcheckmark_item_widget.dart';

// ignore_for_file: must_be_immutable
class ColumnpaymentreItemWidget extends StatelessWidget {
  ColumnpaymentreItemWidget(this.timelinecheckmaItemModelObj, {Key? key})
    : super(key: key);

  TimelinecheckmaItemModel timelinecheckmaItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 22.h, bottom: 16.h),
      padding: EdgeInsets.only(left: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            timelinecheckmaItemModelObj.paymentrequest!,
            style: CustomTextStyles.bodyMediumLightgreenA700,
          ),
        ],
      ),
    );
  }
}
