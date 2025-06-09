part of 'top_up_records_withdrawal_rejected_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TopUpRecordsWithdrawalRejected widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TopUpRecordsWithdrawalRejectedEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TopUpRecordsWithdrawalRejected widget is first created.
class TopUpRecordsWithdrawalRejectedInitialEvent
    extends TopUpRecordsWithdrawalRejectedEvent {
  @override
  List<Object?> get props => [];
}
