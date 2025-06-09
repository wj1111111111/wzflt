part of 'wallet_top_up_records_withdrawal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WalletTopUpRecordsWithdrawal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WalletTopUpRecordsWithdrawalEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WalletTopUpRecordsWithdrawal widget is first created.
class WalletTopUpRecordsWithdrawalInitialEvent
    extends WalletTopUpRecordsWithdrawalEvent {
  @override
  List<Object?> get props => [];
}
