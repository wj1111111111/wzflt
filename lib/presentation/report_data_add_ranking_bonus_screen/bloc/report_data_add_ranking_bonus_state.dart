part of 'report_data_add_ranking_bonus_bloc.dart';

/// Represents the state of ReportDataAddRankingBonus in the application.

// ignore_for_file: must_be_immutable
class ReportDataAddRankingBonusState extends Equatable {
  ReportDataAddRankingBonusState({
    this.dateRangeController,
    this.reportdataaddTabModelObj,
    this.reportDataAddRankingBonusModelObj,
  });

  TextEditingController? dateRangeController;

  ReportDataAddRankingBonusModel? reportDataAddRankingBonusModelObj;

  ReportdataaddTabModel? reportdataaddTabModelObj;

  @override
  List<Object?> get props => [
    dateRangeController,
    reportdataaddTabModelObj,
    reportDataAddRankingBonusModelObj,
  ];
  ReportDataAddRankingBonusState copyWith({
    TextEditingController? dateRangeController,
    ReportdataaddTabModel? reportdataaddTabModelObj,
    ReportDataAddRankingBonusModel? reportDataAddRankingBonusModelObj,
  }) {
    return ReportDataAddRankingBonusState(
      dateRangeController: dateRangeController ?? this.dateRangeController,
      reportdataaddTabModelObj:
          reportdataaddTabModelObj ?? this.reportdataaddTabModelObj,
      reportDataAddRankingBonusModelObj:
          reportDataAddRankingBonusModelObj ??
          this.reportDataAddRankingBonusModelObj,
    );
  }
}
