part of 'other_pages_enter_game_prompt_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtherPagesEnterGamePrompt widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class OtherPagesEnterGamePromptEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OtherPagesEnterGamePrompt widget is first created.
class OtherPagesEnterGamePromptInitialEvent
    extends OtherPagesEnterGamePromptEvent {
  @override
  List<Object?> get props => [];
}
