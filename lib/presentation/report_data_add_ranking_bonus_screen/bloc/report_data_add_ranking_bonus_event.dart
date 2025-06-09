part of 'report_data_add_ranking_bonus_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReportDataAddRankingBonus widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ReportDataAddRankingBonusEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ReportDataAddRankingBonus widget is first created.
class ReportDataAddRankingBonusInitialEvent
    extends ReportDataAddRankingBonusEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection

// ignore_for_file: must_be_immutable
class UpdateChipViewEvent extends ReportDataAddRankingBonusEvent {
  UpdateChipViewEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
