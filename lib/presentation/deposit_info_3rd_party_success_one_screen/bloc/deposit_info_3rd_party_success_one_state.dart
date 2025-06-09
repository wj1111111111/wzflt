part of 'deposit_info_3rd_party_success_one_bloc.dart';

/// Represents the state of DepositInfo3rdPartySuccessOne in the application.

// ignore_for_file: must_be_immutable
class DepositInfo3rdPartySuccessOneState extends Equatable {
  DepositInfo3rdPartySuccessOneState({
    this.depositInfo3rdPartySuccessOneModelObj,
  });

  DepositInfo3rdPartySuccessOneModel? depositInfo3rdPartySuccessOneModelObj;

  @override
  List<Object?> get props => [depositInfo3rdPartySuccessOneModelObj];
  DepositInfo3rdPartySuccessOneState copyWith({
    DepositInfo3rdPartySuccessOneModel? depositInfo3rdPartySuccessOneModelObj,
  }) {
    return DepositInfo3rdPartySuccessOneState(
      depositInfo3rdPartySuccessOneModelObj:
          depositInfo3rdPartySuccessOneModelObj ??
          this.depositInfo3rdPartySuccessOneModelObj,
    );
  }
}
