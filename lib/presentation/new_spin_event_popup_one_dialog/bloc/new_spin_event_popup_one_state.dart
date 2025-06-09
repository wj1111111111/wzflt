part of 'new_spin_event_popup_one_bloc.dart';

/// Represents the state of NewSpinEventPopupOne in the application.

// ignore_for_file: must_be_immutable
class NewSpinEventPopupOneState extends Equatable {
  NewSpinEventPopupOneState({this.newSpinEventPopupOneModelObj});

  NewSpinEventPopupOneModel? newSpinEventPopupOneModelObj;

  @override
  List<Object?> get props => [newSpinEventPopupOneModelObj];
  NewSpinEventPopupOneState copyWith({
    NewSpinEventPopupOneModel? newSpinEventPopupOneModelObj,
  }) {
    return NewSpinEventPopupOneState(
      newSpinEventPopupOneModelObj:
          newSpinEventPopupOneModelObj ?? this.newSpinEventPopupOneModelObj,
    );
  }
}
