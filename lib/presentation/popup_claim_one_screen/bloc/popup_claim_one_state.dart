part of 'popup_claim_one_bloc.dart';

/// Represents the state of PopupClaimOne in the application.

// ignore_for_file: must_be_immutable
class PopupClaimOneState extends Equatable {
  PopupClaimOneState({this.popupClaimOneModelObj});

  PopupClaimOneModel? popupClaimOneModelObj;

  @override
  List<Object?> get props => [popupClaimOneModelObj];
  PopupClaimOneState copyWith({PopupClaimOneModel? popupClaimOneModelObj}) {
    return PopupClaimOneState(
      popupClaimOneModelObj:
          popupClaimOneModelObj ?? this.popupClaimOneModelObj,
    );
  }
}
