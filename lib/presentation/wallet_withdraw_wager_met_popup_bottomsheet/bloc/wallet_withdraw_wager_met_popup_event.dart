part of 'wallet_withdraw_wager_met_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalletWithdrawWagerMetPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WalletWithdrawWagerMetPopupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WalletWithdrawWagerMetPopup widget is first created.
class WalletWithdrawWagerMetPopupInitialEvent
    extends WalletWithdrawWagerMetPopupEvent {
  @override
  List<Object?> get props => [];
}
