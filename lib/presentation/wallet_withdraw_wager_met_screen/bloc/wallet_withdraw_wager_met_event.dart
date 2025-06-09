part of 'wallet_withdraw_wager_met_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalletWithdrawWagerMet widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WalletWithdrawWagerMetEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WalletWithdrawWagerMet widget is first created.
class WalletWithdrawWagerMetInitialEvent extends WalletWithdrawWagerMetEvent {
  @override
  List<Object?> get props => [];
}
