import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/weekly_salary_one_bloc.dart';
import 'models/weekly_salary_one_model.dart'; // ignore_for_file: must_be_immutable

class WeeklySalaryOneDialog extends StatelessWidget {
  const WeeklySalaryOneDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WeeklySalaryOneBloc>(
      create:
          (context) => WeeklySalaryOneBloc(
            WeeklySalaryOneState(
              weeklySalaryOneModelObj: WeeklySalaryOneModel(),
            ),
          )..add(WeeklySalaryOneInitialEvent()),
      child: WeeklySalaryOneDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 18.h),
          decoration: AppDecoration.fs7wz.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 6.h),
              Text(
                "msg_submitted_succe".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium!.copyWith(height: 1.63),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
