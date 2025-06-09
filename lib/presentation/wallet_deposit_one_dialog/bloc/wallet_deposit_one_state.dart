part of 'wallet_deposit_one_bloc.dart';

/// Represents the state of WalletDepositOne in the application.

// ignore_for_file: must_be_immutable
class WalletDepositOneState extends Equatable {
  WalletDepositOneState({this.walletDepositOneModelObj});

  WalletDepositOneModel? walletDepositOneModelObj;

  @override
  List<Object?> get props => [walletDepositOneModelObj];
  WalletDepositOneState copyWith({
    WalletDepositOneModel? walletDepositOneModelObj,
  }) {
    return WalletDepositOneState(
      walletDepositOneModelObj:
          walletDepositOneModelObj ?? this.walletDepositOneModelObj,
    );
  }
}
