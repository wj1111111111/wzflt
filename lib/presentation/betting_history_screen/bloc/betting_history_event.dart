part of 'betting_history_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BettingHistory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class BettingHistoryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BettingHistory widget is first created.
class BettingHistoryInitialEvent extends BettingHistoryEvent {
  @override
  List<Object?> get props => [];
}
