part of 'wallet_withdraw_wager_met_bloc.dart';

/// Represents the state of WalletWithdrawWagerMet in the application.

// ignore_for_file: must_be_immutable
class WalletWithdrawWagerMetState extends Equatable {
  WalletWithdrawWagerMetState({this.walletWithdrawWagerMetModelObj});

  WalletWithdrawWagerMetModel? walletWithdrawWagerMetModelObj;

  @override
  List<Object?> get props => [walletWithdrawWagerMetModelObj];
  WalletWithdrawWagerMetState copyWith({
    WalletWithdrawWagerMetModel? walletWithdrawWagerMetModelObj,
  }) {
    return WalletWithdrawWagerMetState(
      walletWithdrawWagerMetModelObj:
          walletWithdrawWagerMetModelObj ?? this.walletWithdrawWagerMetModelObj,
    );
  }
}
