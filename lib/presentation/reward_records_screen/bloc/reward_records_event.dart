part of 'reward_records_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RewardRecords widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class RewardRecordsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RewardRecords widget is first created.
class RewardRecordsInitialEvent extends RewardRecordsEvent {
  @override
  List<Object?> get props => [];
}
