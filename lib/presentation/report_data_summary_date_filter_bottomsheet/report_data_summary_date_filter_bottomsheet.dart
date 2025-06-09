import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/report_data_summary_date_filter_bloc.dart';
import 'models/report_data_summary_date_filter_model.dart'; // ignore_for_file: must_be_immutable

class ReportDataSummaryDateFilterBottomsheet extends StatelessWidget {
  const ReportDataSummaryDateFilterBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ReportDataSummaryDateFilterBloc>(
      create:
          (context) => ReportDataSummaryDateFilterBloc(
            ReportDataSummaryDateFilterState(
              reportDataSummaryDateFilterModelObj:
                  ReportDataSummaryDateFilterModel(),
            ),
          )..add(ReportDataSummaryDateFilterInitialEvent()),
      child: ReportDataSummaryDateFilterBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fs4bg,
      child: Column(
        spacing: 24,
        children: [
          SizedBox(height: 14.h),
          _buildColumn08212024e(context),
          CustomElevatedButton(
            height: 64.h,
            text: "lbl_ok2".tr,
            buttonStyle: CustomButtonStyles.fillLightGreenA1,
            buttonTextStyle: CustomTextStyles.titleMedium18,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn08212024e(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 14,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 14.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "msg_08_21_2024_08_27_2024".tr,
                  style: CustomTextStyles.bodyMediumBluegray20005_1,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 62.h),
                  child: Text(
                    "lbl_clear".tr,
                    style: CustomTextStyles.bodyMediumBlueA20001,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Divider(color: appTheme.blueGray90004),
          ),
          SizedBox(
            width: double.maxFinite,
            child: BlocBuilder<
              ReportDataSummaryDateFilterBloc,
              ReportDataSummaryDateFilterState
            >(
              builder: (context, state) {
                return Container(
                  height: 324.h,
                  width: 324.h,
                  margin: EdgeInsets.symmetric(horizontal: 24.h),
                  child: CalendarDatePicker2(
                    config: CalendarDatePicker2Config(
                      calendarType: CalendarDatePicker2Type.range,
                      rangeBidirectional: true,
                      firstDate: DateTime(DateTime.now().year - 5),
                      lastDate: DateTime(DateTime.now().year + 5),
                      selectedDayHighlightColor: Color(0XFF1E2024),
                      firstDayOfWeek: 1,
                      weekdayLabelTextStyle: TextStyle(
                        color: appTheme.lightGreen800,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w600,
                      ),
                      selectedDayTextStyle: TextStyle(
                        color: appTheme.blueGray40004,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w700,
                      ),
                      dayTextStyle: TextStyle(
                        color: appTheme.blueGray40004,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w700,
                      ),
                      disabledDayTextStyle: TextStyle(
                        color: theme.colorScheme.onPrimary,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w700,
                      ),
                      weekdayLabels: [
                        "SUN",
                        "MON",
                        "TUE",
                        "WED",
                        "THU",
                        "FRI",
                        "SAT",
                      ],
                      dayBorderRadius: BorderRadius.circular(4.h),
                    ),
                    value: state.selectedDatesFromCalendar ?? [],
                    onValueChanged: (dates) {
                      state.selectedDatesFromCalendar = dates;
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
