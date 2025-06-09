part of 'report_data_summary_date_filter_bloc.dart';

/// Represents the state of ReportDataSummaryDateFilter in the application.

// ignore_for_file: must_be_immutable
class ReportDataSummaryDateFilterState extends Equatable {
  ReportDataSummaryDateFilterState({
    this.selectedDatesFromCalendar,
    this.reportDataSummaryDateFilterModelObj,
  });

  ReportDataSummaryDateFilterModel? reportDataSummaryDateFilterModelObj;

  List<DateTime?>? selectedDatesFromCalendar;

  @override
  List<Object?> get props => [
    selectedDatesFromCalendar,
    reportDataSummaryDateFilterModelObj,
  ];
  ReportDataSummaryDateFilterState copyWith({
    List<DateTime?>? selectedDatesFromCalendar,
    ReportDataSummaryDateFilterModel? reportDataSummaryDateFilterModelObj,
  }) {
    return ReportDataSummaryDateFilterState(
      selectedDatesFromCalendar:
          selectedDatesFromCalendar ?? this.selectedDatesFromCalendar,
      reportDataSummaryDateFilterModelObj:
          reportDataSummaryDateFilterModelObj ??
          this.reportDataSummaryDateFilterModelObj,
    );
  }
}
