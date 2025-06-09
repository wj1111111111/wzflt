part of 'ph23_daily_first_entry_popup_bloc.dart';

/// Represents the state of Ph23DailyFirstEntryPopup in the application.

// ignore_for_file: must_be_immutable
class Ph23DailyFirstEntryPopupState extends Equatable {
  Ph23DailyFirstEntryPopupState({this.ph23DailyFirstEntryPopupModelObj});

  Ph23DailyFirstEntryPopupModel? ph23DailyFirstEntryPopupModelObj;

  @override
  List<Object?> get props => [ph23DailyFirstEntryPopupModelObj];
  Ph23DailyFirstEntryPopupState copyWith({
    Ph23DailyFirstEntryPopupModel? ph23DailyFirstEntryPopupModelObj,
  }) {
    return Ph23DailyFirstEntryPopupState(
      ph23DailyFirstEntryPopupModelObj:
          ph23DailyFirstEntryPopupModelObj ??
          this.ph23DailyFirstEntryPopupModelObj,
    );
  }
}
