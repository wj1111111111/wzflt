import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../core/app_export.dart';
import '../models/chart_one_chart_model.dart';
import '../models/chipviewregiste_item_model.dart';
import '../models/report_data_add_ranking_bonus_model.dart';
import '../models/reportdataadd_tab_model.dart';
part 'report_data_add_ranking_bonus_event.dart';
part 'report_data_add_ranking_bonus_state.dart';

/// A bloc that manages the state of a ReportDataAddRankingBonus according to the event that is dispatched to it.
class ReportDataAddRankingBonusBloc
    extends
        Bloc<ReportDataAddRankingBonusEvent, ReportDataAddRankingBonusState> {
  ReportDataAddRankingBonusBloc(ReportDataAddRankingBonusState initialState)
    : super(initialState) {
    on<ReportDataAddRankingBonusInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    ReportDataAddRankingBonusInitialEvent event,
    Emitter<ReportDataAddRankingBonusState> emit,
  ) async {
    emit(state.copyWith(dateRangeController: TextEditingController()));
    emit(
      state.copyWith(
        reportdataaddTabModelObj: state.reportdataaddTabModelObj?.copyWith(
          chipviewregisteItemList: fillChipviewregisteItemList(),
          chartOneChartModelObj: fillChartOneChartModelObj(),
        ),
      ),
    );
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ReportDataAddRankingBonusState> emit,
  ) {
    List<ChipviewregisteItemModel> newList =
        List<ChipviewregisteItemModel>.from(
          state.reportdataaddTabModelObj!.chipviewregisteItemList,
        );
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        reportdataaddTabModelObj: state.reportdataaddTabModelObj?.copyWith(
          chipviewregisteItemList: newList,
        ),
      ),
    );
  }

  List<ChipviewregisteItemModel> fillChipviewregisteItemList() {
    return [
      ChipviewregisteItemModel(registersOne: "lbl_registers".tr),
      ChipviewregisteItemModel(registersOne: "lbl_deposits".tr),
      ChipviewregisteItemModel(registersOne: "lbl_qualifed_users2".tr),
    ];
  }

  List<ChartOneChartModel> fillChartOneChartModelObj() {
    return [
      ChartOneChartModel(
        barWidth: 2.85,
        gradient: LinearGradient(
          begin: Alignment(0.44, 0),
          end: Alignment(0.44, 0.9),
          colors: [
            appTheme.lightGreenA700.withValues(alpha: 0.16),
            appTheme.lightGreenA700.withValues(alpha: 0),
          ],
        ),
        spots: [
          FlSpot(0.25, 3.2),
          FlSpot(0.7, 2.4),
          FlSpot(1.3, 5.7),
          FlSpot(1.9, 2.5),
          FlSpot(2.5, 4.1),
          FlSpot(3.2, 3.6),
          FlSpot(4.0, 1.8),
        ],
      ),
    ];
  }
}
