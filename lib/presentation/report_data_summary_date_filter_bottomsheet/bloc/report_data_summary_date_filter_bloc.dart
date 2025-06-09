import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/report_data_summary_date_filter_model.dart';
part 'report_data_summary_date_filter_event.dart';
part 'report_data_summary_date_filter_state.dart';

/// A bloc that manages the state of a ReportDataSummaryDateFilter according to the event that is dispatched to it.
class ReportDataSummaryDateFilterBloc
    extends
        Bloc<
          ReportDataSummaryDateFilterEvent,
          ReportDataSummaryDateFilterState
        > {
  ReportDataSummaryDateFilterBloc(ReportDataSummaryDateFilterState initialState)
    : super(initialState) {
    on<ReportDataSummaryDateFilterInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReportDataSummaryDateFilterInitialEvent event,
    Emitter<ReportDataSummaryDateFilterState> emit,
  ) async {}
}
