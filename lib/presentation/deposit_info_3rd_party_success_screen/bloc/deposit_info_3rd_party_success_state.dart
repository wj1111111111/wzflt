part of 'deposit_info_3rd_party_success_bloc.dart';

/// Represents the state of DepositInfo3rdPartySuccess in the application.

// ignore_for_file: must_be_immutable
class DepositInfo3rdPartySuccessState extends Equatable {
  DepositInfo3rdPartySuccessState({this.depositInfo3rdPartySuccessModelObj});

  DepositInfo3rdPartySuccessModel? depositInfo3rdPartySuccessModelObj;

  @override
  List<Object?> get props => [depositInfo3rdPartySuccessModelObj];
  DepositInfo3rdPartySuccessState copyWith({
    DepositInfo3rdPartySuccessModel? depositInfo3rdPartySuccessModelObj,
  }) {
    return DepositInfo3rdPartySuccessState(
      depositInfo3rdPartySuccessModelObj:
          depositInfo3rdPartySuccessModelObj ??
          this.depositInfo3rdPartySuccessModelObj,
    );
  }
}
