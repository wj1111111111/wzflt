part of 'transaction_deposit_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionDeposit widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TransactionDepositEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TransactionDeposit widget is first created.
class TransactionDepositInitialEvent extends TransactionDepositEvent {
  @override
  List<Object?> get props => [];
}
