part of 'wallet_withdraw_wager_met_popup_bloc.dart';

/// Represents the state of WalletWithdrawWagerMetPopup in the application.

// ignore_for_file: must_be_immutable
class WalletWithdrawWagerMetPopupState extends Equatable {
  WalletWithdrawWagerMetPopupState({this.walletWithdrawWagerMetPopupModelObj});

  WalletWithdrawWagerMetPopupModel? walletWithdrawWagerMetPopupModelObj;

  @override
  List<Object?> get props => [walletWithdrawWagerMetPopupModelObj];
  WalletWithdrawWagerMetPopupState copyWith({
    WalletWithdrawWagerMetPopupModel? walletWithdrawWagerMetPopupModelObj,
  }) {
    return WalletWithdrawWagerMetPopupState(
      walletWithdrawWagerMetPopupModelObj:
          walletWithdrawWagerMetPopupModelObj ??
          this.walletWithdrawWagerMetPopupModelObj,
    );
  }
}
