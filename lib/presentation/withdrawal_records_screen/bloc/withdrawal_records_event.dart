part of 'withdrawal_records_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WithdrawalRecords widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WithdrawalRecordsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WithdrawalRecords widget is first created.
class WithdrawalRecordsInitialEvent extends WithdrawalRecordsEvent {
  @override
  List<Object?> get props => [];
}
