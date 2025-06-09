part of 'home_sms_popup_bloc.dart';

/// Represents the state of HomeSmsPopup in the application.

// ignore_for_file: must_be_immutable
class HomeSmsPopupState extends Equatable {
  HomeSmsPopupState({this.homeSmsPopupModelObj});

  HomeSmsPopupModel? homeSmsPopupModelObj;

  @override
  List<Object?> get props => [homeSmsPopupModelObj];
  HomeSmsPopupState copyWith({HomeSmsPopupModel? homeSmsPopupModelObj}) {
    return HomeSmsPopupState(
      homeSmsPopupModelObj: homeSmsPopupModelObj ?? this.homeSmsPopupModelObj,
    );
  }
}
