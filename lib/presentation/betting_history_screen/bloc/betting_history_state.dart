part of 'betting_history_bloc.dart';

/// Represents the state of BettingHistory in the application.

// ignore_for_file: must_be_immutable
class BettingHistoryState extends Equatable {
  BettingHistoryState({
    this.selectedDropDownValue,
    this.bettingHistoryModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  BettingHistoryModel? bettingHistoryModelObj;

  @override
  List<Object?> get props => [selectedDropDownValue, bettingHistoryModelObj];
  BettingHistoryState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    BettingHistoryModel? bettingHistoryModelObj,
  }) {
    return BettingHistoryState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      bettingHistoryModelObj:
          bettingHistoryModelObj ?? this.bettingHistoryModelObj,
    );
  }
}
