part of 'daily_cumulative_deposit_event_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DailyCumulativeDepositEvent widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class DailyCumulativeDepositEventEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DailyCumulativeDepositEvent widget is first created.
class DailyCumulativeDepositEventInitialEvent
    extends DailyCumulativeDepositEventEvent {
  @override
  List<Object?> get props => [];
}
