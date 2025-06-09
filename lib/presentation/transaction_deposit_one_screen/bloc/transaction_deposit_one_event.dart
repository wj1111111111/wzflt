part of 'transaction_deposit_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionDepositOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TransactionDepositOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TransactionDepositOne widget is first created.
class TransactionDepositOneInitialEvent extends TransactionDepositOneEvent {
  @override
  List<Object?> get props => [];
}
