part of 'other_pages_enter_game_prompt_bloc.dart';

/// Represents the state of OtherPagesEnterGamePrompt in the application.

// ignore_for_file: must_be_immutable
class OtherPagesEnterGamePromptState extends Equatable {
  OtherPagesEnterGamePromptState({this.otherPagesEnterGamePromptModelObj});

  OtherPagesEnterGamePromptModel? otherPagesEnterGamePromptModelObj;

  @override
  List<Object?> get props => [otherPagesEnterGamePromptModelObj];
  OtherPagesEnterGamePromptState copyWith({
    OtherPagesEnterGamePromptModel? otherPagesEnterGamePromptModelObj,
  }) {
    return OtherPagesEnterGamePromptState(
      otherPagesEnterGamePromptModelObj:
          otherPagesEnterGamePromptModelObj ??
          this.otherPagesEnterGamePromptModelObj,
    );
  }
}
