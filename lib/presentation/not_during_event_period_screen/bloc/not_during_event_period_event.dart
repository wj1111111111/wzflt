part of 'not_during_event_period_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotDuringEventPeriod widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class NotDuringEventPeriodEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NotDuringEventPeriod widget is first created.
class NotDuringEventPeriodInitialEvent extends NotDuringEventPeriodEvent {
  @override
  List<Object?> get props => [];
}
