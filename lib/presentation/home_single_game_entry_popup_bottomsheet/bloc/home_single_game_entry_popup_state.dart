part of 'home_single_game_entry_popup_bloc.dart';

/// Represents the state of HomeSingleGameEntryPopup in the application.

// ignore_for_file: must_be_immutable
class HomeSingleGameEntryPopupState extends Equatable {
  HomeSingleGameEntryPopupState({this.homeSingleGameEntryPopupModelObj});

  HomeSingleGameEntryPopupModel? homeSingleGameEntryPopupModelObj;

  @override
  List<Object?> get props => [homeSingleGameEntryPopupModelObj];
  HomeSingleGameEntryPopupState copyWith({
    HomeSingleGameEntryPopupModel? homeSingleGameEntryPopupModelObj,
  }) {
    return HomeSingleGameEntryPopupState(
      homeSingleGameEntryPopupModelObj:
          homeSingleGameEntryPopupModelObj ??
          this.homeSingleGameEntryPopupModelObj,
    );
  }
}
