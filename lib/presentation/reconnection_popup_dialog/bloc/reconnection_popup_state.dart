part of 'reconnection_popup_bloc.dart';

/// Represents the state of ReconnectionPopup in the application.

// ignore_for_file: must_be_immutable
class ReconnectionPopupState extends Equatable {
  ReconnectionPopupState({this.reconnectionPopupModelObj});

  ReconnectionPopupModel? reconnectionPopupModelObj;

  @override
  List<Object?> get props => [reconnectionPopupModelObj];
  ReconnectionPopupState copyWith({
    ReconnectionPopupModel? reconnectionPopupModelObj,
  }) {
    return ReconnectionPopupState(
      reconnectionPopupModelObj:
          reconnectionPopupModelObj ?? this.reconnectionPopupModelObj,
    );
  }
}
