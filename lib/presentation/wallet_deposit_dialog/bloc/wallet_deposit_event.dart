part of 'wallet_deposit_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalletDeposit widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WalletDepositEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WalletDeposit widget is first created.
class WalletDepositInitialEvent extends WalletDepositEvent {
  @override
  List<Object?> get props => [];
}
