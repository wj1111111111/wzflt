part of 'popup_claim_bloc.dart';

/// Represents the state of PopupClaim in the application.

// ignore_for_file: must_be_immutable
class PopupClaimState extends Equatable {
  PopupClaimState({this.popupClaimModelObj});

  PopupClaimModel? popupClaimModelObj;

  @override
  List<Object?> get props => [popupClaimModelObj];
  PopupClaimState copyWith({PopupClaimModel? popupClaimModelObj}) {
    return PopupClaimState(
      popupClaimModelObj: popupClaimModelObj ?? this.popupClaimModelObj,
    );
  }
}
