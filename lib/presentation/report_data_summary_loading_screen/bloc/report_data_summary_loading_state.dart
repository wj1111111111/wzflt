part of 'report_data_summary_loading_bloc.dart';

/// Represents the state of ReportDataSummaryLoading in the application.

// ignore_for_file: must_be_immutable
class ReportDataSummaryLoadingState extends Equatable {
  ReportDataSummaryLoadingState({
    this.dateRangeController,
    this.reportdataTabModelObj,
    this.reportDataSummaryLoadingModelObj,
  });

  TextEditingController? dateRangeController;

  ReportDataSummaryLoadingModel? reportDataSummaryLoadingModelObj;

  ReportdataTabModel? reportdataTabModelObj;

  @override
  List<Object?> get props => [
    dateRangeController,
    reportdataTabModelObj,
    reportDataSummaryLoadingModelObj,
  ];
  ReportDataSummaryLoadingState copyWith({
    TextEditingController? dateRangeController,
    ReportdataTabModel? reportdataTabModelObj,
    ReportDataSummaryLoadingModel? reportDataSummaryLoadingModelObj,
  }) {
    return ReportDataSummaryLoadingState(
      dateRangeController: dateRangeController ?? this.dateRangeController,
      reportdataTabModelObj:
          reportdataTabModelObj ?? this.reportdataTabModelObj,
      reportDataSummaryLoadingModelObj:
          reportDataSummaryLoadingModelObj ??
          this.reportDataSummaryLoadingModelObj,
    );
  }
}
