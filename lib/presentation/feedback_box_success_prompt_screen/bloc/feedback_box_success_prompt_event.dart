part of 'feedback_box_success_prompt_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FeedbackBoxSuccessPrompt widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class FeedbackBoxSuccessPromptEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the FeedbackBoxSuccessPrompt widget is first created.
class FeedbackBoxSuccessPromptInitialEvent
    extends FeedbackBoxSuccessPromptEvent {
  @override
  List<Object?> get props => [];
}
