part of 'report_data_summary_date_filter_one_bloc.dart';

/// Represents the state of ReportDataSummaryDateFilterOne in the application.

// ignore_for_file: must_be_immutable
class ReportDataSummaryDateFilterOneState extends Equatable {
  ReportDataSummaryDateFilterOneState({
    this.dateRangeController,
    this.scrollviewTabModelObj,
    this.reportDataSummaryDateFilterOneModelObj,
  });

  TextEditingController? dateRangeController;

  ReportDataSummaryDateFilterOneModel? reportDataSummaryDateFilterOneModelObj;

  ScrollviewTabModel? scrollviewTabModelObj;

  @override
  List<Object?> get props => [
    dateRangeController,
    scrollviewTabModelObj,
    reportDataSummaryDateFilterOneModelObj,
  ];
  ReportDataSummaryDateFilterOneState copyWith({
    TextEditingController? dateRangeController,
    ScrollviewTabModel? scrollviewTabModelObj,
    ReportDataSummaryDateFilterOneModel? reportDataSummaryDateFilterOneModelObj,
  }) {
    return ReportDataSummaryDateFilterOneState(
      dateRangeController: dateRangeController ?? this.dateRangeController,
      scrollviewTabModelObj:
          scrollviewTabModelObj ?? this.scrollviewTabModelObj,
      reportDataSummaryDateFilterOneModelObj:
          reportDataSummaryDateFilterOneModelObj ??
          this.reportDataSummaryDateFilterOneModelObj,
    );
  }
}
