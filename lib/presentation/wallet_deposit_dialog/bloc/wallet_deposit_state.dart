part of 'wallet_deposit_bloc.dart';

/// Represents the state of WalletDeposit in the application.

// ignore_for_file: must_be_immutable
class WalletDepositState extends Equatable {
  WalletDepositState({this.walletDepositModelObj});

  WalletDepositModel? walletDepositModelObj;

  @override
  List<Object?> get props => [walletDepositModelObj];
  WalletDepositState copyWith({WalletDepositModel? walletDepositModelObj}) {
    return WalletDepositState(
      walletDepositModelObj:
          walletDepositModelObj ?? this.walletDepositModelObj,
    );
  }
}
