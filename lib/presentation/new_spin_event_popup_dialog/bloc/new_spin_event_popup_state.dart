part of 'new_spin_event_popup_bloc.dart';

/// Represents the state of NewSpinEventPopup in the application.

// ignore_for_file: must_be_immutable
class NewSpinEventPopupState extends Equatable {
  NewSpinEventPopupState({this.newSpinEventPopupModelObj});

  NewSpinEventPopupModel? newSpinEventPopupModelObj;

  @override
  List<Object?> get props => [newSpinEventPopupModelObj];
  NewSpinEventPopupState copyWith({
    NewSpinEventPopupModel? newSpinEventPopupModelObj,
  }) {
    return NewSpinEventPopupState(
      newSpinEventPopupModelObj:
          newSpinEventPopupModelObj ?? this.newSpinEventPopupModelObj,
    );
  }
}
