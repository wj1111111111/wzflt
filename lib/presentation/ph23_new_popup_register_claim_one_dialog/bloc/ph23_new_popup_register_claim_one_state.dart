part of 'ph23_new_popup_register_claim_one_bloc.dart';

/// Represents the state of Ph23NewPopupRegisterClaimOne in the application.

// ignore_for_file: must_be_immutable
class Ph23NewPopupRegisterClaimOneState extends Equatable {
  Ph23NewPopupRegisterClaimOneState({
    this.ph23NewPopupRegisterClaimOneModelObj,
  });

  Ph23NewPopupRegisterClaimOneModel? ph23NewPopupRegisterClaimOneModelObj;

  @override
  List<Object?> get props => [ph23NewPopupRegisterClaimOneModelObj];
  Ph23NewPopupRegisterClaimOneState copyWith({
    Ph23NewPopupRegisterClaimOneModel? ph23NewPopupRegisterClaimOneModelObj,
  }) {
    return Ph23NewPopupRegisterClaimOneState(
      ph23NewPopupRegisterClaimOneModelObj:
          ph23NewPopupRegisterClaimOneModelObj ??
          this.ph23NewPopupRegisterClaimOneModelObj,
    );
  }
}
