import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/report_data_summary_loading_model.dart';
import '../models/reportdata_tab_model.dart';
part 'report_data_summary_loading_event.dart';
part 'report_data_summary_loading_state.dart';

/// A bloc that manages the state of a ReportDataSummaryLoading according to the event that is dispatched to it.
class ReportDataSummaryLoadingBloc
    extends Bloc<ReportDataSummaryLoadingEvent, ReportDataSummaryLoadingState> {
  ReportDataSummaryLoadingBloc(ReportDataSummaryLoadingState initialState)
    : super(initialState) {
    on<ReportDataSummaryLoadingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReportDataSummaryLoadingInitialEvent event,
    Emitter<ReportDataSummaryLoadingState> emit,
  ) async {
    emit(state.copyWith(dateRangeController: TextEditingController()));
  }
}
