part of 'not_winner_popup_bloc.dart';

/// Represents the state of NotWinnerPopup in the application.

// ignore_for_file: must_be_immutable
class NotWinnerPopupState extends Equatable {
  NotWinnerPopupState({this.notWinnerPopupModelObj});

  NotWinnerPopupModel? notWinnerPopupModelObj;

  @override
  List<Object?> get props => [notWinnerPopupModelObj];
  NotWinnerPopupState copyWith({NotWinnerPopupModel? notWinnerPopupModelObj}) {
    return NotWinnerPopupState(
      notWinnerPopupModelObj:
          notWinnerPopupModelObj ?? this.notWinnerPopupModelObj,
    );
  }
}
