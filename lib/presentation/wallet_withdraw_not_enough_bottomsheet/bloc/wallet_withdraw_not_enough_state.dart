part of 'wallet_withdraw_not_enough_bloc.dart';

/// Represents the state of WalletWithdrawNotEnough in the application.

// ignore_for_file: must_be_immutable
class WalletWithdrawNotEnoughState extends Equatable {
  WalletWithdrawNotEnoughState({this.walletWithdrawNotEnoughModelObj});

  WalletWithdrawNotEnoughModel? walletWithdrawNotEnoughModelObj;

  @override
  List<Object?> get props => [walletWithdrawNotEnoughModelObj];
  WalletWithdrawNotEnoughState copyWith({
    WalletWithdrawNotEnoughModel? walletWithdrawNotEnoughModelObj,
  }) {
    return WalletWithdrawNotEnoughState(
      walletWithdrawNotEnoughModelObj:
          walletWithdrawNotEnoughModelObj ??
          this.walletWithdrawNotEnoughModelObj,
    );
  }
}
