part of 'wallet_deposit_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalletDepositOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WalletDepositOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WalletDepositOne widget is first created.
class WalletDepositOneInitialEvent extends WalletDepositOneEvent {
  @override
  List<Object?> get props => [];
}
