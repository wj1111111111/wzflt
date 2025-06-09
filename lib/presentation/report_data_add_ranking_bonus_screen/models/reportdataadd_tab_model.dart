import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../core/app_export.dart';
import 'chart_one_chart_model.dart';
import 'chipviewregiste_item_model.dart';

/// This class is used in the [reportdataadd_tab_page] screen.

// ignore_for_file: must_be_immutable
class ReportdataaddTabModel extends Equatable {
  ReportdataaddTabModel({
    this.chipviewregisteItemList = const [],
    this.chartOneChartModelObj = const [],
  });

  List<ChipviewregisteItemModel> chipviewregisteItemList;

  List<ChartOneChartModel> chartOneChartModelObj;

  ReportdataaddTabModel copyWith({
    List<ChipviewregisteItemModel>? chipviewregisteItemList,
    List<ChartOneChartModel>? chartOneChartModelObj,
  }) {
    return ReportdataaddTabModel(
      chipviewregisteItemList:
          chipviewregisteItemList ?? this.chipviewregisteItemList,
      chartOneChartModelObj:
          chartOneChartModelObj ?? this.chartOneChartModelObj,
    );
  }

  @override
  List<Object?> get props => [chipviewregisteItemList, chartOneChartModelObj];
}
