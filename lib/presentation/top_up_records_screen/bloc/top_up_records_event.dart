part of 'top_up_records_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TopUpRecords widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class TopUpRecordsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TopUpRecords widget is first created.
class TopUpRecordsInitialEvent extends TopUpRecordsEvent {
  @override
  List<Object?> get props => [];
}
