part of 'popup_bloc.dart';

/// Represents the state of Popup in the application.

// ignore_for_file: must_be_immutable
class PopupState extends Equatable {
  PopupState({this.popupModelObj});

  PopupModel? popupModelObj;

  @override
  List<Object?> get props => [popupModelObj];
  PopupState copyWith({PopupModel? popupModelObj}) {
    return PopupState(popupModelObj: popupModelObj ?? this.popupModelObj);
  }
}
