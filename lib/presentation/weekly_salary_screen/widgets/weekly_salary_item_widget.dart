import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/weekly_salary_item_model.dart';

// ignore_for_file: must_be_immutable
class WeeklySalaryItemWidget extends StatelessWidget {
  WeeklySalaryItemWidget(this.weeklySalaryItemModelObj, {Key? key})
    : super(key: key);

  WeeklySalaryItemModel weeklySalaryItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 56.h,
          child: Text(
            weeklySalaryItemModelObj.depositamount!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleSmall!.copyWith(height: 1.14),
          ),
        ),
        Text(
          weeklySalaryItemModelObj.fivehundred!,
          style: theme.textTheme.labelLarge,
        ),
        Text(
          weeklySalaryItemModelObj.eighthundred!,
          style: theme.textTheme.labelLarge,
        ),
        Text(
          weeklySalaryItemModelObj.zipcode!,
          style: theme.textTheme.labelLarge,
        ),
        Text(
          weeklySalaryItemModelObj.zipcodeOne!,
          style: theme.textTheme.labelLarge,
        ),
        Text(
          weeklySalaryItemModelObj.twohundred!,
          style: theme.textTheme.labelLarge,
        ),
      ],
    );
  }
}
