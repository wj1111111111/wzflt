import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/gridall_item_model.dart';
import '../models/report_data_summary_date_filter_one_model.dart';
import '../models/scrollview_tab_model.dart';
part 'report_data_summary_date_filter_one_event.dart';
part 'report_data_summary_date_filter_one_state.dart';

/// A bloc that manages the state of a ReportDataSummaryDateFilterOne according to the event that is dispatched to it.
class ReportDataSummaryDateFilterOneBloc
    extends
        Bloc<
          ReportDataSummaryDateFilterOneEvent,
          ReportDataSummaryDateFilterOneState
        > {
  ReportDataSummaryDateFilterOneBloc(
    ReportDataSummaryDateFilterOneState initialState,
  ) : super(initialState) {
    on<ReportDataSummaryDateFilterOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReportDataSummaryDateFilterOneInitialEvent event,
    Emitter<ReportDataSummaryDateFilterOneState> emit,
  ) async {
    emit(state.copyWith(dateRangeController: TextEditingController()));
    emit(
      state.copyWith(
        scrollviewTabModelObj: state.scrollviewTabModelObj?.copyWith(
          gridallItemList: fillGridallItemList(),
        ),
      ),
    );
  }

  List<GridallItemModel> fillGridallItemList() {
    return [
      GridallItemModel(all: "lbl_all".tr),
      GridallItemModel(all: "lbl_today2".tr),
      GridallItemModel(all: "lbl_yesterday".tr),
      GridallItemModel(all: "lbl_7_days".tr),
      GridallItemModel(all: "lbl_15_days".tr),
    ];
  }
}
