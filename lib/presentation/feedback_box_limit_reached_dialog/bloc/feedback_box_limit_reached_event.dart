part of 'feedback_box_limit_reached_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FeedbackBoxLimitReached widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class FeedbackBoxLimitReachedEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the FeedbackBoxLimitReached widget is first created.
class FeedbackBoxLimitReachedInitialEvent extends FeedbackBoxLimitReachedEvent {
  @override
  List<Object?> get props => [];
}
