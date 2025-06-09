part of 'wallet_withdraw_wager_requirement_one_bloc.dart';

/// Represents the state of WalletWithdrawWagerRequirementOne in the application.

// ignore_for_file: must_be_immutable
class WalletWithdrawWagerRequirementOneState extends Equatable {
  WalletWithdrawWagerRequirementOneState({
    this.walletWithdrawWagerRequirementOneModelObj,
  });

  WalletWithdrawWagerRequirementOneModel?
  walletWithdrawWagerRequirementOneModelObj;

  @override
  List<Object?> get props => [walletWithdrawWagerRequirementOneModelObj];
  WalletWithdrawWagerRequirementOneState copyWith({
    WalletWithdrawWagerRequirementOneModel?
    walletWithdrawWagerRequirementOneModelObj,
  }) {
    return WalletWithdrawWagerRequirementOneState(
      walletWithdrawWagerRequirementOneModelObj:
          walletWithdrawWagerRequirementOneModelObj ??
          this.walletWithdrawWagerRequirementOneModelObj,
    );
  }
}
