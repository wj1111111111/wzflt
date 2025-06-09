part of 'wallet_withdraw_not_enough_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalletWithdrawNotEnough widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WalletWithdrawNotEnoughEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WalletWithdrawNotEnough widget is first created.
class WalletWithdrawNotEnoughInitialEvent extends WalletWithdrawNotEnoughEvent {
  @override
  List<Object?> get props => [];
}
