part of 'report_data_summary_loading_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReportDataSummaryLoading widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ReportDataSummaryLoadingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ReportDataSummaryLoading widget is first created.
class ReportDataSummaryLoadingInitialEvent
    extends ReportDataSummaryLoadingEvent {
  @override
  List<Object?> get props => [];
}
