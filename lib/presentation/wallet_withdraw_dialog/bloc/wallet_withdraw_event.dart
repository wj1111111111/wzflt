part of 'wallet_withdraw_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalletWithdraw widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WalletWithdrawEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WalletWithdraw widget is first created.
class WalletWithdrawInitialEvent extends WalletWithdrawEvent {
  @override
  List<Object?> get props => [];
}
