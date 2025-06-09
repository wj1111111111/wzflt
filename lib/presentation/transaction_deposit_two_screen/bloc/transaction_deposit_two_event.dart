part of 'transaction_deposit_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionDepositTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TransactionDepositTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TransactionDepositTwo widget is first created.
class TransactionDepositTwoInitialEvent extends TransactionDepositTwoEvent {
  @override
  List<Object?> get props => [];
}
