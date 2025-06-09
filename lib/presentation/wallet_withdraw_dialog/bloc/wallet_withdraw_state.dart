part of 'wallet_withdraw_bloc.dart';

/// Represents the state of WalletWithdraw in the application.

// ignore_for_file: must_be_immutable
class WalletWithdrawState extends Equatable {
  WalletWithdrawState({this.walletWithdrawModelObj});

  WalletWithdrawModel? walletWithdrawModelObj;

  @override
  List<Object?> get props => [walletWithdrawModelObj];
  WalletWithdrawState copyWith({WalletWithdrawModel? walletWithdrawModelObj}) {
    return WalletWithdrawState(
      walletWithdrawModelObj:
          walletWithdrawModelObj ?? this.walletWithdrawModelObj,
    );
  }
}
