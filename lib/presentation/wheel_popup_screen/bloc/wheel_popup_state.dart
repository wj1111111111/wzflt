part of 'wheel_popup_bloc.dart';

/// Represents the state of WheelPopup in the application.

// ignore_for_file: must_be_immutable
class WheelPopupState extends Equatable {
  WheelPopupState({this.wheelPopupModelObj});

  WheelPopupModel? wheelPopupModelObj;

  @override
  List<Object?> get props => [wheelPopupModelObj];
  WheelPopupState copyWith({WheelPopupModel? wheelPopupModelObj}) {
    return WheelPopupState(
      wheelPopupModelObj: wheelPopupModelObj ?? this.wheelPopupModelObj,
    );
  }
}
