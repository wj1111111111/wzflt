import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';
import '../../../core/app_export.dart';
import '../bloc/lottery_withdrawal_conditions_bloc.dart';
import '../models/lottery_withdrawal_conditions_model.dart';
import '../models/timelinecheckma_item_model.dart';

// ignore_for_file: must_be_immutable
class StackcheckmarkItemWidget extends StatelessWidget {
  StackcheckmarkItemWidget(this.timelinecheckmaItemModelObj, {Key? key})
    : super(key: key);

  TimelinecheckmaItemModel timelinecheckmaItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      width: 20.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: timelinecheckmaItemModelObj.checkmarkOne!,
            height: 20.h,
            width: 20.h,
          ),
        ],
      ),
    );
  }
}
