part of 'report_data_summary_date_filter_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReportDataSummaryDateFilter widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ReportDataSummaryDateFilterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ReportDataSummaryDateFilter widget is first created.
class ReportDataSummaryDateFilterInitialEvent
    extends ReportDataSummaryDateFilterEvent {
  @override
  List<Object?> get props => [];
}
