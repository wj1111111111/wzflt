part of 'ph23_new_popup_register_claim_bloc.dart';

/// Represents the state of Ph23NewPopupRegisterClaim in the application.

// ignore_for_file: must_be_immutable
class Ph23NewPopupRegisterClaimState extends Equatable {
  Ph23NewPopupRegisterClaimState({this.ph23NewPopupRegisterClaimModelObj});

  Ph23NewPopupRegisterClaimModel? ph23NewPopupRegisterClaimModelObj;

  @override
  List<Object?> get props => [ph23NewPopupRegisterClaimModelObj];
  Ph23NewPopupRegisterClaimState copyWith({
    Ph23NewPopupRegisterClaimModel? ph23NewPopupRegisterClaimModelObj,
  }) {
    return Ph23NewPopupRegisterClaimState(
      ph23NewPopupRegisterClaimModelObj:
          ph23NewPopupRegisterClaimModelObj ??
          this.ph23NewPopupRegisterClaimModelObj,
    );
  }
}
